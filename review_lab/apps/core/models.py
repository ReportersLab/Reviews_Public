from django.db import models
from django.template.defaultfilters import slugify
#users
from django.contrib.auth.models import User
#tags
#from taggit_autocomplete.managers import TaggableManager
from taggit_autosuggest.managers import TaggableManager
from taggit.models import GenericTaggedItemBase, TagBase
#ratings
from djangoratings.fields import RatingField
from datetime import datetime
#import fts



class PublishedManager(models.Manager):
    def get_query_set(self):
        return super(PublishedManager, self).get_query_set().filter(published = True)


class CommonInfo(models.Model):
    name            = models.CharField(max_length=512, unique=True, null=False, blank=False, help_text='The name must be unique', verbose_name = 'Name or Title')
    description     = models.TextField(blank=True)
    published       = models.BooleanField()
    tags            = TaggableManager(blank = True, through='CustomTagItem')
    creation_time   = models.DateTimeField() # generated in save
    update_time     = models.DateTimeField() # generated in save
    slug            = models.SlugField(max_length=512, unique=True, blank=True)
    
    
    # make sure we only get published items...
    # maybe we need just a "published_objects" field? Not override default?
    objects = PublishedManager()
    all_objects = models.Manager()
    
    def save(self):
        if not self.id:
            self.creation_time = datetime.now()
            self.slug = slugify("{0} {1}".format(self.name, self.creation_time.date().isoformat()))
        self.update_time = datetime.now()
        super(CommonInfo, self).save()
        
    
    @property
    def verbose_name(self):
        return self._meta.verbose_name
    
    class Meta:
        abstract = True
        ordering = ['-creation_time'] #this doesn't seem to work.



OS_CHOICES = (
    ('Windows', 'Windows'),
    ('Mac', 'Mac'),
    ('Linux', 'Linux'),
)

RATING_CHOICES = (
    (0,0),
    (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5),
)

DOCUMENT_KIND_CHOICES = (
    ('audio','audio'),
    ('video','video'),
    ('image','image'),
    ('text','text'),
    ('database','database'),
)


class Review(CommonInfo):
    product              = models.ForeignKey(to='Product')
    reviewer             = models.ForeignKey(to=User)
    editor               = models.ForeignKey(to=User, null=True, blank=True, related_name='review_editor_user')
    kicker               = models.CharField(max_length = 128, blank = True)
    subtitle             = models.CharField(max_length = 512, blank = True)
    teaser               = models.TextField(blank = True)
    user_rating          = RatingField(range=10, allow_anonymous = True, use_cookies = True)
    version_tested       = models.CharField(max_length=128, blank = True)
    os_used              = models.ManyToManyField('OperatingSystem', blank = True, null = True)
    review_done          = models.DateField(null = True, blank=True)
    image                = models.ImageField( help_text='Review Screenshot? TODO: Standardize Size', max_length=256,
                                            upload_to='review_lab/contrib/img/reviews', null=True, blank=True)
    
    community            = models.IntegerField(choices=RATING_CHOICES, default = 0)
    community_text       = models.CharField(max_length = 256, blank = True)
    documentation        = models.IntegerField(choices=RATING_CHOICES, default = 0)
    documentation_text   = models.CharField(max_length = 256, blank = True)
    performance          = models.IntegerField(choices=RATING_CHOICES, default = 0)
    performance_text     = models.CharField(max_length = 256, blank = True)
    usability            = models.IntegerField(choices=RATING_CHOICES, default = 0, help_text = "General Difficulty level, learning curve.")
    usability_text       = models.CharField(max_length = 256, blank = True)
    rating               = models.IntegerField(choices=RATING_CHOICES, default = 0)
    rating_text          = models.CharField(max_length = 256, blank = True)
        
    def __unicode__(self):
        return u'%s (Review of: %s)' % (self.name, self.product)
    
    @models.permalink
    def get_absolute_url(self):
        return ('review_view', (), {'slug': self.slug})
        
    class Meta:
        ordering = ['-creation_time']
    
    
    
class Product(CommonInfo):
    url                                   = models.URLField(blank=True)
    image                                 = models.ImageField( help_text='Product logo or screenshot. TODO: Standardize Size', max_length=256,
                                                              upload_to='review_lab/contrib/img/products', null=True, blank=True)
    cost                                  = models.IntegerField(blank=False, default=0,help_text='Cost is a dollar amount. "0" for free')
    categories                            = models.ManyToManyField('Category', blank=True, null=True)
    programming_required_rating           = models.IntegerField(choices=RATING_CHOICES, default = 0)
    programming_required_description      = models.TextField(blank = True)
    tasks_performed                       = models.ManyToManyField(to='Task', through='ProductTask', blank=True, null=True)
    open_source                           = models.BooleanField()
    demo_available                        = models.BooleanField()
    company                               = models.CharField(max_length = 128, blank = True)
    release_date                          = models.CharField(max_length = 64,  blank = True)  #Change to Text
    obsolete                              = models.BooleanField()
    
    def __unicode__(self):
        return u'%s (%s)' % (self.name, self.url)
        
    @models.permalink
    def get_absolute_url(self):
        return ('product_view', (), {'slug': self.slug})
        
    
    def latest_review(self):
        result = None
        if(self.review_set.count() > 0):
            result = self.review_set.order_by('-creation_time')[0]
        return result

    class Meta:
        ordering             = ['-creation_time']
        verbose_name         = 'Product'
        verbose_name_plural = 'Products'



