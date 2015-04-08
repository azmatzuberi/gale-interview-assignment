from random import shuffle
from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse
from daily.models import Article

from django.shortcuts import render, get_object_or_404

def detail(request, article_id):
  my_article = get_object_or_404(Article, pk=article_id)
  pic = get_object_or_404(Article, pk=article_id)
  # return render(request, 'daily/detail.html', {'pic': pic})
  
  # Get a list of every article
  all_articles = list(Article.objects.all())

  # Shuffle the list in place
  shuffle(all_articles)

  # Grab 4 of them
  read_next_articles = all_articles[:4]

  azmat = {
  	'cool_article': my_article,
  	'read_next_articles': read_next_articles,
  }
  
  return render(request, 'daily/detail.html', azmat)


def index(request):
    latest_article_list = Article.objects.order_by('-publ_date')[:4]
    
    # Get a list of every article
    all_articles = list(Article.objects.all())
    
    # Shuffle the list in place
    shuffle(all_articles)
    
    # Grab 1 of them
    preview_article = all_articles[:1]

    # Grab 4 of them
    read_next_articles = all_articles[:4]
  
    cxt = {
      'my_article_list': latest_article_list,
      'read_next_articles': read_next_articles,
      'preview_article': preview_article
    }

    return render(request, 'daily/index.html', cxt)