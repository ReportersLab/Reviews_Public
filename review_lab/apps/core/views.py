import datetime
from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from core.models import *
from django.views.generic.date_based import *
from django.utils import simplejson as json
from django.conf import settings
from django.db.models import Q
from itertools import chain
from operator import attrgetter
from django.views.defaults import page_not_found
from django.core.cache import cache

'''
View for the homepage
'''
def index_view(request):
    data = {
        'review_list'  : Review.published_objects.all(),
        'is_index' : True,
        'categories' : Category.objects.all(),
    }
    return get_response(template='index.django.html', data=data, request=request)
    
    
'''
View for individual review, takes a slug
'''
def review_view(request, slug):
    review = get_user_visible_object(Review, request, slug=slug)
    return get_response('review.django.html', data={'review':review, 'object':review,}, request=request)

'''
View for a PRODUCT, takes the slug
'''
def product_view(request, slug):
    product = get_user_visible_object(Product, request, slug=slug)
    tags = product.tags.all()
    return get_response('product.django.html', data={'product':product, 'tags':tags, 'object':product,}, request=request)
    
'''
View for a CHALLENGE, takes the slug
'''
'''
def challenge_view(request, slug):
    challenge = get_user_visible_object(Challenge, request, slug=slug)
    return get_response('challenge.django.html', data={'challenge':challenge}, request=request)
'''

'''
View for a TUTORIAL, takes the slug
'''
def tutorial_view(request, slug):
    tutorial = get_user_visible_object(Tutorial, request, slug=slug)
    return get_response('tutorial.django.html', data={'tutorial':tutorial, 'object':tutorial,}, request=request)
    
'''
View for a DOCUMENT, takes the slug
'''
def document_view(request, slug):
    document = get_user_visible_object(DocumentSet, request, slug=slug)
    return get_response('document.django.html', data={'document':document, 'object':document,}, request=request)
    
'''
View for a TASK, takes the slug
'''
def task_view(request, slug):
    task = get_user_visible_object(Task, request, slug=slug)
    return get_response('task.django.html', data={'task':task, 'object':task,}, request=request)
    
'''
View for a PRODUCT TASK REVIEW, takes the slug
'''
def product_task_view(request, slug):
    product_task = get_user_visible_object(ProductTask, request, slug=slug)
    return get_response('product_task.django.html', data={'product_task':product_task, 'object':product_task,}, request=request)
    

'''
View for a TAG, takes the slug
'''
def tag_view(request, slug):
    tag = get_object_or_404(CustomTag, slug=slug)
    items = tag.tagged_items.all()
    return get_response('tag.django.html', data={'tag':tag, 'items':items}, request=request)
    
       
    

MORE_CLASSES = {
    'reviews':Review,
    'products':Product,
    'tutorials':Tutorial,
    'documents':DocumentSet,
    #'challenges':Challenge
}


def more_view(request, model):
    model_class = MORE_CLASSES.get(model, Review)
    data = {
        'objects': model_class.published_objects.all(),
        'name': model
    }
    
    #return archive_index(request, model_class.published_objects.all(), 'creation_time', template_name='more.django.html')
    return get_response('more.django.html', data=data, request=request)
    


def search_view(request):
    #get the query text
    q = request.GET.get('q', '')
    model = request.GET.get('type', '')
    model = model.lower()
    date = request.GET.get('date', None)
    category = request.GET.get('category', None)
    cat_object = None
    type = request.GET.get('type', None)
    
    
    if q == '':
        q = request.POST.get('q', '')
        request.GET.q = q
    terms = q.split()
    
    #loop over the terms and build up a generic query of Q objects
    query = Q()
    if terms:
        for term in terms:
            query &= Q(name__icontains=term) | Q(description__icontains=term)
        
    
    #If there's a date, lets add that range as well.
    if date and (date != 'all'):
        now = datetime.date.today()
        difference = datetime.timedelta(weeks=-1)
        if date == "fortnight":
            difference = datetime.timedelta(weeks=-2)
        if date == "month":
            difference = datetime.timedelta(days=-31)
        if date == "season":
            difference = datetime.timedelta(weeks=-13)
        if date == "year":
            difference = datetime.timedelta(days=-365)
        
        now_diff = now + difference
        query &= Q(update_time__range = (now_diff, now))
        
    
    if category and (category != 'all') and (model == 'products'):
        query &= Q(categories__slug = category)
        cat_object = Category.objects.get(slug = category)
        
    model_list = list()
    
    #lets see if a specific model is requested.
    
    if model != '' and model != 'all':
        model_class = MORE_CLASSES.get(model, Review)
        model_list.append(model_class.published_objects.filter(query))
    #otherwise use everything
    else:
        #Create QuerySets for the models we want to search on
        model_list.append(Review.published_objects.filter(query))
        model_list.append(Product.published_objects.filter(query))
        model_list.append(Tutorial.published_objects.filter(query))
        model_list.append(DocumentSet.published_objects.filter(query))
        #model_list.append(Challenge.published_objects.filter(query))
    
    
    #combine them all into a nice iterable
    if model == 'products':
        results = sorted(
            chain.from_iterable(model_list),
            key = attrgetter('latest_rating'),
            reverse = False,
        )
        
    results = sorted(
        chain.from_iterable(model_list),
        key=attrgetter('update_time'),
        reverse = True
    )
    
    data = {
        'results':results,
        'facets':gen_facets(request),
        'date': date,
        'type': type,
        'category': category,
        'cat_object': cat_object,
        'q': q,
    }
    
    #And return the results
    return get_response('search.django.html', data=data, request=request)
    
    
