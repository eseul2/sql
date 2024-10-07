-- MySQL SQL 학습

1. DDL 언어 학습하기
1-1. create 문

-- 요런 식으로 들어간다.
cteate table 테이블이름(
컬럼이름 컬럼타입 컬럼크기 null여부 컬럼기본값 제약조건,
컬럼이름 컬럼타입 컬럼크기 null여부 컬럼기본값 제약조건,
컬럼이름 컬럼타입 컬럼크기 null여부 컬럼기본값 제약조건,
);


-- 테이블은 대문자로 사용하고 그 안에 내용은 소문자로 하는 약속이 있어요
-- 회원테이블 MEMBER를 생성하고 다음과 같은 각 회원정보를 등록하세요


-- 회원번호 midx 타입은 숫자형, null은 허용하지 않음, 주요키(primary key)등록
-- 회원아이디 memberrid 타입은 문자형, 크기는 100byte, null허용안함
-- 회원 비밀번호 memberpw 타입은 문자형, 크기는 100byte, null허용안함
-- 회원이름 membername 타입은 문자형, 크기는 100byte, null 허용안함
-- 회원성별 membergender 타입은 문자형, 크기는 1byte, null 허용한함 (남성은 M입력 여성은 F)
-- 회원생년원일  memberbirth 타입은 숫자형, 크기는 8byte, null 허용한함
-- 회원주소 memberaddr 타입은 문자형, 크기는 10byte, null 허용
-- 회원전화 memberphone 타입은 문자형, 크기는 20byte, null 허용
-- 회원이메일 memberemail 타입은 문자형, 크기는 100byte, null허용
-- 회원취미 memberhobby 타입은 문자형, 크기는 100byte, null허용
-- 탈퇴여부 delyn 타입은 고정문자형, 크기는 1byte, 기본값은 N, null허용안함
-- 회원등록일 writeday 타입은 날짜형, 기본값은 시스템 날짜(now()함수), null허용안함
-- 회원ip memberip 타입은 문자형, 크기는 20byte, null허용

-- 입력
-- 1 hong 1234 홍길동 남 19990101 대전 01047478585 hong@naver.com 축구 N 2024-09-25 211.155.244.37
 -- midx : 주로 회원의 인덱스 또는 고유 식별자를 의미한다. (회원을 고유하게 식별할 수 있는 primary key)
 -- varchar 자동으로 우리가 데이터 조정할게요?

-- 테이블 스키마 생성
create table MEMBER (
midx int not null auto_increment primary key,
memberid varchar(100) not null,
memberpw varchar(100) not null,
membername varchar(100) not null,
membergender char(1) not null,
memberbirth int not null,
memberaddr varchar(10) null,
memberphone varchar(20) null,
memberemail varchar(100) null,
memberhobby varchar(100) null,
delyn char(1) default'N' not null,
writeday DATETIME default now() not null,
memberip varchar(20) null
);

-- 테이블 이름 대소문자 확인방법 (1:대소문자구분 안함, 0: 대소문자구분)
show variables like 'lower_case_table_names';


-- DML언어중 insert 명령어로 데이터 입력

형식 :
insert into 테이블이름(컬럼1,컬럼2,컬럼3....) values(값,값,값...); -- 값을 입력할 때 문자값은 ''안에 입력한다.


insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('hong','1234','홍길동','M','19990101','대전','01047478585','hong@naver.com','축구');



1-2. alter구문 사용해서 컬럼 변경하기 (기존 데이터를 삭제하고 컬럼을 변경해야하나 삭제할 수 없는 상황이라면 변경시 데이터를 미리 백업한다.)

형식 : alter table 테이블이름
컬럼 추가 ADD
컬럼 수정 MODIFY
컬럼 삭제 DROP
컬럼 이름변경 RENAME


alter table member
modify memberbirth varchar(10) null;

