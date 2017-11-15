class PostController < ApplicationController
  
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  
  def index #게시글 다 보여주는 페이지
  
    @posts=Post.all
  end

  def new #게시글 작성하는 form 페이지
  end

  def create #작성게시글 디비
    
    Post.create(
      
      title: params[:title],
      content: params[:content],
      user_id: session[:user_id]
      
      )
      redirect_to '/'
 #디비에 넣기
  end

  def show #1개의 게시글 보는 페이지
  # @comments =  Comment.where(post_id: params[:id]) 모델링 안 했을 때
  end

  def createcomment #해당하는 글에 댓글다는 액션(show)
    Comment.create(
      content: params[:content],
      post_id: params[:id]
      )
      redirect_to :back
  
  end
  
  
  def edit
    # render :nothing => true
    
  end
  
  def update
   
    
    @post.update(
      
      title: params[:title], 
      content: params[:content]
      )
      
      redirect_to "/post/show/#{@post.id}"
  
  end
  
  
 def destroy
   @post.destroy
   redirect_to '/'
 end
  
  private
  def find_post
    @post = Post.find(params[:id])
  end
end
