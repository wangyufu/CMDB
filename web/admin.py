# Register your models here.
from django.contrib import admin
from web import models
from web import core


class AssetApprovalAdmin(admin.ModelAdmin):
    # 显示的列表
    list_display = ('sn', 'asset_type', 'manufactory', 'model', 'cpu_model', 'os_type', 'os_release', 'approved')
    # 过滤的列表
    list_filter = ('asset_type', 'os_type')
    # 搜索的字段
    search_fields = ('sn', 'os_type')
    # 编辑的列表
    list_editable = ('asset_type', 'approved')
    # 执行的函数
    actions = ['asset_approval', ]

    def asset_approval(self, request, querysets):
        # querysets 是选中的每条NewAssetApprovalZone的信息
        for obj in querysets:
            asset_handler = core.Asset(request)
            if asset_handler.data_is_valid_without_id(obj):
                asset_handler.data_inject()  # 注射
                obj.approved = True

                obj.save()
                print(asset_handler.response)

    # asset_approval 在页面上显示的名
    asset_approval.short_description = "新资产审批"


admin.site.register(models.UserProfile)
admin.site.register(models.NewAssetApprovalZone, AssetApprovalAdmin)
# ... and, since we're not using Django's built-in permissions,
# unregister the Group model from admin.
# admin.site.unregister(Group)
admin.site.register(models.Asset)
admin.site.register(models.Server)
admin.site.register(models.NetworkDevice)
admin.site.register(models.IDC)
admin.site.register(models.BusinessUnit)
admin.site.register(models.Contract)
admin.site.register(models.CPU)
admin.site.register(models.Disk)
admin.site.register(models.NIC)
admin.site.register(models.RAM)
admin.site.register(models.Manufactory)
admin.site.register(models.Tag)
admin.site.register(models.Software)
admin.site.register(models.EventLog)
