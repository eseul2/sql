select * from member a


-- insert 데이터 입력구문 DML : 데이터 조작언어
insert into member(member_id,member_name,member_addr)
values('tess','나훈아','경기 부천시 중동');
insert into member(member_id,member_name,member_addr)
values('hero','임영웅','서울 은평구 증산동');
insert into member(member_id,member_name,member_addr)
values('iyou','아이유','인천 남구 주안동');
insert into member(member_id,member_name,member_addr)
values('jyp','박진영','경기 고양시 장항동');
insert into member(member_id,member_name,member_addr)
values('carry','머라이어','미국 텍사스 사막');  -- 머라이어 지워버림


insert into product(product_name,cost,make_date,company,amount)
values('바나나','1500','2021-07-01','델몬트','17');  -- 재품아름, 가격, 제조일자, 제조회사, 남은수량
insert into product(product_name,cost,make_date,company,amount)
values('카스','2500','2022-03-01','OB','3');
insert into product(product_name,cost,make_date,company,amount)
values('삼각김밥','800','2021-09-01','CJ','22');


-- 데이터 수정 구문 update
update member SET member_addr='영국 런던 먹자골목' where member_name='머라이어';

select * from member;


-- 데이터 삭제 DML구문
delete from member where member_name= '머라이어';



