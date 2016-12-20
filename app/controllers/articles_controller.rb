class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @magazine = @article.issue.magazine
  end
end
