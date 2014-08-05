class PostsController < ApplicationController
  def index
  	@posts = Post.order("created_at DESC")
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)

  	respond_to do |format|
  		if @post.save
  			format.html	{ redirect_to :action => "index" }
  			format.js	{ render json: @post, status: :created, location: @post }
  			format.json	{ render json: @post, status: :created, location: @post }
  		else
  			format.html	{ render action: "new" }
  			format.json	{ render json: @post.errors, status: :unprocessable_entity }
  		end
  	end
  end

  private
  def post_params
    params.required(:post).permit(:text)
  end
end
