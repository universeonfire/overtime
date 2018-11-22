class PostsController < ApplicationController
	before_action :set_post, only: [:show, :update , :edit, :destroy]
	def index
		@posts = Post.all
	end
	def new
		@post = Post.new
	end
	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		if @post.save
			redirect_to @post, notice: "Post was created Successfully"
		else 
			render :new
		end
	end
	def show
		@post = set_post
	end
	def edit
		
	end
	def update
		respond_to do |format|
			if @post.update(post_params)
				format.html{redirect_to posts_path, notice: 'Post was successfully updated.' }
			else
				format.html{render :edit}
			end
		end
	end
	def destroy
		respond_to do |format|
			@post.destroy
			format.html{redirect_to posts_path, notice: 'Post was successfully deleted.' }
		end
	end

	private
	def post_params
		params.require(:post).permit(:date, :rationale )
	end
	def set_post
		@post = Post.find(params[:id])
	end

end
