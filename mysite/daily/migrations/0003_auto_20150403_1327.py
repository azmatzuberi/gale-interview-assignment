# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('daily', '0002_auto_20150403_1213'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='article_detail',
            name='article',
        ),
        migrations.DeleteModel(
            name='Article_Detail',
        ),
    ]
