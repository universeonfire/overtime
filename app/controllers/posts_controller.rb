class PostsController < ApplicationController
	before_action :set_post, only: [:show, :update , :edit, :destroy , :approve, :reject]
	def index
		#post.rb model dosyasında oluşturduğum scope
		if admin_types.include?(current_user.type)
			@posts = Post.all.page(params[:page]).per(20)
		else
			@posts = Post.posts_by(current_user).page(params[:page]).per(20)
		end
	end
	def approve
		authorize @post
		@post.approved!
		redirect_to request.referrer || root_path , notice: "The post has been approved"
	end
	def reject
		authorize @post
		@post.rejected!
		redirect_to request.referrer || root_path , notice: "The post has been rejected"
	end
	def new
		@post = Post.new
	end
	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		if @post.save
			redirect_to @post, notice: "Post was successfully created."
		else 
			render :new
		end
	end
	def show
		@post = set_post
	end
	def edit
		#pundit gem post_policy
		authorize @post	
	end
	def update
		authorize @post

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
		params.require(:post).permit(:date, :rationale ,:status, :overtime_request)
	end
	def set_post
		@post = Post.find(params[:id])
	end

end
