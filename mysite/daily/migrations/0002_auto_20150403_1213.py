# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import daily.models


class Migration(migrations.Migration):

    dependencies = [
        ('daily', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='article_list',
            name='image',
            field=models.ImageField(null=True, upload_to='dontcare', blank=True),
        ),
        migrations.AlterField(
            model_name='article_list',
            name='publ_date',
            field=models.DateField(verbose_name=b'date published'),
        ),
    ]