class Tutorial(CommonInfo):
    product              = models.ForeignKey(to='Product')
    url                  = models.URLField(blank=True, help_text='URL to source of this tutorial if applicable.')
    tasks                = models.ManyToManyField('Task', blank=True, null=True, help_text='What tasks this tutorial will help with')
    writer               = models.ForeignKey(to=User, null=True, blank=True)
    writer_external      = models.CharField(max_length = 256, blank=True, help_text='Writer name, email if not part of Review Lab')
    editor               = models.ForeignKey(to=User, null=True, blank=True, related_name='tutorial_editor_user')
    kicker               = models.CharField(max_length = 128, blank = True)
    subtitle             = models.CharField(max_length = 512, blank = True)
    teaser               = models.TextField(blank = True)
    image                = models.ImageField( help_text='Product logo or screenshot. TODO: Standardize Size', max_length=256,
                                              upload_to='review_lab/contrib/img/tutorials', null=True, blank=True)
    version              = models.CharField(max_length=128, blank = True)
    os_used              = models.ManyToManyField('OperatingSystem', blank = True, null = True)
    embed                = models.TextField(help_text='This is probably a YouTube Embed or something similar.', blank=True)
    repo_link            = models.URLField(verbose_name='Repository Link', blank=True)
    files                = models.FileField(verbose_name='Tutorial Zip File', upload_to='review_lab/contrib/zip/tutorial_files', blank=True, null=True)
    
    
    @models.permalink
    def get_absolute_url(self):
        return ('tutorial_view', (), {'slug': self.slug})
    

    class Meta:
        ordering = ['-creation_time']


class Challenge(CommonInfo):
    tasks                     = models.ManyToManyField(to='Task', blank=True, null=True)
    documents                 = models.ManyToManyField(to='DocumentSet', blank=True, null=True)
    teaser                    = models.TextField(blank=True)
    kicker                    = models.CharField(max_length = 128, blank = True)
    subtitle                  = models.CharField(max_length = 512, blank = True)
    image                     = models.ImageField(help_text='Challenge logo. TODO: Standardize Size', max_length=256,
                                            upload_to='review_lab/contrib/img/challenges', null=True, blank=True)
    files                     = models.FileField(verbose_name='Challenge Files', upload_to='review_lab/contrib/zip/challenges', blank=True, null=True,
                                           help_text='Any kind of related files for the challenge should go here if not part of the Document Set')
    contact                   = models.ForeignKey(to=User, null=True, blank=True)
    other_contact             = models.CharField(max_length=256, blank=True, help_text='other contact information if not user in system')
    award                     = models.CharField(max_length=256, blank=True)
    
    @models.permalink
    def get_absolute_url(self):
        return ('challenge_view', (), {'slug': self.slug})
        
    class Meta:
        ordering = ['-creation_time']

    
class Task(CommonInfo):
    document = models.ForeignKey('DocumentSet', null=True)
    
    @property
    def document_name(self):
        return self.document.name
    
    @property
    def latest_reviews(self):
        result = None
        if(self.producttask_set.count() > 0):
            result = self.producttask_set.order_by('-creation_time')[:5]
        return result
    
    @property
    def challenges(self):
        result = None
        if(self.challenge_set.count() > 0):
            result = self.challenge_set.order_by('-creation_time')
        return result
    
    
    def __unicode__(self):
        return u'Task: %s, For Document: %s' % (self.name, self.document)
        
    @models.permalink
    def get_absolute_url(self):
        return ('task_view', (), {'slug': self.slug})    

    class Meta:
        ordering = ['-creation_time']


class ProductTask(CommonInfo):
    product          = models.ForeignKey('Product')
    task             = models.ForeignKey('Task')
    teaser           = models.TextField(blank = True)
    rating           = models.IntegerField(choices=RATING_CHOICES, default = 0)
    rating_text      = models.CharField(max_length = 256, blank = True)
    reviewer         = models.ForeignKey(to=User, null=True, blank=True)
    editor           = models.ForeignKey(to=User, null=True, blank=True, related_name='product_task_editor_user')
    kicker           = models.CharField(max_length = 128, blank = True)
    subtitle         = models.CharField(max_length = 512, blank = True)
    version_tested   = models.CharField(max_length=128, blank = True)
    os_used          = models.ManyToManyField('OperatingSystem', blank = True, null = True)
    review_done      = models.DateField(null = True, blank=True)
    image            = models.ImageField( help_text='Review Screenshot? TODO: Standardize Size', max_length=256,
                                            upload_to='review_lab/contrib/img/product_tasks', null=True, blank=True)
    
    
    
    def __unicode__(self):
        return u'Task Review of %s for Task %s' % (self.product, self.task)
    
    @property
    def product_name(self):
        return self.product.name
    
    @property
    def task_name(self):
        return self.task.name
    
    @models.permalink
    def get_absolute_url(self):
        return ('product_task_view', (), {'slug': self.slug})
    
    class Meta:
        verbose_name = 'Product Task Review'
        verbose_name_plural = 'Product Task Reviews'
        ordering = ['-creation_time']


