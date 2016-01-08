class CommentsController < ApplicationController

	def new
		@customer = Customer.find(params[:customer_id])
		@comment = current_customer.comments.new
	end

	def create
		@customer = Customer.find(params[:customer_id])
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to customer_path(@comment.post.customer)
		else
			render :new
		end
	end

private
	def comment_params
		params.require(:comment).permit(:body, :customer_id, :post_id)
	end


end