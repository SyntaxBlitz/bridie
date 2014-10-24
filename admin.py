from django.contrib import admin
from mysite.bridie.models import User, Post, Comment

# Register your models here.
class UserAdmin(admin.ModelAdmin):
	pass
class PostAdmin(admin.ModelAdmin):
	pass
class CommentAdmin(admin.ModelAdmin):
	pass
admin.site.register(User, UserAdmin)
admin.site.register(Post, PostAdmin)
admin.site.register(Comment, CommentAdmin)
