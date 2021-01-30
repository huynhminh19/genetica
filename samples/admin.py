from django.contrib import admin

from .models import Sample, SampleStatus, SampleStatusHistory

class SampleStatusAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
class SampleAdmin(admin.ModelAdmin):
    list_display = ('customer', 'status', 'retry')
    list_filter = ('status', )
class SampleStatusHistoryAdmin(admin.ModelAdmin):
    list_display = ('status', 'sample' , 'user', 'created_at')

admin.site.register(Sample, SampleAdmin)
admin.site.register(SampleStatus, SampleStatusAdmin)
admin.site.register(SampleStatusHistory, SampleStatusHistoryAdmin)
