import logging
import os

import django

# Base paths
DJANGO_ROOT = os.path.dirname(os.path.realpath(django.__file__))
SITE_ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.realpath(__file__))))

# Debugging
DEBUG = True
TEMPLATE_DEBUG = DEBUG

SECRET_KEY = '[[ YOUR SECRET KEY ]]'

ADMINS = (
    # ('Your Name', 'your_email@domain.com'),
)

MANAGERS = ADMINS

# Database
# Note: DATABASE_USER and DATABASE_PASSWORD are defined in the staging and
# production settings.py files. For local use, either define them in
# local_settings.py or ignore to use your local user.

DATABASES = {
    'default': {
        'NAME': 'review_lab',
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'PORT': '5432',
        'HOST': 'localhost'
    }
}


# Local time
TIME_ZONE = 'America/Chicago'

# Local language
LANGUAGE_CODE = 'en-us'

# Site framework
SITE_ID = 1

# Internationalization
USE_I18N = False

# Absolute path to the directory that holds media.
MEDIA_ROOT = os.path.join(SITE_ROOT, 'assets')
STATIC_ROOT = os.path.join(SITE_ROOT, 'assets/static')
# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash if there is a path component (optional in other cases).
# Examples: "http://media.lawrence.com", "http://example.com/media/"
MEDIA_URL = 'http://media.reporterslab.org/review_lab/site_media/'
STATIC_URL = '/static/'

# URL prefix for admin media -- CSS, JavaScript and images. Make sure to use a
# trailing slash.
# Examples: "http://foo.com/media/", "/media/".
#ADMIN_MEDIA_PREFIX = '/media/'
ADMIN_MEDIA_PREFIX = STATIC_URL + "grappelli/"



# List of callables that know how to import templates from various sources.
TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.load_template_source',
    'django.template.loaders.app_directories.load_template_source',
    'django.template.loaders.eggs.load_template_source',
)

TEMPLATE_CONTEXT_PROCESSORS = (
    'django.contrib.auth.context_processors.auth',
    'django.core.context_processors.debug',
    'django.core.context_processors.i18n',
    'django.core.context_processors.media',
    'django.core.context_processors.static',
    'django.contrib.messages.context_processors.messages',
    'django.core.context_processors.request',
)

MIDDLEWARE_CLASSES = (
    'django.contrib.flatpages.middleware.FlatpageFallbackMiddleware',
    'django.middleware.gzip.GZipMiddleware',
#    'django.middleware.cache.UpdateCacheMiddleware',
    'django.middleware.common.CommonMiddleware',
    'debug_toolbar.middleware.DebugToolbarMiddleware',
#    'django.middleware.cache.FetchFromCacheMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'linaro_django_pagination.middleware.PaginationMiddleware',
)

ROOT_URLCONF = 'review_lab.configs.common.urls'

TEMPLATE_DIRS = (
    os.path.join(SITE_ROOT, 'templates')
)

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.sessions',
    'django.contrib.contenttypes',
    'django.contrib.sites',
    'django.contrib.staticfiles',
    'django.contrib.flatpages',
    'grappelli',
    'django.contrib.admin',
    'django.contrib.admindocs',
    'django.contrib.humanize',
    #'django.contrib.gis',
    'django.contrib.sitemaps',
    'south',
    'taggit',
    'taggit_autosuggest',
    'djangoratings',
    'review_lab.apps.core',
    #'dilla',
    'linaro_django_pagination',
    #'fts',
)

# Predefined domain
MY_SITE_DOMAIN = 'localhost:8000'

# Email
# run "python -m smtpd -n -c DebuggingServer localhost:1025" to see outgoing
# messages dumped to the terminal
EMAIL_HOST = 'localhost'
EMAIL_PORT = 1025
DEFAULT_FROM_EMAIL = 'do.not.reply@reporterslab.org'

# Caching
CACHE_MIDDLEWARE_KEY_PREFIX='review_lab'
CACHE_MIDDLEWARE_SECONDS = 2 * 60 # 2 minutes
CACHE_BACKEND="dummy:///"


#Grappelli
GRAPPELLI_ADMIN_TITLE = "Review Lab"

#taggit autocomplete
#TAGGIT_AUTOCOMPLETE_JS_BASE_URL = '%sjs/jquery-autocomplete' % MEDIA_URL
#TAGGIT_AUTOSUGGEST_STATIC_BASE_URL = '%sjs/jquery-autosuggest' % MEDIA_URL

AWS_S3_URL = '[[Your S3 URL]]'
from S3 import CallingFormat
DEFAULT_FILE_STORAGE = 'storages.backends.s3.S3Storage'
AWS_ACCESS_KEY_ID = '[[Your amazon access key]]'
AWS_SECRET_ACCESS_KEY = '[[Your amazon secret access key]]'
AWS_STORAGE_BUCKET_NAME = '[[ your s3 bucket ]]'
AWS_STORAGE_ACL = 'public-read'

#searching
#FTS_BACKEND = 'pgsql://' # or 'dummy://' or 'simple://'

#Dilla
#DICTIONARY = "/usr/share/dict/words"
#DILLA_USE_LOREM_IPSUM = False # set to True ignores dictionary
#DILLA_APPS = ['core']
#DILLA_EXCLUDE_MODELS = ['myapp.Comments',]


# Logging
logging.basicConfig(
    level=logging.DEBUG,
)

# Allow for local (per-user) override
try:
    from local_settings import *
except ImportError:
    pass



try:
    from settings_private import * 
except ImportError:
    pass