class DocumentSet(CommonInfo):
    url       = models.URLField(blank=True)
    kind      = models.CharField(max_length=64, choices=DOCUMENT_KIND_CHOICES)
    image     = models.ImageField( help_text='Sample Document Image or logo of some sort. TODO: Standardize Size', max_length=256,
                                   upload_to='review_lab/contrib/img/docs', null=True, blank=True)
    
    
    @property
    def challenges(self):
        result = None
        if(self.challenge_set.count() > 0):
            result = self.challenge_set.order_by('-creation_time')
        return result
    
    
    
    def __unicode__(self):
        return u'%s' % (self.name,)
        
    @models.permalink
    def get_absolute_url(self):
        return ('document_view', (), {'slug': self.slug})
        
    
    class Meta:
        verbose_name = 'Document Set'
        verbose_name_plural = 'Document Sets'
        ordering = ['-creation_time']












class Category(CommonInfo):
    
    def __unicode__(self):
        return u'%s' % (self.name,)
        
    class Meta:
        verbose_name_plural = 'Categories'
    
    

class OperatingSystem(CommonInfo):
    url = models.URLField(blank=True)
    
    def __unicode__(self):
        return u'%s' % (self.name,)
        
    class Meta:
        verbose_name = 'Operating System'
        verbose_name_plural = 'Operating Systems'








'''
Custom tag models. Basically I want these all to be lower-cased so there isn't difficulty in entering

I also want to add a get_absolute_url method so templates can be created.

'''

class CustomTag(TagBase):
    
    def save(self, *args, **kwargs):
        self.name = self.name.lower()
        super(CustomTag, self).save(*args, **kwargs)
        
    
    @models.permalink
    def get_absolute_url(self, slug):
        return ('tag_view', (), {'slug': self.slug})
    
    
    def clean_name(self):
        out = self.name
        try:
            out = self.name.split(':')[1]
        except IndexError:
            pass
        
        return out
    
    def style_name(self):
        out = ''
        try:
            out = self.name.split(':')[0]
        except IndexError:
            pass
        return out
        
    class Meta:
        verbose_name = "Kitchen Tag"
        verbose_name_plural = "Kitchen Tags"


class CustomTagItem(GenericTaggedItemBase):
    tag = models.ForeignKey(CustomTag, related_name="tagged_items")
    
    


"""
Custom cache clearing. Basically I want to clear the view cache on a save of a model.

From here: http://stackoverflow.com/questions/2268417/expire-a-view-cache-in-django
"""

def expire_view_cache(view_name, args = []):
    
    from django.core.urlresolvers import reverse
    from django.http import HttpRequest
    from django.utils.cache import get_cache_key
    from django.core.cache import cache
    
    
    request = HttpRequest()
    
    request.path = reverse(view_name, args=args)
    key = get_cache_key(request)
    
    if key:
        if cache.get(key):
            cache.delete(key)
        return True
    return False
    

from django.db.models.signals import post_save

def invalidate_review(sender, **kwargs):
    expire_view_cache('review_view', [kwargs['instance'].slug])

def invalidate_product(sender, **kwargs):
    expire_view_cache('product_view', [kwargs['instance'].slug])

def invalidate_tutorial(sender, **kwargs):
    expire_view_cache('tutorial_view', [kwargs['instance'].slug])

def invalidate_challenge(sender, **kwargs):
    expire_view_cache('challenge_view', [kwargs['instance'].slug])

def invalidate_task(sender, **kwargs):
    expire_view_cache('task_view', [kwargs['instance'].slug])

def invalidate_product_task(sender, **kwargs):
    expire_view_cache('product_task_view', [kwargs['instance'].slug])

def invalidate_document(sender, **kwargs):
    expire_view_cache('document_view', [kwargs['instance'].slug])
    
#def invalidate_review(sender, **kwargs):
#    expire_view_cache('tag_view', [kwargs['instance'].slug])


  

post_save.connect(invalidate_review, sender=Review)
post_save.connect(invalidate_product, sender=Product)
post_save.connect(invalidate_tutorial, sender=Tutorial)
post_save.connect(invalidate_challenge, sender=Challenge)
post_save.connect(invalidate_task, sender=Task)
post_save.connect(invalidate_product_task, sender=ProductTask)
post_save.connect(invalidate_document, sender=DocumentSet)

