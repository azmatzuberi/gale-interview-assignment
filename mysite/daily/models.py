# Imports
from django.db import models
import datetime
from django.db import models
from django.utils import timezone

import os

# Create your models here.
class Article(models.Model):
	# Article properties
	title = models.CharField(max_length=100, unique=True)
	author = models.CharField(max_length=100, unique=True)
	publ_date = models.DateField('date published')
	category = models.CharField(max_length=100, unique=True)
	text = models.TextField()
	image = models.ImageField(upload_to='articles', blank=True, null=True)

	#String method returning object
	def __str__(self):
		return self.title

	#This is in reference to the admin section of django
	def was_published_recently(self):
		return self.pub_date >= timezone.now() - datetime.timedelta(days=1)	