class PostsController < ApplicationController

	before_action :set_post , only: [ :show , :edit , :update , :destroy ]

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def edit
		@post = Post.edit
	end

	def create
		@post = Post.new( post_params )		

		respond_to do |format|
			if @post.save
				format.html { redirect_to @post, notice: "Post was successfully created." }
			else
				format.html { render :new }
			end
		end	
	end

end
