
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
    

    