'''
Basically what I want to accomplish here is to populate a right-rail or something similar that requires
data that should be available across all views (or at least most of them). Perhaps this is something better
split off into a template tag?
'''
def get_response(template = 'index.html', data = dict(), request = dict(), mime = 'text/html'):
    generic_data = {
        'latest_reviews'    : Review.published_objects.all()[:5],
        'latest_documents'  : DocumentSet.published_objects.all()[:5],
        'latest_products'   : Product.published_objects.all()[:5],
        'latest_tutorials'  : Tutorial.published_objects.all()[:5],
    }
    
    data.update(generic_data)
    content = None
    try:
        obj = data['object']
        key = "{0}-{1}-{2}".format(obj.slug, obj.update_time.isoformat(), obj.verbose_name)
        content = cache.get(key)
        if content is None:
            content = render_to_response(template, data, context_instance = RequestContext(request), mimetype = mime)
            cache.set(key, content, 60 * 30)
    except:
        content = render_to_response(template, data, context_instance = RequestContext(request), mimetype = mime)
        
    return content
        
        
    
    #return render_to_response(template, data, context_instance = RequestContext(request), mimetype = mime)
    

'''
If the user is logged in, we want to let them see content if they know the direct URL. This means returning unpublished items.
To accomplish this, check if the user is logged in and use all_items queryset instead of standary queryset.
'''
def get_user_visible_object(model, request, **kwargs):
    qs = model.published_objects
    if request.user.is_authenticated() and request.user.is_staff:
        qs = model.objects
    return get_object_or_404(qs, **kwargs)




'''
Generates the data structures for the search facets so there isn't template chaos
'''

def gen_facets(request):
    
    date_facet = [
        {'label':'Past Week', 'value':'week'},
        {'label':'Past 2 Weeks', 'value':'fortnight'},
        {'label':'Past Month', 'value':'month'},
        {'label':'Past Season', 'value':'season'},
        {'label':'Past Year', 'value':'year'},
    ]
    
    type_facet = [
        {'label':'Reviews', 'value':'reviews'},
        {'label':'Products', 'value':'products'},
        {'label':'Tutorials', 'value':'tutorials'},
        {'label':'Document Sets', 'value':'documents'},
        #{'label':'Challenges', 'value':'challenges'},
    ]
    
    category_facet = Category.objects.all()
    
    return({'dates':date_facet, 'types':type_facet, 'categories': category_facet,})
    
   
   
'''
Django-Taggit-Autosuggest hardcodes the model used in auto-suggesting to "Tag". Since we have a custom model,
this is broken. This is a copy-paste job of the view from there, substituting the correct model.
'''

MAX_SUGGESTIONS = getattr(settings, 'TAGGIT_AUTOSUGGEST_MAX_SUGGESTIONS', 20)


def list_tags(request):
    """
Returns a list of JSON objects with a `name` and a `value` property that
all start like your query string `q` (not case sensitive).
"""
    query = request.GET.get('q', '')
    limit = request.GET.get('limit', MAX_SUGGESTIONS)
    try:
        request.GET.get('limit', MAX_SUGGESTIONS)
        limit = min(int(limit), MAX_SUGGESTIONS) # max or less
    except ValueError:
        limit = MAX_SUGGESTIONS

    tag_name_qs = CustomTag.objects.filter(name__istartswith=query).\
        values_list('name', flat=True)
    data = [{'name': n, 'value': n} for n in tag_name_qs[:limit]]

    return HttpResponse(json.dumps(data), mimetype='application/json')




