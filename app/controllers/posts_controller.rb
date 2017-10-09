class PostsController < ApplicationController

	#http_basic_authenticate_with name: "chongyang", password: "1234", except: [:index, :show]
	def index
		@posts = Post.all
		
		if params[:search]
			@posts = Post.search(params[:search]).order("created_at DESC")
			
		else
			@posts = Post.all.order('created_at DESC')

		end

	end


	def show
        @post = Post.find(params[:id])
	end

	def new
		@post = Post.new

	end

	def create
        #render plain: params[:post].inspect
        @post = Post.new(post_params)
        @post.user = current_user
        
        if(@post.save)
             redirect_to @post
        else

        	render 'new'
        end

	end

	def edit
		@post = Post.find(params[:id])
	end
	
	def update
		@post = Post.find(params[:id])

		if(@post.update(post_params))
             redirect_to @post
        else

        	render 'edit'
        end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end

	private def post_params
        params.require(:post).permit(:title,:body)
    end

    #def signed_in
    	#if(@post.sign_in)
    	#redirect_to @post


end