샘플데이터 입력하기 10개
insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('hong','1234','홍길동','M','19990101','대전','01047478585','hong@naver.com','축구');
insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('lee','5678','이순신','M','19980102','서울','01012345678','lee@naver.com','야구');
insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('seul','9101','김이슬','F','19960202','대전','01099171102','dltmfsus@naver.com','독서');
insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('kim','1112','김개똥','M','19570623','인천천','01012123456','kim@naver.com','야구');
insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('jang','4895','장만월','F','19931223','대구','01035678654','jang@naver.com','농구');
insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('han','5686','한석봉','M','19780318','제주도','01047759175', 'han@naver.com','달리기');
insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('park','4967','박동자','M','19760809','인천','01087879090','park@naver.com','독서');
insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('jung','0783','정월이','F','20051225','서울','01047867878','jung@naver.com','축구');
insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('king','2367','왕대박','M','19970506','서울','01041294507','king@naver.com','달리기');
insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('hwang','8686','황진이','F','19930924','광주','01016794356','hwang@naver.com','노래');
insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
values('kang','7935','강준','M','20070704','부산','01047853365','kang@naver.com','노래');


-- mysql에서는 자동커밋이 설정되어있다. 그래서 commit명령어를 쓰지 않아도 된다.

-- 자동 커밋 확인방법
show variables like 'autocommit';
-- set autocommit = true; (autocommit을 false로 설정하면 자동 커밋이 해제됨)


-- 데이터 삭제 DML구문
delete from member;  -- 전부 다 지우겠음
commit;

-- DML구문중에 select 구문 (데이터를 조회하는 구문)
형식 : select 컬럼1,컬럼2,컬럼3,컬럼4... from 테이블이름 where조건절 groupby그룹절 orderby순서정렬;

-- 회원이름을 나열하시오
select membername from member;
-- 회원아이디와 회원성별을 보여주세요
select memberid,membergender from member;
-- 회원정보 모든 값을 출력해주세요
select * from member;


-- 회원정보중에서 회원이 여성인 회원만 이름을 출력하시오
select membername from member where membergender ='F';


1-3. DDL 언어중에 3번째 table 삭제하기
형식 : drop dable 테이블이름;

drop table member;


-- 회원번호 5번인 사람의 아이디와 이름 그리고 사는곳을 출력하세요
select memberid,membername,memberaddr from member where midx = 5;

-- 회원메일중에 네이버 메일을 사용하는 회원 정보를 모두 출력해주세요
select * from member where memberemail like '%naver.com%';

-- and 조건 조건이 두개면 and를 붙이세용~
select * from member where memberemail like '%naver.com%' and memberaddr = '대전';

-- 서울에 살고 성별이 여성인 회원의 정보를 출력해주세요
select * from member where membergender ='F' and memberaddr = '서울';

-- 회원의 성씨가 김씨인 사람의 회원정보를 모두 출력하세요
select * from member where membername like '김%'; -- 김으로 시작하는 모든값(앞에 %를 뺀다)
select * from member where substr(membername,1,1) = '김'; -- 글자 자르기를 통해서 첫글자가 김인 사람을 가져온다.


-- 나이가 25살이고 성이 이씨인 사람의 정보를 출력하세요
select * from member where 2024-substr(memberbirth,1,4) = '25'  and membername like '홍%';

-- 취미가 축구이고 성별이 여성인 사람이며 성이 박씨인 사람을 출력하세요
select * from member where memberhobby = '축구' and membergender ='F' and membername like '박%';


select length(membername) from member; -- 글자 바이트 크기
select char_length(membername) from member; -- 글자 크기

-- 회원 이름중에 신으로 끝나는 회원의 이름을 출력해주세요
select * from member where membername like '%신';
select * from member where substr(membername,CHAR_LENGTH(membername),1) = '신';
substr(컬럼,자리수,갯수) -- 갯수가 생략되어 있으면 그 자리부터 끝까지라는 뜻

-- 자리수는 처음을 기준으로 하면 1로 시작되고 끝을 기준으로 하면 -1로 시작한다.
select * from member where substr(membername,-1,1) = '신'; -- -1은 문자열의 마지막 문자를 의미한다.


-- 정렬하기
order by (desc, asc) -- desc 내림차순 asc 오름차순

-- 회원번호의 순서를 내림차순으로 정렬해서 출력하시오
select * from member order by midx desc;
select * from member order by midx asc;

-- 회원 이름 순서대로 오름차순으로 정렬하시오
 select * from member order by membername asc;


-- 회원 1차 이름 오름차순, 2차 지역 내림차순으로 정렬하시오
select * from member order by membername asc, memberaddr desc;


-- 데이터 수정 구문 update
-- 회원번호 3번인 사람의 이름을 강호동으로 바꾸세요
update member SET membername = '강호동' where midx='3';


