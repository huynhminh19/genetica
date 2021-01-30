# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.contrib.auth.models import User


class Sample(models.Model):
    id = models.AutoField(primary_key=True)
    customer = models.CharField(max_length=255)
    status = models.ForeignKey('SampleStatus', models.DO_NOTHING, blank=True, null=True)
    retry = models.IntegerField(default=0)

    class Meta:
        db_table = 'samples'
    def __str__(self):
       return self.customer


class SampleStatus(models.Model):
    id = models.CharField(primary_key=True, max_length=5)
    name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        db_table = 'samples_status'
        verbose_name_plural = "Sample status"
    def __str__(self):
       return self.id + ' | ' + self.name

class SampleStatusHistory(models.Model):
    id = models.AutoField(primary_key=True)
    status = models.ForeignKey('SampleStatus', models.DO_NOTHING, blank=True, null=True)
    sample = models.ForeignKey('Sample', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(User, models.DO_NOTHING)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = 'samples_status_history'
        verbose_name_plural = "Sample status history"
