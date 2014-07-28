class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def create
  	@user = User.new(params[:user])

  	respond_to do |format|
  		if @post.save
  			format.html	{ redirect_to :action => "index" }
  			format.js	{}
  			format.json	{ render json: @post, status: created, location: @post }
  		else
  			format.html	{ render action: "new" }
  			format.json	{ render json: @post.errors, status: :unprocessable_entity }
  		end
  	end
  end
end