-- 대전에 살고 성이 홍씨인 사람들의 명단을 1차 회원번호 내림차순으로, 2차 이름 오름차순으로 정렬해서 출력하시오
select * from member where memberaddr = '대전' and membername like '홍%'
order by midx desc, membername asc;


-- 성을 제외한 회원이름이 길동일때 해당 회원의 나이를 출력하시오 (성이 한글자임을 전제하에)
select substr(daul now()) - substr(memberbirth,1,4) as age from member where substr(membername,2) ='길동';

-- 별칭 as
-- dual 가상 테이블

-- 시스템 날짜 함수
select now() from dual;  -- 날짜를 찍어보기 위해서 가상으로 테이블을 만들어 넣었다.


-- or (합집합)

-- 회원들 중에 서울 대전 부산에 사는 사람들의 명단을 최근 가입한 회원번호순으로 정렬해서 출력하시오.
select * from member where memberaddr ='서울' or memberaddr ='대전' or memberaddr='부산' order by midx desc;
select * from member where memberaddr in('서울','대전','부산') order by midx desc;


-- 서울 대구 광주 대전에 살고 있는 여성회원들의 이메일이 네이버인 사람들의 데이터를 뽑아서 내림차순으로(최근 가입한순) 정렬해주세요
select * from member where memberaddr in('서울','대전','광주','대전') and membergender = 'F' and
memberemail like '%naver.com%' order by midx desc;


-- 비교연산
-- >,<,>=,<=

-- 회원번호가 3보다 큰 사람들의 아이디를 출력하세요
select memberid from member where midx>3;

-- 회원번호가 3보다 크고 7보다 작은 사람들의 이름을 출력하세요
select membername from member where midx>3 and midx<7;
select membername from member where midx between 4 and 6;



-- 집계함수 공부하기
-- group by 절 사용하기 (그룹으로 묶을 때)
-- 형식 : select 1차컬럼이름, 2차컬럼이름  from member group by 1차컬럼이름, 2차컬럼이름;

-- 회원들의 사는 곳을 그룹별로 출력하세요
select memberaddr from member group by memberaddr;

-- 회원들의 사는곳의 그룹별 성별로 출력하세요
select memberaddr,membergender from member group by memberaddr, membergender order by memberaddr asc,membergender desc;

-- 전체그룹
select * from member;





1. count() 함수
-- 객수 함수를 사용해서 전체 인원수를 출력하세요 count()
select count(*)from member;   -- 몇개의 행이 있는가?
select count(midx) as midxcnt from member; -- 행중에 몇 개의 값이 들어있는가? (null값 제외)


2. sum() 함수 : 합을 구하는 함수
-- 회원들의 회원번호의 총합을 구해서 값을 출력하세요
select sum(midx) as midxsum from member;


3. max()함수 : 그룹 내에 최고값
-- 회원들중에 최고 회원번호의 최고값을 구하세요
select max(midx) as midxmax from member;


4.min()함수 : 그룹내에 최소값
select min(midx) as midxmin from member;


5. avg()함수 : 그룹내에 평균값
select avg(midx) as midxavg from member;



-- 회원들 중에 사는곳을 각 지역별로 인원수를 출력하세요
select memberaddr,count(midx) from member group by memberaddr;  -- midx에 null이 없다면 count안에 (*)를 넣어도 된다. 전체출력

-- 회원들의 각 지역별 성별로 인원수를 출력하세요
select memberaddr,membergender, count(midx) from member group by memberaddr,membergender;

-- 회원ㅂ전호 3~7번까지의 네아버 메일을 쓰는 사람을 출력하시오
select count(*) as cnt from member where midx between 3 and 7 and memberemail like '%naver.com';

-- 화원번호 2부터 9번까지 회원중에 지역별로 각 인원수를 출력하세요
select memberaddr, count(*) from member where midx between 2 and 9 group by memberaddr;
select memberaddr, count(*) from member where midx  >=2 and midx <=9 group by memberaddr; -- 비교연산자를 사용한 경우


-- instr() 위치값을 출력하는 함수
-- 메일에서 @의 자리수 위치를 출력하세요
select memberemail, instr(memberemail,'@') from member;

select substr(memberemail,instr(memberemail,'@')) from member;

-- 회원들의 각 메일 사용 현황(인원수)를 출력하세요
select substr(memberemail,instr(memberemail,'@')) as email, count(*) as membercnt
from member group by substr(memberemail,instr(memberemail,'@'))



