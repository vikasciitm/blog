class ArticlesController < ApplicationController
  def index
    @articls=Article.all
  end

  def new
    @vikas=Article.new
  end

  def create
    @vikas=Article.new(article_params)
    if @vikas.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to articles_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path, status: :see_other
  end


  private
    def article_params
      params.require(:article).permit(:title, :body, :email)
    end
end
