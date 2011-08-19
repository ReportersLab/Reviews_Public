from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from core.models import *


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
    return get_response('product.django.html', data={'product':product}, request=request)
    
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
    
    