-- concat() 글자 붙이기 함수
select concat(membername,'회원님') from member;
select concat(concat(membername,'회원님'),'~!!') from member;


-- 서브쿼리 학습하기
1. where절 서브쿼리 : where 조건절 안에 쿼리가 존재

-- 회원들중에 회원번호가 회원번호 평균값보다 작은 사람들의 명단을 출력하세요
select midx,membername from member where midx < (select avg(midx) as midxavg from member);

-- 회원번호중에 홀수인 사람들의 명단을 서브쿼리를 활용해서 출력하세요
select mod(midx,2) from member;
select * from member where midx in(select midx from member where mod(midx,2)=1); -- 서브쿼리를 활용함


-- 테이블 별칭
select A.*from member A;

-- 스칼라 서브쿼리 : 컬럼절안에 존재하는 쿼리
-- 회원번호와 회원 이름을 스칼라 쿼리를 활용해서 출력하세요
select a.midx,(select b.membername from member b where b.midx=a.midx) from member a;


-- 인라인뷰 : from절에 쿼리가 들어간다.

-- 회원이름 회원성별 회원나이만 있는 테이블 만들고 성별이 여성인 사람의 명단을 출력하세요
select A.* from (select membername,membergender,2024 - substr(memberbirth,1,4) as age from member)A
where A.membergender = 'F';


-- case when then else end 컬럼조건식
-- 회원번호가 1번 5번인 사람은 로또당첨이라고 출력하고 나머지는 꽝이라고 출력하세요
select midx,
	case midx
		when 1 then '로또당첨'
		when 5 then '로또당첨'
	else
		'꽝'
	end as msg
from member;

select case when midx=1 or midx=5 then '로또당첨' else '꽝' end as msg from member;


-- if() 함수 : 조건식 함수
select midx, if(midx in(1,5),'로또당첨','꽝입니다') as msg from member;

select midx, if(midx = 1,'로또당첨',if(midx=5,'로또당첨','꽝입니다')) from member;


-- null체크 함수 nvl() :오라클, ifnull() -> mysql
select ifnull(memberip,'아이피가 존재하지 않습니다.') as memberip from member;


-- 여기서부터 병원입원 다시 배워보기


-- 회원 ip가 null인 사람의 명단을 출력하세요
-- select a.membername from member a where a.memberip = null;  (이건 사용이 안됩니당)
select a.membername from member a where a.memberip is null;


-- 날짜 함수 사용하기
-- 년도를 추출하는 함수 DAYOFYEAR()

-- 회원번호 3번인 사람의 가입년도를 출력하세요.

select DAYOFYEAR(writeday) as year from member where midx=3;

-- 월을 추출 함수 month()
select month(writeday) as year from member where midx=3;

-- 날짜 date 함수
select date(writeday) as year from member where midx=3;

-- 기타 시간 hour() 함수 minute() 함수 second () 초함수

-- 요일함수 weekday() 함수
select weekday(now()) as '요일' from dual; (0월요일 1 화요일........6 일요일)

-- last_day() : 해당 날짜의 달에 마지막 날짜정보

select last_day(NOW()) from dual;

-- 현재 날짜와 시간

select now() from dual; -- 오늘 현재 시간
select CURRENT_TIMESTAMP() from dual;

-- 현재 날짜
select curdate() from dual;
select current_date() from dual;

-- 현재 시각
select curtime() from dual;
select current_time() from dual;

-- 날짜 표현을 형식화 시키는 함수 date_format(date,format)
select DATE_FORMAT(writeday,'%Y-%m-%d') from member;
select DATE_FORMAT(writeday,'%Y-%m-%d %T') from member; -- 이것만 해도 시간은 다 나옴.
select DATE_FORMAT(writeday,'%Y-%m-%d %H:%i:%s') from member;

-- 날짜 계산함수 date_add()
select date_add(now(),INTERVAL 1 DAY) from dual; -- 오늘 날짜에 하루를 더 추가해서 계산.

-- 문자를 날짜로 변환하는 함수 str_to_date()
select STR_TO_DATE('20300505','%Y%m%d') from dual;
select STR_TO_DATE('2030-05-05','%Y-%m-%d') from dual;

-- 2024년 10월 9일의 요일을 출력해주세요.
select WEEKDAY(STR_TO_DATE('20241009','%Y%m%d')) as '요일' from dual;




