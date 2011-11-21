# encoding: utf-8
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Changing field 'Product.release_date'
        db.alter_column('core_product', 'release_date', self.gf('django.db.models.fields.CharField')(max_length=64, null=True))


    def backwards(self, orm):
        
        # Changing field 'Product.release_date'
        db.alter_column('core_product', 'release_date', self.gf('django.db.models.fields.CharField')(default='', max_length=64))


    models = {
        'auth.group': {
            'Meta': {'object_name': 'Group'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'})
        },
        'auth.permission': {
            'Meta': {'ordering': "('content_type__app_label', 'content_type__model', 'codename')", 'unique_together': "(('content_type', 'codename'),)", 'object_name': 'Permission'},
            'codename': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['contenttypes.ContentType']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        'auth.user': {
            'Meta': {'object_name': 'User'},
            'date_joined': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'groups': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Group']", 'symmetrical': 'False', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'is_staff': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_superuser': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'last_login': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'password': ('django.db.models.fields.CharField', [], {'max_length': '128'}),
            'user_permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'}),
            'username': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'})
        },
        'contenttypes.contenttype': {
            'Meta': {'ordering': "('name',)", 'unique_together': "(('app_label', 'model'),)", 'object_name': 'ContentType', 'db_table': "'django_content_type'"},
            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        'core.category': {
            'Meta': {'object_name': 'Category'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'slug': ('django.db.models.fields.SlugField', [], {'db_index': 'True', 'unique': 'True', 'max_length': '512', 'blank': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {})
        },
        'core.challenge': {
            'Meta': {'ordering': "['-creation_time']", 'object_name': 'Challenge'},
            'award': ('django.db.models.fields.CharField', [], {'max_length': '256', 'blank': 'True'}),
            'contact': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['auth.User']", 'null': 'True', 'blank': 'True'}),
            'creation_time': ('django.db.models.fields.DateTimeField', [], {}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'documents': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.DocumentSet']", 'null': 'True', 'blank': 'True'}),
            'files': ('django.db.models.fields.files.FileField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'image': ('django.db.models.fields.files.ImageField', [], {'max_length': '256', 'null': 'True', 'blank': 'True'}),
            'kicker': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'other_contact': ('django.db.models.fields.CharField', [], {'max_length': '256', 'blank': 'True'}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'slug': ('django.db.models.fields.SlugField', [], {'db_index': 'True', 'unique': 'True', 'max_length': '512', 'blank': 'True'}),
            'subtitle': ('django.db.models.fields.CharField', [], {'max_length': '512', 'blank': 'True'}),
            'tasks': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.Task']", 'null': 'True', 'blank': 'True'}),
            'teaser': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {})
        },
        'core.customtag': {
            'Meta': {'object_name': 'CustomTag'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '100', 'db_index': 'True'})
        },
        'core.customtagitem': {
            'Meta': {'object_name': 'CustomTagItem'},
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'core_customtagitem_tagged_items'", 'to': "orm['contenttypes.ContentType']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'object_id': ('django.db.models.fields.IntegerField', [], {'db_index': 'True'}),
            'tag': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'tagged_items'", 'to': "orm['core.CustomTag']"})
        },
        'core.documentset': {
            'Meta': {'ordering': "['-creation_time']", 'object_name': 'DocumentSet'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'image': ('django.db.models.fields.files.ImageField', [], {'max_length': '256', 'null': 'True', 'blank': 'True'}),
            'kind': ('django.db.models.fields.CharField', [], {'max_length': '64'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'slug': ('django.db.models.fields.SlugField', [], {'db_index': 'True', 'unique': 'True', 'max_length': '512', 'blank': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'})
        },
        'core.operatingsystem': {
            'Meta': {'object_name': 'OperatingSystem'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'slug': ('django.db.models.fields.SlugField', [], {'db_index': 'True', 'unique': 'True', 'max_length': '512', 'blank': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'})
        },
        'core.product': {
            'Meta': {'ordering': "['-creation_time']", 'object_name': 'Product'},
            'categories': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.Category']", 'null': 'True', 'blank': 'True'}),
            'company': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'}),
            'cost': ('django.db.models.fields.CharField', [], {'default': "'Free'", 'max_length': '64', 'blank': 'True'}),
            'creation_time': ('django.db.models.fields.DateTimeField', [], {}),
            'demo_available': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'image': ('django.db.models.fields.files.ImageField', [], {'max_length': '256', 'null': 'True', 'blank': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'obsolete': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'open_source': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'operating_systems': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.OperatingSystem']", 'null': 'True', 'blank': 'True'}),
            'programming_required_description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'programming_required_rating': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'release_date': ('django.db.models.fields.CharField', [], {'max_length': '64', 'null': 'True', 'blank': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'db_index': 'True', 'unique': 'True', 'max_length': '512', 'blank': 'True'}),
            'tasks_performed': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.Task']", 'null': 'True', 'through': "orm['core.ProductTask']", 'blank': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'})
        },
        'core.producttask': {
            'Meta': {'ordering': "['-creation_time']", 'object_name': 'ProductTask'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'editor': ('django.db.models.fields.related.ForeignKey', [], {'blank': 'True', 'related_name': "'product_task_editor_user'", 'null': 'True', 'to': "orm['auth.User']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'image': ('django.db.models.fields.files.ImageField', [], {'max_length': '256', 'null': 'True', 'blank': 'True'}),
            'kicker': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'os_used': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.OperatingSystem']", 'null': 'True', 'blank': 'True'}),
            'product': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['core.Product']"}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'rating': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'rating_text': ('django.db.models.fields.CharField', [], {'max_length': '256', 'blank': 'True'}),
            'review_done': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'reviewer': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['auth.User']", 'null': 'True', 'blank': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'db_index': 'True', 'unique': 'True', 'max_length': '512', 'blank': 'True'}),
            'subtitle': ('django.db.models.fields.CharField', [], {'max_length': '512', 'blank': 'True'}),
            'task': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['core.Task']"}),
            'teaser': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {}),
            'version_tested': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'})
        },
        'core.review': {
            'Meta': {'ordering': "['-creation_time']", 'object_name': 'Review'},
            'community': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'community_text': ('django.db.models.fields.CharField', [], {'max_length': '256', 'blank': 'True'}),
            'creation_time': ('django.db.models.fields.DateTimeField', [], {}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'documentation': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'documentation_text': ('django.db.models.fields.CharField', [], {'max_length': '256', 'blank': 'True'}),
            'editor': ('django.db.models.fields.related.ForeignKey', [], {'blank': 'True', 'related_name': "'review_editor_user'", 'null': 'True', 'to': "orm['auth.User']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'image': ('django.db.models.fields.files.ImageField', [], {'max_length': '256', 'null': 'True', 'blank': 'True'}),
            'kicker': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'os_used': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.OperatingSystem']", 'null': 'True', 'blank': 'True'}),
            'performance': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'performance_text': ('django.db.models.fields.CharField', [], {'max_length': '256', 'blank': 'True'}),
            'product': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['core.Product']"}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'rating': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'rating_text': ('django.db.models.fields.CharField', [], {'max_length': '256', 'blank': 'True'}),
            'review_done': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'reviewer': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['auth.User']"}),
            'slug': ('django.db.models.fields.SlugField', [], {'db_index': 'True', 'unique': 'True', 'max_length': '512', 'blank': 'True'}),
            'subtitle': ('django.db.models.fields.CharField', [], {'max_length': '512', 'blank': 'True'}),
            'teaser': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {}),
            'usability': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'usability_text': ('django.db.models.fields.CharField', [], {'max_length': '256', 'blank': 'True'}),
            'user_rating_score': ('django.db.models.fields.IntegerField', [], {'default': '0', 'blank': 'True'}),
            'user_rating_votes': ('django.db.models.fields.PositiveIntegerField', [], {'default': '0', 'blank': 'True'}),
            'version_tested': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'})
        },
        'core.task': {
            'Meta': {'ordering': "['-creation_time']", 'object_name': 'Task'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'difficulty': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'difficulty_text': ('django.db.models.fields.CharField', [], {'max_length': '256', 'blank': 'True'}),
            'document': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['core.DocumentSet']", 'null': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'slug': ('django.db.models.fields.SlugField', [], {'db_index': 'True', 'unique': 'True', 'max_length': '512', 'blank': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {})
        },
        'core.tutorial': {
            'Meta': {'ordering': "['-creation_time']", 'object_name': 'Tutorial'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'editor': ('django.db.models.fields.related.ForeignKey', [], {'blank': 'True', 'related_name': "'tutorial_editor_user'", 'null': 'True', 'to': "orm['auth.User']"}),
            'embed': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'files': ('django.db.models.fields.files.FileField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'image': ('django.db.models.fields.files.ImageField', [], {'max_length': '256', 'null': 'True', 'blank': 'True'}),
            'kicker': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'os_used': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.OperatingSystem']", 'null': 'True', 'blank': 'True'}),
            'product': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['core.Product']"}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'repo_link': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'db_index': 'True', 'unique': 'True', 'max_length': '512', 'blank': 'True'}),
            'subtitle': ('django.db.models.fields.CharField', [], {'max_length': '512', 'blank': 'True'}),
            'tasks': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.Task']", 'null': 'True', 'blank': 'True'}),
            'teaser': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'}),
            'version': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'}),
            'writer': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['auth.User']", 'null': 'True', 'blank': 'True'}),
            'writer_external': ('django.db.models.fields.CharField', [], {'max_length': '256', 'blank': 'True'})
        }
    }

    complete_apps = ['core']
