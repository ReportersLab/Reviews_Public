from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from core.models import *
from django.views.generic.date_based import *
from django.utils import simplejson as json
from django.conf import settings
from django.db.models import Q
from itertools import chain
from operator import attrgetter

'''
View for the homepage
'''
def index_view(request):
    data = {
        'review_list'  : Review.objects.all(),
        'is_index' : True,
    }
    return get_response(template='index.django.html', data=data, request=request)
    
    
'''
View for individual review, takes a slug
'''
def review_view(request, slug):
    review = get_object_or_404(Review, slug=slug)
    return get_response('review.django.html', data={'review':review}, request=request)

'''
View for a PRODUCT, takes the slug
'''
def product_view(request, slug):
    product = get_object_or_404(Product, slug=slug)
    tags = product.tags.all()
    return get_response('product.django.html', data={'product':product, 'tags':tags}, request=request)
    
'''
View for a CHALLENGE, takes the slug
'''
def challenge_view(request, slug):
    challenge = get_object_or_404(Challenge, slug=slug)
    return get_response('challenge.django.html', data={'challenge':challenge}, request=request)
    
'''
View for a TUTORIAL, takes the slug
'''
def tutorial_view(request, slug):
    tutorial = get_object_or_404(Tutorial, slug=slug)
    return get_response('tutorial.django.html', data={'tutorial':tutorial}, request=request)
    
'''
View for a DOCUMENT, takes the slug
'''
def document_view(request, slug):
    document = get_object_or_404(DocumentSet, slug=slug)
    return get_response('document.django.html', data={'document':document}, request=request)
    
'''
View for a TASK, takes the slug
'''
def task_view(request, slug):
    task = get_object_or_404(Task, slug=slug)
    return get_response('task.django.html', data={'task':task}, request=request)
    
'''
View for a PRODUCT TASK REVIEW, takes the slug
'''
def product_task_view(request, slug):
    product_task = get_object_or_404(ProductTask, slug=slug)
    return get_response('product_task.django.html', data={'product_task':product_task}, request=request)
    

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
    'challenges':Challenge
}


def more_view(request, model):
    print "THIS IS THE MODEL: " + model
    model_class = MORE_CLASSES.get(model, Review)
    data = {
        'objects': model_class.objects.all(),
        'name': model
    }
    
    #return archive_index(request, model_class.objects.all(), 'creation_time', template_name='more.django.html')
    return get_response('more.django.html', data=data, request=request)
    


def search_view(request):
    #get the query text
    q = request.GET.get('q', '')
    if q == '':
        q = request.POST.get('q', '')
        request.GET.q = q
    terms = q.split()
    
    #loop over the terms and build up a generic query of Q objects
    query = Q()
    if terms:
        for term in terms:
            query &= Q(name__icontains=term) | Q(description__icontains=term)
        
    #Create QuerySets for the models we want to search on
    reviews = Review.objects.filter(query)
    products = Product.objects.filter(query)
    tutorials = Tutorial.objects.filter(query)
    documents = DocumentSet.objects.filter(query)
    challenges = Challenge.objects.filter(query)
    
    #combine them all into a nice iterable
    results = sorted(
        chain(reviews, products, tutorials, documents, challenges),
        key=attrgetter('update_time'),
        reverse = True
    )
    
    #And return the results
    return get_response('search.django.html', data={'results':results}, request=request)
    
    
'''
Basically what I want to accomplish here is to populate a right-rail or something similar that requires
data that should be available across all views (or at least most of them). Perhaps this is something better
split off into a template tag?
'''
def get_response(template = 'index.html', data = dict(), request = dict(), mime = 'text/html'):
    generic_data = {
        'latest_reviews'    : Review.objects.all()[:5],
        'latest_documents'  : DocumentSet.objects.all()[:5],
        'latest_products'   : Product.objects.all()[:5],
        'latest_challenges' : Challenge.objects.all()[:5],
        'latest_tutorials'  : Tutorial.objects.all()[:5],
    }
    
    data.update(generic_data) # I think this is right.
    return render_to_response(template, data, context_instance = RequestContext(request), mimetype = mime)
    
   
   
   
   
   
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




