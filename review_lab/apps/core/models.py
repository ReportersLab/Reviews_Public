from django.db import models
#users
from django.contrib.auth.models import User
#tags
from taggit.managers import TaggableManager
#ratings
from djangoratings.fields import RatingField



class CommonInfo(models.Model):
    creation_time = models.DateTimeField(auto_now_add = True)
    update_time = models.DateTimeField(auto_now = True)
    
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


class Review(CommonInfo):
    title = models.CharField(max_length=521, unique=True, help_text="Review Title, must be unique")
    product = models.ForeignKey(to='Product')
    reviewer = models.ForeignKey(to=User)
    review = models.TextField()
    rating = models.IntegerField(choices=RATING_CHOICES)
    user_rating = RatingField(range=10, allow_anonymous=True, use_cookies=True)
    version_tested = models.CharField(max_length=128, blank=True)
    #should be checboxes, will have to set that up in admin...?
    os_used = models.CharField(max_length=256, choices=OS_CHOICES)
    tasks_performed = models.ManyToManyField('Task')
    slug = models.SlugField(max_length=512)
    tags = TaggableManager()
    
    
class Product(CommonInfo):
    name = models.CharField(max_length=512, unique=True, null=False, blank=False, verbose_name='Product Name', help_text='The product name must be unique')
    url = models.CharField(max_length=512, null=False, blank=True)
    description = models.TextField()
    cost = models.CharField(max_length=32, blank=False, default='Free', help_text='Cost is either Free or a dollar amount')
    programming_required_rating = models.IntegerField(choices=RATING_CHOICES)
    programming_required_description = models.TextField()
    slug = models.SlugField(max_length=512)
    tags = TaggableManager()
    
    
class Task(CommonInfo):
    pass


    