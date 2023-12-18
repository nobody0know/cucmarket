# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2020-06-30 06:43
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='GoodsInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=20)),
                ('type', models.CharField(max_length=20)),
                ('picture', models.ImageField(upload_to='goods')),
                ('number', models.CharField(max_length=20)),
                ('price', models.DecimalField(decimal_places=2, max_digits=10)),
                ('buyer_id', models.CharField(max_length=20)),
                ('good_id', models.CharField(max_length=20)),
            ],
        ),
    ]
