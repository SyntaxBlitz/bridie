class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)

		respond_to do |format|
			if @comment != false
				format.html     { redirect_to :action => "index" }
				format.js       { render json: @comment, status: :created, location: @comment }
				format.json     { render json: @comment, status: :created, location: @comment }
			else
				format.html     { render action: "new" }
				format.json     { render json: @comment.errors, status: :unprocessable_entity }
			end
		end
	end

	private
		def comment_params
			params.require(:comment).permit(:text)
		end
end
