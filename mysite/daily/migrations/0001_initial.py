# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Article_Detail',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('text', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Article_List',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(unique=True, max_length=100)),
                ('author', models.CharField(unique=True, max_length=100)),
                ('publ_date', models.DateField(auto_now_add=True, db_index=True)),
                ('category', models.CharField(unique=True, max_length=100)),
                ('text', models.TextField()),
            ],
        ),
        migrations.AddField(
            model_name='article_detail',
            name='article',
            field=models.ForeignKey(to='daily.Article_List'),
        ),
    ]
