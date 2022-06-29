class ArticlesController < ApplicationController
  def new
    @user = User.find(1)
    @article = @user.articles.build
  end

  def create
    @user = User.find(1)
    article = @user.articles.build(article_param)
    article.save
  end

  private

  def article_param
    params.require(:article).permit(:title, :body)
  end
end