-- union 사용하기
-- 회원번호 1번인 사람의 이름과 대전에 사는 사람들의 명단을 모두 출력하세요.

select membername from member where midx='1'
UNION
select membername from member where memberaddr = '대전';

-- 서울 대전 부산에 사는 사람들의 나이와 명단과 여성인 사람의 나이와 명단을 모두 출력하세요.
select membername, 2024 - SUBSTR(memberbirth,1,4) as age from member where memberaddr in ('서울','대전','부산')
union
select membername, 2024 - SUBSTR(memberbirth,1,4) as age from member where membergender = 'F';




-- 임시테이블 사용하기
-- 필요한 데이터를 추출후 임시형태로 보관후 필요한 조건에 따라 다시 추출하는 방법

with temptables as (
select * from member where membergender='M'
)

select * from temptables;




-- 가상테이블 생성하기
create view virtualtable
AS
select * from member where memberaddr='대전';

select * from virtualtable;



-- rownum 행의 순서

-- 회원정보를 회원번호 내림차순으로 순서를 두고 정렬하시오.
set @rownum:=0;
select @rownum:=@rownum+1 as nm, A.* from member A order by A.midx desc;




-- 프로시저 만들기

create procedure proctest (
param_name varchar(20) -- 파라미터(매개) 변수 선언
)
BEGIN
	declare i int; -- 변수선언 타입과 같이
	set i=1; -- 변수의 초기값 담기
	while i<=1000 do -- 반복문 사용하기

	insert into member(memberid,memberpw,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby)
	values(concat(param_name,i),'1234', '홍길동', 'M', 19990101, '대전', '01047478585', 'hong@naver.com', '축구');
	set i = i+1;
	END while; -- 반복문 끝
END

drop PROCEDURE proctest;

call proctest('김이슬'); -- 프로시저 생성한 다음에 호출하는거

select count(*) from member;

-- 데이터 삭제하기
delete from member;
select * from member;

-- AUTO_INCREMENT 초기화
ALTER TABLE member AUTO_INCREMENT=1;




-- 인덱스 생성하기
--// 데이터를 조회할때 검색속도를 빨리하기 위해서 목차(색인)이라고 하는 index 를 사용해서 데이터 검색을 빨리한다.\

-- 형식
create index 인덱스이름 on 테이블이름(인덱스를 건 컬럼)

select count(*) from member;

create index memberid_idx on member(memberid);

select * from member where memberid='test555';

select A.* from (select * from member) A where A.memberid='test555';



-- 게시판 테이블 생성하기(BOARD)

create table BOARD (
bidx int not null AUTO_INCREMENT PRIMARY KEY, -- 글 번호
subject varchar(100) not null, -- 글 제목
contents TEXT not null, -- 글 내용
writer varchar(100) not null, -- 작성자
recom int null, -- 추천수
viewcnt int null, -- 조회수
filename varchar(100) null, -- 파일이름
writeday DATETIME default NOW(), -- 등록일
delyn char(1) default 'N', -- 삭제여부
ip varchar(30) null, -- ip
midx int not null -- 회원번호
);


-- 외래키(foreign key 제약조건 추가)
alter table board
add CONSTRAINT bidx_midx_fk FOREIGN KEY(midx) REFERENCES MEMBER(midx);


insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('글제목','글내용','글작성자',0,0,null,'211.111.222.31',102);


-- 추천 컬럼 기본값 주기
alter table board
modify recom int default 0;


-- 조회 컬럼 기본값 주기
alter table board
modify viewcnt int default 0;

insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('글제목','글내용','글작성자',0,0,null,'211.111.222.31',102);

-- join 학습하기
-- 공통된 컬럼으로 묶어서 하나의 테이블로 합치는 방법

-- 형식
select * from 테이블1 inner join 테이블2 on 테이블1.pk컬럼 = 테이블2.fk컬럼

-- 회원 아이디가 test2인 사람 글의 제목을 출력하세요
select A.subject from  board A inner join member B on B.midx = A.midx where B.memberid='test2';



-- member 테이블 데이터 수정하기 update (DML)
-- 형식 update 테이블이름 set 컬럼1='값',컬럼2='값' where midx=값; (where 조건을 사용하지 않으면 전체기 업데이트 될 수 있으니 주의요망)

-- 회원번호가 홀수인 사람들은 사는 지역을 모두 서울로 변경하세요
select 3 mod 2 from dual; -- mod 나머지 연산자

