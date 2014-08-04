class ArticlesController < ApplicationController
	def create
		@article = Article.new(article_params)

		@article.save
		redirect_to @article
	end

	#GET / articles
	#GET / articles.json
	def index
		@article = Article.all
		render json: Article.all
	end

	#GET / articles/:id
	#GET / articles/:id.json
	def show
		@article = Article.find(params[:id])
		render json: Article.find(params[:id])
	end



	private
		def article_params
			params.require(:article).permit(:title, :text, :author, :published_at, :video_url, :img_url)
		end
end
