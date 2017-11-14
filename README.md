
#루비에서 comment게시판 만들기

* 오늘 새롭게 배운 기능

- flash기능 : 한 번만 나타났다가 사라지는 것
- Rdbms 기능 : 1:M 관계 has_many comments  (model 파일에)
                        belongs_to post
 이걸 쓰면 매소드를 쉽게 사용할 수 있다.
 user 와 post가 있다면 controller 가 두 개
 하나씩 찾아가면서 하기
 post안에 user정보 user안에 post정보 ORM : object relational Mapping
 comment post안에 들어있는 comments로 찾기가 가능해진다.
 post.where(user_id :user_id)
 rails c 창을 활용해서 db 조회해볼수도 있다.

- create_reply

1.입력을 받는다.
2.내가 가진 데이터베이스에 저장한다.
3.보여준다.



* 오늘 팁으로 배운 것

-  컨트롤러 창 옆에 펴놓고 하면 편합니다!
  이건 딴 거 가지고 해도 그럴 거 같습니다.
  function 선언할 때!

- 어? @변수가 출력이 안된다. 이런 경우
  
    @user. 
    1.변수명이 컨트롤러에 있는지 확인
    2. 디비에서 받아오는 거니까 DB에 있는지 확인
     string에서 확인!변수명 선언되어있는지
    3. 그냥 DB관련 섹션을 찾아보면된다.
    

    


# 20171113
#post method - token: 띄어쓰기도 비번이 될 수 있다. 
#렌더링의 개념 : 페이지 끌어다 쓰는 것.

 1. 오늘 잡은 에러.
 
- DB에러 
 : Post.user.email RDBMS에서 관계찾아서 할 때는 데이터테이블에 비어있는게 있으면 안된다.
 post도 있고 유저도 있고 이메일도 있어야 하는데 그렇지 않아서 계속 꼬이는 에러
 : 가운데 스크롤 누르면 탭다지워짐: 그 자리에서 가운데 계속 누른다.
 : fake db 만들기- gem faker : seed에 삽입테이블 만든다.

- 개발할 때 웹페이지 모양은 F12에서 끝에 버튼 누르고 DIV 영역을 클릭해 가면서 하면 됩니다.

 Validation
 
 프론트엔드 validation
 백엔드 서버validation
 
 이메일 입력하면 이메일인지 확인
 
 푸터는 yield 밑에 입력한다.
 
 #
 bootstrap
 _파일명 적어서 
 
 ==은 if 문에서 bolean 값 오늘의 핵은 로그인 프로세스!!!
 
 
 #플래시라는 해쉬안에 flash{
     
     notice => "안내"
     alert => "경고"
     
 }
 
 def login_process
 
 @user = User.find_by(email: params[:email])
 if @user 
   if @user.password == params[:password]
      session[:user_id] = @user.id
      flash[:notice] = "로그인이 되었습니다."
      redirect_to '/'
    else 
     flash[:alert] = "비밀번호가 틀렸습니다."
     redirect_to '/user/login'     
   end 
 else
  flash[:alert] = "그런 이메일의 유저가 없다."
  redirect_to '/user/new'
    end
end
 


