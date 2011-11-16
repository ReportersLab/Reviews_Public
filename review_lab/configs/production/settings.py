from review_lab.configs.common.settings import *

DEBUG = False
TEMPLATE_DEBUG = DEBUG


DATABASES = {
    'default': {
        'NAME': 'review_lab',
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'PORT': '5432',
        'HOST': 'localhost',
        'USER': '[[ YOUR USER ]]',
        'PASSWORD': '[[ YOUR PASSWORD ]]'
    }
}


# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash if there is a path component (optional in other cases).
# Examples: "http://media.lawrence.com", "http://example.com/media/"
#MEDIA_URL = 'http://media.reporterslab.org/review_lab/'
MEDIA_URL = 'https://s3.amazonaws.com/media.reporterslab.org/review_lab/site_media/'
STATIC_URL = 'https://s3.amazonaws.com/media.reporterslab.org/review_lab/site_media/static/'
ADMIN_MEDIA_PREFIX = STATIC_URL + "grappelli/"

# Predefined domain
MY_SITE_DOMAIN = 'reviews.reporterslab.org'

# Email
EMAIL_HOST = 'mail.reporterslab.org'
EMAIL_PORT = 25

# Caching
CACHE_BACKEND = 'memcached://127.0.0.1:11211/'



# logging
import logging.config
LOG_FILENAME = os.path.join(os.path.dirname(__file__), 'logging.conf')
logging.config.fileConfig(LOG_FILENAME)

