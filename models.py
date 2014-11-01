from django.db import models

# Create your models here.

class User(models.Model):
	display_name = models.CharField(max_length=64)
	auth_key = models.CharField(max_length=64)

class Post(models.Model):
	user = models.ForeignKey(User)
	text = models.CharField(max_length=4000)
	last_modified = models.DateTimeField()

class Comment(models.Model):
	user = models.ForeignKey(User)
	post = models.ForeignKey(Post)
	text = models.CharField(max_length=4000)
