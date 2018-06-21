class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    # params = {username: "홍길동", title: "제목", content: "내용"}
    # params = {:username => "홍길동", :title => "제목", :content => "내용"}
    Post.create(username: params[:username],
                title: params[:title],
                content: params[:content])
    flash[:notice] = "글 작성이 완료되었습니다."

    # post = Post.new
    # post.username = params[:username]
    # post.title = params[:title]
    # post.content = params[:content]
    # post.save
    redirect_to '/'
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(username: params[:username],
                title: params[:title],
                content: params[:content])
    redirect_to "/posts/#{post.id}"
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to '/'
  end
end
