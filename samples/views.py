from django.shortcuts import get_object_or_404, render
from django.core.paginator import Paginator
from django.urls import reverse
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth.decorators import login_required
from .models import Sample, SampleStatus, SampleStatusHistory
from django.views import generic

@login_required(login_url='/admin/login/')
def index(request):
    sample_list = Sample.objects.filter(status__id__in=user_permissions(request.user.username))
    paginator = Paginator(sample_list, 25)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    return render(request, 'index.html', {'page_obj': page_obj})

@login_required(login_url='/admin/login/')
def detail(request, sample_id):
    sample = get_object_or_404(Sample, pk=sample_id)
    return render(request, 'samples/detail.html', {'sample': sample, 'list_permission':user_permissions(request.user.username)})

@login_required(login_url='/admin/login/')
def update_status(request, sample_id):
    sample = get_object_or_404(Sample, pk=sample_id)
    sample_history = SampleStatusHistory.objects.create(sample=sample, user=request.user)
    if 'success' in request.POST:
        sample.status = SampleStatus.objects.get(id=next_step(sample.status.id))
        sample.retry = 0
    else:
        if sample.retry < 1:
            sample.retry += 1
        else:
            sample.status = SampleStatus.objects.get(id='GeRe')
            sample.retry = 0
    sample.save()
    sample_history.status = sample.status
    sample_history.save()
    return HttpResponseRedirect(reverse('samples:detail', args=(sample.id,)))

def next_step(i):
    switcher={
                'start':'1GeRe',
                '1GeRe':'2GeSe',
                '2GeSe':'3HNRe',
                '3HNRe':'4HNSe',
                '4HNSe':'5GeEn',
                '5GeEn':'6GeDe',
                '6GeDe':'7Deli',
                '7Deli':'8MyAc',
                '8MyAc':'9MyDe',
                '9MyDe':'aMySe',
                'aMySe':'end',
             }
    return switcher.get(i,"Invalid status")

def user_permissions(i):
    switcher={
                'genetica': ['1GeRe', '2GeSe', '5GeEn', '6GeDe'],
                'hanoi': ['3HNRe', '4HNSe'],
                'vanchuyen': ['7Deli'],
                'my': ['8MyAc', '9MyDe', 'aMySe'],
             }
    return switcher.get(i,"Invalid Group")
