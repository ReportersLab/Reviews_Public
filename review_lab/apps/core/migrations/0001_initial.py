# encoding: utf-8
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Adding model 'Review'
        db.create_table('core_review', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('creation_time', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
            ('update_time', self.gf('django.db.models.fields.DateTimeField')(auto_now=True, blank=True)),
            ('title', self.gf('django.db.models.fields.CharField')(unique=True, max_length=521)),
            ('review', self.gf('django.db.models.fields.TextField')()),
            ('version_tested', self.gf('django.db.models.fields.CharField')(max_length=128, blank=True)),
            ('os_used', self.gf('django.db.models.fields.CharField')(max_length=256)),
            ('slug', self.gf('django.db.models.fields.SlugField')(max_length=512, db_index=True)),
            ('rating_votes', self.gf('django.db.models.fields.PositiveIntegerField')(default=0, blank=True)),
            ('rating_score', self.gf('django.db.models.fields.IntegerField')(default=0, blank=True)),
            ('user_rating_votes', self.gf('django.db.models.fields.PositiveIntegerField')(default=0, blank=True)),
            ('user_rating_score', self.gf('django.db.models.fields.IntegerField')(default=0, blank=True)),
        ))
        db.send_create_signal('core', ['Review'])

        # Adding M2M table for field tasks_performed on 'Review'
        db.create_table('core_review_tasks_performed', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('review', models.ForeignKey(orm['core.review'], null=False)),
            ('task', models.ForeignKey(orm['core.task'], null=False))
        ))
        db.create_unique('core_review_tasks_performed', ['review_id', 'task_id'])

        # Adding model 'Product'
        db.create_table('core_product', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('creation_time', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
            ('update_time', self.gf('django.db.models.fields.DateTimeField')(auto_now=True, blank=True)),
            ('name', self.gf('django.db.models.fields.CharField')(unique=True, max_length=512)),
            ('url', self.gf('django.db.models.fields.CharField')(max_length=512, blank=True)),
            ('description', self.gf('django.db.models.fields.TextField')()),
            ('cost', self.gf('django.db.models.fields.CharField')(default='Free', max_length=32)),
            ('programming_required_description', self.gf('django.db.models.fields.TextField')()),
            ('slug', self.gf('django.db.models.fields.SlugField')(max_length=512, db_index=True)),
            ('programming_required_rating_votes', self.gf('django.db.models.fields.PositiveIntegerField')(default=0, blank=True)),
            ('programming_required_rating_score', self.gf('django.db.models.fields.IntegerField')(default=0, blank=True)),
        ))
        db.send_create_signal('core', ['Product'])

        # Adding model 'Task'
        db.create_table('core_task', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('creation_time', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
            ('update_time', self.gf('django.db.models.fields.DateTimeField')(auto_now=True, blank=True)),
        ))
        db.send_create_signal('core', ['Task'])


    def backwards(self, orm):
        
        # Deleting model 'Review'
        db.delete_table('core_review')

        # Removing M2M table for field tasks_performed on 'Review'
        db.delete_table('core_review_tasks_performed')

        # Deleting model 'Product'
        db.delete_table('core_product')

        # Deleting model 'Task'
        db.delete_table('core_task')


    models = {
        'contenttypes.contenttype': {
            'Meta': {'ordering': "('name',)", 'unique_together': "(('app_label', 'model'),)", 'object_name': 'ContentType', 'db_table': "'django_content_type'"},
            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        'core.product': {
            'Meta': {'object_name': 'Product'},
            'cost': ('django.db.models.fields.CharField', [], {'default': "'Free'", 'max_length': '32'}),
            'creation_time': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '512'}),
            'programming_required_description': ('django.db.models.fields.TextField', [], {}),
            'programming_required_rating_score': ('django.db.models.fields.IntegerField', [], {'default': '0', 'blank': 'True'}),
            'programming_required_rating_votes': ('django.db.models.fields.PositiveIntegerField', [], {'default': '0', 'blank': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '512', 'db_index': 'True'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
            'url': ('django.db.models.fields.CharField', [], {'max_length': '512', 'blank': 'True'})
        },
        'core.review': {
            'Meta': {'object_name': 'Review'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'os_used': ('django.db.models.fields.CharField', [], {'max_length': '256'}),
            'rating_score': ('django.db.models.fields.IntegerField', [], {'default': '0', 'blank': 'True'}),
            'rating_votes': ('django.db.models.fields.PositiveIntegerField', [], {'default': '0', 'blank': 'True'}),
            'review': ('django.db.models.fields.TextField', [], {}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '512', 'db_index': 'True'}),
            'tasks_performed': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['core.Task']", 'symmetrical': 'False'}),
            'title': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '521'}),
            'update_time': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
            'user_rating_score': ('django.db.models.fields.IntegerField', [], {'default': '0', 'blank': 'True'}),
            'user_rating_votes': ('django.db.models.fields.PositiveIntegerField', [], {'default': '0', 'blank': 'True'}),
            'version_tested': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'})
        },
        'core.task': {
            'Meta': {'object_name': 'Task'},
            'creation_time': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
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
