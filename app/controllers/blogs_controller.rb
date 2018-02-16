class BlogsController < ApplicationController

def index
	@blogs = Blog.all
end

def show
	@blog = Blog.find(params[:id])
	end

	def new
	  	@blog = Blog.new
	end

	def create
        # ストロングパラメーターを使用
         blog = Blog.new(blog_params)
        # DBへ保存する
         blog.save
        # 新規投稿画面へリダイレクト
        redirect_to '/blogs/new'
    end

    private

    def blog_params
        params.require(:blog).permit(:title, :body, :category)
    end
end

