class UserController < ApplicationController
  
  
  def index
    @users = User.all
  end
  
  def create
    #입력을 받은 데이터를 테이블에 넣기
    
  
    @email = params[:email]
    @password = params[:password]
    
    User.create(
      
      email: @email,
      password: @password
      
      
      )
  end
  
  
  def login
  end


#가능한 시나리오
#DB에 유저가 없을 때(params[:email]로 DB검색시 없을 때)
  #-입력한 아이디가 존재하지 않습니다.
  #-메일 잘못입력
#유저가 있을 때
    #-패스워드가 다를 때, =>패스워드 틀림
    #-패스워드가 맞을 때 로그인
  def login_process
    @user = User.find_by(email: params[:email])
    if @user 
     
     
      if @user.password == params[:password]
         session[:user_id] = @user.id
         flash[:notice]  = "로그인이 되었습니다."
         redirect_to '/'
      #참거짓과 대입하는 개념 차이 if 문에서 참 거짓은 
      #== 대입하는 개념은 = 
      else
        flash[:alert] = "비밀번호가 틀렸습니다."
         redirect_to '/user/login'
      end
      
      
      else
       flash[:alert] = "그런 이메일의 유저가 없다."
       redirect_to '/user/new'
    
    end
  end
    
  def logout
    session.clear
    flash[:notice] ="로그아웃이 되었습니다."
    redirect_to '/'
  end
    
  def note
  end
  
  
end


