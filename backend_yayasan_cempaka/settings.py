"""
Django settings for backend_yayasan_cempaka project.

Generated by 'django-admin startproject' using Django 2.2.

For more information on this file, see
https://docs.djangoproject.com/en/2.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.2/ref/settings/
"""

import os

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
from utils import __env

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
AUTH_USER_MODEL = 'login.Users'


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '%%a4%i0typ5ty^+td0j1y8c8$xuc-g1qlp4&c1e#=k)h=bfb9y'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

ALLOWED_HOSTS = [
    #'192.168.100.8', ## iqbal ip
    '127.0.0.1', #misalnya mau pake localhost tanpa certain ip
    #'demo-cempaka.herokuapp.com',
    'cempakafoundation.org',
    'www.cempakafoundation.org'
]


# Application definition
INSTALLED_APPS = [
    #admin
    'jet.dashboard',
    'jet',
    #our custom apps
    'landingpage.apps.LandingpageConfig',
    'login.apps.LoginConfig',
    'article.apps.ArticleConfig',
    'maps_manager',
    'program_activity.apps.ProgramActivityConfig', #apps program_activity
    # 'mapmanager.apps.MapmanagerConfig',
    'sponsor_dashboard.apps.SponsorDashboardConfig',
    # django module apps
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    # for extra module apps
    'ckeditor',
    'ckeditor_uploader',
]


MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware',
]

ROOT_URLCONF = 'backend_yayasan_cempaka.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [BASE_DIR],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'backend_yayasan_cempaka.wsgi.application'


# Database
# https://docs.djangoproject.com/en/2.2/ref/settings/#databases

#DATABASES = {
#    'default': {
#        'ENGINE': 'django.db.backends.sqlite3',
#        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
#    }
#}

## sementara pake cloud
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': __env('DB_NAME', 'd4hustlcrgo2l2'),
        'USER': __env('DB_USER', 'rbkmdiginvwwgi'),
        'PASSWORD': __env('DB_PASS', 'f6e5d1461068aec9e649f235322dd6add90db61af9ac05212aca57f5dd442027'),
        'HOST': __env('DB_HOST', 'ec2-34-193-113-223.compute-1.amazonaws.com'),
        'PORT': __env('DB_PORT', '5432'),
    }
}

# Password validation
# https://docs.djangoproject.com/en/2.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/2.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = False


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.2/howto/static-files/

## uncomment if want to run on local
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, "staticfiles")
]

STATIC_URL = '/static/'
print(os.path.join(BASE_DIR, 'static'))
STATIC_ROOT = os.path.join(BASE_DIR, 'static')

MEDIA_URL = '/media/'
MEDIA_ROOT = __env('MEDIA_PATH', os.path.join(BASE_DIR, 'media'))

## Ckeditor Config
CKEDITOR_UPLOAD_PATH='uploads/'

# import django_heroku
# django_heroku.settings(locals())