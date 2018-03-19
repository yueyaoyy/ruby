class ArticlesController < ApplicationController
	def new
		@article = Article.new
	end

	def index
		@articles = Article.all
	end

	def edit
		@article = Article.find(params[:id])
	end
	
	def create
		@article = Article.new(article_params)

		if @article.save
			redirect_to @article
			# Notice that inside the create action we use render instead of redirect_to when save returns false. The render method is used so that the @article object is passed back to the new template when it is rendered. This rendering is done within the same request as the form submission, whereas the redirect_to will tell the browser to issue another request.
		else render 'new'
		end
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else 
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	def show
		@article = Article.find(params[:id])
	end

	private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
