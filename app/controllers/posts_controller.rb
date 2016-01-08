class PostsController < ApplicationController
	def new
		@customer = customer.find(session[:customer_id])
		@post = @customer.posts.new
	end

	def create
		@customer = customer.find(session[:customer_id])
		@post = @customer.posts.build(post_params)
		if @post.save
			redirect_to customer_path(@customer)
		else
			render :new
		end
	end

private

	def set_post
		@post = Post.find(params[:id])
	end

	def post_params
	    params.require(:post).permit(:title, :body, :customer_id)
	end
end