update member SET memberaddr='서울' where midx mod 2 =1;

select * from member;

-- 회원번호가 3의 배수인 사람들은 성별을 여성으로 하고 취미는 야구라고 변경하세요
update member SET membergender='F',memberhobby='야구' where midx mod 3 =0;
SELECT * FROM member;


-- 생년월일 19년생 날짜 랜덤생성 업테이트 (아직 실행 안했음)

UPDATE member
SET memberbirth = CONCAT(
    '19', -- 1900년대
    FLOOR(10 + (RAND() * 90)), -- 100에서 999까지의 임의의 3자리 숫자 (즉, 1900년대의 랜덤한 연도)

    LPAD(FLOOR(1 + (RAND() * 12)), 2, '0'), -- 1에서 12까지의 임의의 월 (2자리)

    LPAD(FLOOR(1 + (RAND() * 28)), 2, '0') -- 1에서 28까지의 임의의 일 (2자리, 안전하게 28일까지)
)
WHERE midx MOD 2 = 0;


UPDATE member
SET memberid = CONCAT('test', midx)
WHERE midx BETWEEN 1 AND 50;

-- 위에꺼 실행 안했어요


-- 이러한 순서로 샘플 데이터를 변경해보세요

-- 1. 이름을 변경해야지 memberid하고 이름이라는 글자를 붙여서 고유하게 만들자
-- 2. 두글자를 붙이기 함수 concat()을 사용해야지
-- 3. 확인해보자 select concat('이름',memberid) from member;
-- 4. update를 치자
-- 5. 전체를 대상으로 할거니까 where조건은 필요없어 실행
-- update member set membername = concat('이름',memberid);
-- 6. 확인 select * from member;

select * from board;

-- board 샘플데이터 입력하기
insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('안녕하세요','내용입니당','김마마',0,0,null,null,105);
insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('하이하이','내용이여유','나그네',0,0,null,null,120);
insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('방가요','좋은내용~','다그딕',0,0,null,null,112);
insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('하이루','게시판좋아요~','글쟁이',0,0,null,null,111);
insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('반갑습니다','내용이 어때여','뫄뫄',0,0,null,null,123);
insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('반가워요~','흑흑입니다 내용','왕눈이',0,0,null,null,117);
insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('잘 지내봐요','별루','김호엉',0,0,null,null,154);
insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('이제 추워짐','대박임','한힝구',0,0,null,null,132);
insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('진짜추움','근데 반바지입음','김호옹',0,0,null,null,108);
insert into BOARD(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('감기걸리겠음','날씨어쩔','여름',0,0,null,null,130);

select * from board;


-- 게시글을 최근 등록된 순서대로 나열하세요
select * from board order by bidx desc;

-- 3번째 게시글을 쓴 사람의 회원 이름을 출력하세요
select A.membername from member A inner join board B on A.midx=B.midx where B.bidx =3;

-- 아이디가 test123인 사람이 쓴 게시글을 모두 출력해주세요
select B.* from member A inner join board B on A.midx=B.midx where A.memberid ='test2';

-- 대전에서 사는 사람들이 쓴 글의 게시물의 수를 출력해주세요
1. select * from member A inner join board B on A.midx=B=midx
2. select count(*) from member A inner join board B on A.midx=B.midx where A.memberaddr ='대전';

-- 8번 게시물의 조회수를 +1 업데이트 해주세요
update BOARD set viewcnt = viewcnt+1 where bidx=8;

select * from board;


-- outer join 학습하기
 : 기준점이 되는 모든 데이터(테이블)들은 나타내주고 다른 테이블의 데이터는
   공통적인 컬럼으로 묶어져있는 데이터만 추출한다.
   left outer join 형식
   select * from 테이블 A left outer join 테이블 B on A.pk=B.fk  -- pk는 뭔가요 ?

 -- 예시) 회원등중에 게시글을 쓴 수를 모두 출력하세요 (게시글을 쓰지 않았으면 0)
  select * from member A left outer join board B on A.midx=B.midx;



SELECT A.midx, COUNT(B.bidx)
FROM member A
     LEFT OUTER JOIN board B
     ON A.midx=B.midx
GROUP BY A.midx
ORDER BY midx;


-- left 조인 학습 예제
-- 회원들중에 사는 지역별로 게시물을 쓴 사람들의 인원수를 출력하세요
select A.memberaddr, B.bidx from member A left join board B on A.midx = B.midx
group by A.memberaddr,B.bidx order by memberaddr;

