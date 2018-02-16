class PostsController < ApplicationController
def show
	@blog = Blog.find(params[:id])
	end
	private

end
	  # def new
	  # 	@blog = Blog.new
	  # end

   #    private
 
   #  def post_params
   #      params.require(:blog).permit(:title, :body, :category)
   #  end

end
