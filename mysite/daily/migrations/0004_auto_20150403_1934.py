# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('daily', '0003_auto_20150403_1327'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Article_List',
            new_name='Article',
        ),
    ]