-- 김이슬3인 사람이 쓴 글이 ip가 있으면 ip있음 이라고 출력하고 아이피가 없읍면 ip없음 이라고 출력하세요
select if(B.ip,'ip있음','ip없음') as ip from member A join board B on A.midx = B.midx
where A.membername = '홍길동';


-- 2024. 10. 4 학습

-- 글제목 중에 안녕하세요 라고 쓰여진 글의 회원 이름을 출력하세요
select A.membername from member A left join board B on A.midx=B.midx where B.subject='하이루';

-- 게시글의 추천수가 제일 많은 사람의 아이디를 출력하세요 다시 해보세용 이거 코드 아닙니당
select A.membername from member A inner join board B on A.membername =B.subject group by recom;
where B.recom =(select max(recom) from board);

select max(recom) from board;

-- 데이터 넣어보기 bidx 3 나는 없나봄 0행이 업데이트 됐다고 떴습니다.
update board set recom =3 where bidx=3;
SELECT * from board;



-- reply create 테이블 만들어보기 실습


create table REPLY (
ridx int not null AUTO_INCREMENT PRIMARY KEY, -- 댓글 번호
rsubject varchar(100) null, -- 댓글 제목
rcontents TEXT not null, -- 댓글 내용
writer varchar(100) null, -- 작성자
writeday DATETIME default NOW(), -- 등록일
delyn char(1) default 'N', -- 삭제여부
rip varchar(20) null, -- ip
midx int not null, -- 회원번호
bidx int not null -- 게시물 번호
);


-- midx fk 설정
alter table REPLY
add CONSTRAINT member_reply_midx_FK FOREIGN key(midx) REFERENCES member(midx);

-- bidx fk 설정
alter table REPLY
add CONSTRAINT board_reply_bidx_FK FOREIGN key(bidx) REFERENCES board(bidx);


-- 게시글 11번 글에 대해서 회원번호 105번인 사람이 궁금이라는 제목으로 알려주세요라는 내용을 작성하고 닉네임은
-- 삼삼이라고 등록하는 구문을 입력하세요

insert into REPLY(rsubject,rcontents,writer,rip,midx,bidx)
values('궁금','알려주세요','삼삼','1111.222.333.444',105,11);



select * from board;

-- originbidx 컬럼 필요 : 원글의 그룹을 나타내주는 기능
alter table board
add originbidx int null;

-- depth 컬럼 필요 : 그룹의 순서를 나타내주는 기능
alter table board
add depth int null;

-- level_ 컬럼 필요 : 답변 단계를 나타내주는 기능
alter table board
add level_ int null;




-- 컬럼 순서 바꾸기
alter table board
modify column originbidx int after bidx;    -- bidx 뒷편에 두겠다. (after)

alter table board
modify column depth int after originbidx;    -- originbidx 뒷편에 두겠다. (after)


alter table board
modify column level_ int after depth;    -- depth 뒷편에 두겠다. (after)


-- origin숫자는 bidx와 같이 나머지는 아직 0으로 설정하는 코드
update board set originbidx=bidx, depth=0, level_=0;


-- 게시판 조회목록 쿼리
select * from board order by originbidx desc, depth asc;

-- 9번째 글에 누군가 답변을 달았다.
-- 답변달기 쿼리
update board set bidx

insert into board (originbidx,depth,level_,subject,contents,writer,midx)
values(14,1,1,'14번글 답변','ㄴ14번글 답변 내용','답변자','111');


-- 또다른 답변달기 (원글번호의 순서보다 큰것들은 순서를 +1 업데이트하고 그 사이에 답변글을 입력한다.)
-- originbidx 14번에 관한 글에 depth가 0보다 큰 애들을 숫자 1을 증가시키겠다.
update board SET depth=depth+1 where originbidx =14 and depth > 0;

insert into board (originbidx,depth,level_,subject,contents,writer,midx)
values(14,1,1,'ㄴ14번글 두번째  답변','ㄴ14번글 두번째 답변 내용','답변자','101');

select * from board order by originbidx desc, depth asc;

-- 답변하기 쿼리
set autocommit = 0;   -- 수동 커밋으로 전환
update board SET depth=depth+1 where originbidx =답변 하려는 원글번호  and depth > 원글의 순서;

