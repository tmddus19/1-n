class PostsController < ApplicationController
  def index
    #Post에 저장된 모든 글을 불러와서 보여줄거다
    @posts = Post.all
  end

  def new
  end

  def create
    #new에서 날아온 내용으로 게시글을 저장한다.
    Post.create(
        title: params[:title],
        content: params[:content]
    )
    redirect_to '/'
  end

  def show
    @post = Post.find(params[:id])
  end
  
  def comment
    # 새로운 댓글 하나를 만든다
    # 1. 해당 댓글이 어떤 게시글에 속하는지와 함께 (post_id: 2)
    # 2. 댓글 내용도 작성한다.
    # 3. redirect :back
    Comment.create(
      post_id: params[:id], # /posts/:id/comment
      content: params[:content]
    )
    redirect_to :back
  end
end
