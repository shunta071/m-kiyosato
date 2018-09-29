class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Comment.find(params[:id])
    @post.update params.require(:title,:text ).permit(:image_name) # POINT
    redirect_to @comment
  end

  def new
  end

  def create
    @post = Post.new(
      title: params[:title], 
      text: params[:text]
      
      # TODO
      # ファイル名を投稿IDと揃うようにする
    
      )
    
    @post.img_name = "#{@post.title}.jpg"
    image = params[:img_name]
    File.binwrite("public/post_images/#{@post.img_name}", image.read)

    @post.save

    redirect_to("/posts/index")

    # @post = Post.new(
    #   title: params[:title], 
    #   text: params[:text]
      
    #   # TODO
    #   # ファイル名を投稿IDと揃うようにする
    
    #   )
    
    # @post.img_name = "#{@post.title}.jpg"
    # image = params[:img_name]
    # File.binwrite("public/post_images/#{@post.img_name}", image.read)

    # @post.save

    # redirect_to("/posts/index")
    
  end


end

