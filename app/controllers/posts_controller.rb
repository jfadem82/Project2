class PostsController < ApplicationController
	def index
		@posts = Post.all
		@customers = Customer.all.order('id ASC')
	end

	def show
		@customer = Customer.find(params[:customer_id])
		@post = Post.find(params[:id])
    	@newPost = Post.new
    	@comment = Comment.new
    end

	def new
		@customer = Customer.find(params[:customer_id])
		@post = @customer.posts.new
	end

	def create
		@customer = Customer.find(params[:customer_id])
		@post = @customer.posts.new(post_params)
		if @post.save
			redirect_to customer_path(@customer)
		else
			render :new
		end
	end

	def destroy
    	@customer.destroy
    	redirect_to customer_path(@customer)
  end

private
def post_params
    params.require(:post).permit(:title, :body, :customer_id)
end

def set_post
    @post = Post.find(params[:id])
  end
end

