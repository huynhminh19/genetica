from django.urls import path

from . import views
app_name = 'samples'
urlpatterns = [
    path('', views.index, name='index'),
    path('sample/<int:sample_id>/', views.detail, name='detail'),
    path('sample/<int:sample_id>/update_status/', views.update_status, name='update_status'),
]
