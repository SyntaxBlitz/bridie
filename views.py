from django.shortcuts import render
from mysite.models import Post

# Create your views here.
def index(request):
	posts = Post.objects.all()
	ctx = {'posts_list': posts}
	return render(request, 'templates/index.html', ctx)
