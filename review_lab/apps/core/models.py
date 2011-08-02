from django.db import models
from django.template.defaultfilters import slugify
#users
from django.contrib.auth.models import User
#tags
#from taggit_autocomplete.managers import TaggableManager
from taggit_autosuggest.managers import TaggableManager
#ratings
from djangoratings.fields import RatingField



class CommonInfo(models.Model):
    name            = models.CharField(max_length=512, unique=True, null=False, blank=False, help_text='The name must be unique', verbose_name = 'Name or Title')
    description     = models.TextField(blank=True)
    published       = models.BooleanField()
    tags            = TaggableManager(blank = True)
    creation_time   = models.DateTimeField(auto_now_add = True)
    update_time     = models.DateTimeField(auto_now = True)
    slug            = models.SlugField(max_length=512, unique=True, blank=True)
    
    def save(self):
        if not self.id:
            self.slug = slugify(self.name)
        super(CommonInfo, self).save()
        
        
    class Meta:
        abstract = True



OS_CHOICES = (
    ('Windows', 'Windows'),
    ('Mac', 'Mac'),
    ('Linux', 'Linux'),
)

RATING_CHOICES = (
    (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5),
    (6,6),
    (7,7),
    (8,8),
    (9,9),
    (10,10),
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
    rating               = models.IntegerField(choices=RATING_CHOICES)
    kicker               = models.CharField(max_length = 128, blank = True)
    subtitle             = models.CharField(max_length = 512, blank = True)
    teaser               = models.TextField(blank = True)
    user_rating          = RatingField(range=10, allow_anonymous = True, use_cookies = True)
    version_tested       = models.CharField(max_length=128, blank = True)
    os_used              = models.ManyToManyField('OperatingSystem', blank = True, null = True)
        
    def __unicode__(self):
        return u'%s (Review of: %s)' % (self.title, self.product)
    
    
    
class Product(CommonInfo):
    url                                   = models.URLField(blank=True)
    cost                                  = models.IntegerField(blank=False, default=0,help_text='Cost is a dollar amount. "0" for free')
    categories                            = models.ManyToManyField('Category', blank=True, null=True)
    programming_required_rating           = models.IntegerField(choices=RATING_CHOICES)
    programming_required_description      = models.TextField(blank = True)
    tasks_performed                       = models.ManyToManyField(to='Task', through='ProductTask', blank=True, null=True)
    open_source                           = models.BooleanField()
    demo_available                        = models.BooleanField()
    company                               = models.CharField(max_length = 128, blank = True)

    
    def __unicode__(self):
        return u'%s (%s)' % (self.name, self.url)


    
class Task(CommonInfo):
    document = models.ForeignKey('DocumentSet', null=True)
    
    
    def __unicode__(self):
        return u'%s' % (self.name,)



class ProductTask(CommonInfo):
    product     = models.ForeignKey('Product')
    task        = models.ForeignKey('Task')
    rating      = models.IntegerField(choices=RATING_CHOICES)



class DocumentSet(CommonInfo):
    url       = models.URLField(blank=True)
    kind      = models.CharField(max_length=64, choices=DOCUMENT_KIND_CHOICES)
    
    



class Category(CommonInfo):
    
    def __unicode__(self):
        return u'%s' % (self.name,)
    
    

class OperatingSystem(CommonInfo):
    url = models.URLField(blank=True)
    
    def __unicode__(self):
        return u'%s' % (self.name,)




    