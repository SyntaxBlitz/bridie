from django.db import models

# Create your models here.

class User(models.Model):
	display_name = models.CharField(max_length=64)
	auth_key = models.CharField(max_length=64)
