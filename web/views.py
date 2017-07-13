from django.shortcuts import render, HttpResponse, redirect
import json
from django.views.decorators.csrf import csrf_exempt
# Create your views here.
from web import core
from web import models


@csrf_exempt
def asset_with_no_asset_id(request):
    if request.method == 'POST':
        ass_handler = core.Asset(request)
        res = ass_handler.get_asset_id_by_sn()

        # return render(request,'assets/acquire_asset_id_test.html',{'response':res})
        return HttpResponse(json.dumps(res))


@csrf_exempt
def report(request):
    if request.method == 'POST':
        ass_handler = core.Asset(request)
        if ass_handler.data_is_valid():
            ass_handler.data_inject()

        return HttpResponse(json.dumps(ass_handler.response))


def index(request):
    return render(request, 'index.html')


def tables(request):
    if request.method == 'GET':
        asset_obj = models.Asset.objects.all()

    return render(request, 'tables.html', {'asset_obj': asset_obj})


def detail(request, aid):
    server_obj = models.Server.objects.filter(asset=aid)
    ram_obj = models.RAM.objects.filter(asset=aid)
    return render(request, 'detail.html', {
        'server_obj': server_obj,
        'ram_obj': ram_obj
    })


def column(request):
    if request.method == 'POST':
        data = Echarts(request)
    return HttpResponse(json.dumps(data.get_data()))


class Echarts(object):
    def __init__(self, request):
        self.request = request

    def get_data(self):
        func = self.request.POST.get('func')
        if hasattr(self, func):
            exec_func = getattr(self, func)
            return exec_func()

    def getMyAssetsClass(self):
        data_dic = {}
        data_dic['key'] = []
        for dev in models.Asset.asset_type_choices:
            num = models.Asset.objects.filter(asset_type=dev[0]).count()
            data_dic[dev[1]] = num
            data_dic['key'].append(dev[1])
        return data_dic

    def getMyAssetsStaut(self):
        data_dic = {}
        data_dic['key'] = []
        a = list(models.Asset.status_choices)
        a.sort(reverse=True)
        for statu in a:
            num = models.Asset.objects.filter(status=statu[0]).count()
            data_dic[statu[1]] = {
                'value': num,
                'name': statu[1]
            }
            data_dic['key'].append(statu[1])
        return data_dic