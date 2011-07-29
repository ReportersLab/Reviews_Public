# encoding: utf-8
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Adding model 'DocumentSet'
        db.create_table('core_documentset', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(unique=True, max_length=512)),
            ('description', self.gf('django.db.models.fields.TextField')(blank=True)),
            ('published', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('creation_time', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
            ('update_time', self.gf('django.db.models.fields.DateTimeField')(auto_now=True, blank=True)),
            ('slug', self.gf('django.db.models.fields.SlugField')(unique=True, max_length=512, db_index=True)),
            ('url', self.gf('django.db.models.fields.URLField')(max_length=200, blank=True)),
            ('kind', self.gf('django.db.models.fields.CharField')(max_length=64)),
        ))
        db.send_create_signal('core', ['DocumentSet'])

        # Adding model 'ProductTask'
        db.create_table('core_producttask', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(unique=True, max_length=512)),
            ('description', self.gf('django.db.models.fields.TextField')(blank=True)),
            ('published', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('creation_time', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
            ('update_time', self.gf('django.db.models.fields.DateTimeField')(auto_now=True, blank=True)),
            ('slug', self.gf('django.db.models.fields.SlugField')(unique=True, max_length=512, db_index=True)),
            ('product', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['core.Product'])),
            ('task', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['core.Task'])),
            ('rating', self.gf('django.db.models.fields.IntegerField')()),
        ))
        db.send_create_signal('core', ['ProductTask'])

        # Changing field 'Product.cost'
        #db.alter_column('core_product', 'cost', self.gf('django.db.models.fields.IntegerField')())

        # Adding field 'Task.document'
        db.add_column('core_task', 'document', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['core.DocumentSet'], null=True), keep_default=False)

        # Deleting field 'Review.title'
        db.delete_column('core_review', 'title')

        # Deleting field 'Review.review'
        db.delete_column('core_review', 'review')

        # Adding field 'Review.name'
        db.add_column('core_review', 'name', self.gf('django.db.models.fields.CharField')(default=0, unique=True, max_length=512), keep_default=False)

        # Adding field 'Review.description'
        db.add_column('core_review', 'description', self.gf('django.db.models.fields.TextField')(default='', blank=True), keep_default=False)

        # Adding field 'Review.teaser'
        db.add_column('core_review', 'teaser', self.gf('django.db.models.fields.TextField')(default=0), keep_default=False)

        # Removing M2M table for field tasks_performed on 'Review'
        db.delete_table('core_review_tasks_performed')

        # Adding unique constraint on 'Review', fields ['slug']
        db.create_unique('core_review', ['slug'])

        # Adding field 'OperatingSystem.description'
        db.add_column('core_operatingsystem', 'description', self.gf('django.db.models.fields.TextField')(default='', blank=True), keep_default=False)

        # Adding field 'OperatingSystem.slug'
        db.add_column('core_operatingsystem', 'slug', self.gf('django.db.models.fields.SlugField')(default=0, unique=True, max_length=512, db_index=True), keep_default=False)


    def backwards(self, orm):
        
        # Removing unique constraint on 'Review', fields ['slug']
        db.delete_unique('core_review', ['slug'])

        # Deleting model 'DocumentSet'
        db.delete_table('core_documentset')

        # Deleting model 'ProductTask'
        db.delete_table('core_producttask')

        # Changing field 'Product.cost'
        #db.alter_column('core_product', 'cost', self.gf('django.db.models.fields.CharField')(max_length=32))

        # Deleting field 'Task.document'
        db.delete_column('core_task', 'document_id')

        # Adding field 'Review.title'
        db.add_column('core_review', 'title', self.gf('django.db.models.fields.CharField')(default=1, max_length=521, unique=True), keep_default=False)

        # Adding field 'Review.review'
        db.add_column('core_review', 'review', self.gf('django.db.models.fields.TextField')(default=1), keep_default=False)

        # Deleting field 'Review.name'
        db.delete_column('core_review', 'name')

        # Deleting field 'Review.description'
        db.delete_column('core_review', 'description')

        # Deleting field 'Review.teaser'
        db.delete_column('core_review', 'teaser')

        # Adding M2M table for field tasks_performed on 'Review'
        db.create_table('core_review_tasks_performed', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('review', models.ForeignKey(orm['core.review'], null=False)),
            ('task', models.ForeignKey(orm['core.task'], null=False))
        ))
        db.create_unique('core_review_tasks_performed', ['review_id', 'task_id'])

        # Deleting field 'OperatingSystem.description'
        db.delete_column('core_operatingsystem', 'description')

        # Deleting field 'OperatingSystem.slug'
        db.delete_column('core_operatingsystem', 'slug')


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
            'creation_time': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '512', 'db_index': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'})
        },
        'core.documentset': {
            'Meta': {'object_name': 'DocumentSet'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'kind': ('django.db.models.fields.CharField', [], {'max_length': '64'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '512', 'db_index': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'})
        },
        'core.operatingsystem': {
            'Meta': {'object_name': 'OperatingSystem'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '512', 'db_index': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'})
        },
        'core.product': {
            'Meta': {'object_name': 'Product'},
            'categories': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.Category']", 'null': 'True', 'blank': 'True'}),
            'cost': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'creation_time': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'programming_required_description': ('django.db.models.fields.TextField', [], {}),
            'programming_required_rating': ('django.db.models.fields.IntegerField', [], {}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '512', 'db_index': 'True'}),
            'tasks_performed': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.Task']", 'null': 'True', 'through': "orm['core.ProductTask']", 'blank': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'})
        },
        'core.producttask': {
            'Meta': {'object_name': 'ProductTask'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'product': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['core.Product']"}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'rating': ('django.db.models.fields.IntegerField', [], {}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '512', 'db_index': 'True'}),
            'task': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['core.Task']"}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'})
        },
        'core.review': {
            'Meta': {'object_name': 'Review'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'os_used': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['core.OperatingSystem']", 'null': 'True', 'blank': 'True'}),
            'product': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['core.Product']"}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'rating': ('django.db.models.fields.IntegerField', [], {}),
            'reviewer': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['auth.User']"}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '512', 'db_index': 'True'}),
            'teaser': ('django.db.models.fields.TextField', [], {}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
            'user_rating_score': ('django.db.models.fields.IntegerField', [], {'default': '0', 'blank': 'True'}),
            'user_rating_votes': ('django.db.models.fields.PositiveIntegerField', [], {'default': '0', 'blank': 'True'}),
            'version_tested': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'})
        },
        'core.task': {
            'Meta': {'object_name': 'Task'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'document': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['core.DocumentSet']", 'null': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'published': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '512', 'db_index': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'})
        },
        'taggit.tag': {
            'Meta': {'object_name': 'Tag'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '100', 'db_index': 'True'})
        },
        'taggit.taggeditem': {
            'Meta': {'object_name': 'TaggedItem'},
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'taggit_taggeditem_tagged_items'", 'to': "orm['contenttypes.ContentType']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'object_id': ('django.db.models.fields.IntegerField', [], {'db_index': 'True'}),
            'tag': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'taggit_taggeditem_items'", 'to': "orm['taggit.Tag']"})
        }
    }

    complete_apps = ['core']
