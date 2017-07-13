# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-06-26 08:46
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='NewAssetApprovalZone',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sn', models.CharField(max_length=128, unique=True, verbose_name='资产SN号')),
                ('asset_type', models.CharField(blank=True, choices=[('server', '服务器'), ('switch', '交换机'), ('router', '路由器'), ('firewall', '防火墙'), ('storage', '存储设备'), ('NLB', 'NetScaler'), ('wireless', '无线AP'), ('software', '软件资产'), ('others', '其它类')], max_length=64, null=True)),
                ('manufactory', models.CharField(blank=True, max_length=64, null=True)),
                ('model', models.CharField(blank=True, max_length=128, null=True)),
                ('ram_size', models.IntegerField(blank=True, null=True)),
                ('cpu_model', models.CharField(blank=True, max_length=128, null=True)),
                ('cpu_count', models.IntegerField(blank=True, null=True)),
                ('cpu_core_count', models.IntegerField(blank=True, null=True)),
                ('os_distribution', models.CharField(blank=True, max_length=64, null=True)),
                ('os_type', models.CharField(blank=True, max_length=64, null=True)),
                ('os_release', models.CharField(blank=True, max_length=64, null=True)),
                ('data', models.TextField(verbose_name='资产数据')),
                ('date', models.DateTimeField(auto_now_add=True, verbose_name='汇报日期')),
                ('approved', models.BooleanField(default=False, verbose_name='已批准')),
                ('approved_date', models.DateTimeField(blank=True, null=True, verbose_name='批准日期')),
                ('approved_by', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='web.UserProfile', verbose_name='批准人')),
            ],
            options={
                'verbose_name': '新上线待批准资产',
                'verbose_name_plural': '新上线待批准资产',
            },
        ),
    ]