insert into board (originbidx,depth,level_,subject,contents,writer,midx)
values(원글번호,원글순서의 +1,원글 답변 단계+1,'답변제목','답변내용','닉네임','회원번호');
commit;   -- updqte insert 일괄진행
set autocommit = 1;  -- 자동커밋으로 전환


-- 수정하기 쿼리
update board set subject ='수정할 제목 내용',contents='수정할 내용',writer='작성자'
modifyday = NOW() where bidx=수정하려는 글 번호;


-- 수정날짜 입력 컬럼 생성하기
alter table board
add modifyday datetime null;

-- 삭제하기 쿼리
update board set delyn='Y',modifyday=NOW() where bidx=삭제하려는 글 번호;

-- 내용보기 쿼리
select * from board where bidx = 내용을 보려고 하는 글번호;

-- 목록쿼리
select * from board where delyn ='N' order by originbidx desc, depth asc;

-- 새글 입력 쿼리
set autocimmit = 0; -- 수동 커밋 설정

insert into board (originbidx,depth,level_,subject,contents,writer,midx)
values(null,0,0,'제목','내용','작성자',회원번호);

update board set originbidx=(select max(bidx) from board)
where bidx = (select max(bidx) from board);
commit;
set autocommit = 1; -- 다시 자동으로 커밋 변경


-- 페이징 목록쿼리
select * from board where delyn ='N' order by originbidx desc, depth asc limit 0,15; -- 0번 행부터 15개를 가져와라
																      -- limit (페이지번호-1)*15,15



-- board 더미 데이터 만들어보기
create procedure boardproc (
param_name varchar(20) -- 파라미터(매개) 변수 선언
)
BEGIN
	declare i int; -- 변수선언 타입과 같이
	set i=1; -- 변수의 초기값 담기
	while i<=1000 do -- 반복문 사용하기

	insert into board(originbidx,depth,level_,subject,contents,writer,midx)
	values(null,0,0,concat(param_name,i),concat(param_name,i),concat(param_name,i),103);
	set i = i+1;
	END while; -- 반복문 끝
END

-- 프로시저 삭제
drop  procedure boardproc;


-- 프로시저 호출~
call boardproc ('게시판');

update board SET originbidx=bidx;

select * from board;

select * from board where delyn ='N' order by originbidx desc, depth asc limit 0,15;



-- 댓글테이블 샘플데이터 입력
insert into reply(rsubject,rcontents,writer,midx,bidx)
values('댓글제목','댓글내용','댓글작성자',105,11);
insert into reply(rsubject,rcontents,writer,midx,bidx)
values('궁금','궁금하다고','댓글작성자2',111,14);
insert into reply(rsubject,rcontents,writer,midx,bidx)
values('댓글일까?','댓글맞음','댓글작성자3',117,16);
insert into reply(rsubject,rcontents,writer,midx,bidx)
values('궁금해여','사실 아님','댓글작성자4',108,19);
insert into reply(rsubject,rcontents,writer,midx,bidx)
values('윗댓이상','쟤 이상해','댓글작성자5',130,20);
insert into reply(rsubject,rcontents,writer,midx,bidx)
values('내말이','왜저래','댓글작성자6',132,18);
insert into reply(rsubject,rcontents,writer,midx,bidx)
values('공부가 힘든가봐요','이해해요','댓글작성자7',112,13);
insert into reply(rsubject,rcontents,writer,midx,bidx)
values('궁금합니다','알려줘요','댓글작성자8',123,15);
insert into reply(rsubject,rcontents,writer,midx,bidx)
values('저도 몰라요','나도 몰라','댓글작성자9',120,12);
insert into reply(rsubject,rcontents,writer,midx,bidx)
values('난 알아요','알려드림','댓글작성자10',154,17);

select * from member;
select * from board;
select * from reply;

-- 게시글 17번에 대한 댓글을 쓴 사람들의 아이디를 출려갷주세요
-- 1. board 테이블과 reply테이블을 조인해서 합친다.
select *
from board A
join reply B on A.bidx=B.bidx
join member C on C.midx=B.midx
where A.writer ='행인'
;

-- 4. 검증 - 샘플검사 or 전수검사

update reply set rsubject -'악플' where ridx=7;

-- 댓글중에 악플이라고 써있는 게시글을 모두 찾아서 출력하고 그 댓글을 쓴 사람의 이름과 연락처를 출력해주세요
select membername,memberphone from member where reply

