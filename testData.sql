-- Test용 데이터 삽입 코드

-- 학교 인증 API 테스트용 쿼리
INSERT INTO schoolcategory VALUES (1,'한국항공', 'kau.kr');

-- 멘토 글 검색 API 테스트용 쿼리
INSERT INTO member VALUES ( 1, '김태현', '태현', '17', 'kimtaehyun98@naver.com', '1234', 1, '소프트웨어', 'M', 0, 'ACTIVE', current_timestamp, current_timestamp );
INSERT INTO member VALUES ( 2, '멘티', '멘티', '17', 'menti@naver.com', '1234', 1, '소프트웨어', 'M', 0, 'ACTIVE', current_timestamp, current_timestamp );

INSERT INTO mento VALUES (1, 1, 2, 3, '', 5.0, '안녕하세요!', current_timestamp, current_timestamp);
INSERT INTO menti VALUES (2, 1, 2, 3, '', '멘티입니다', current_timestamp, current_timestamp);

INSERT INTO image VALUES (1, 1, 'imageUrl_1-1');
INSERT INTO image VALUES (2, 1, 'imageUrl_1-2');
INSERT INTO image VALUES (3, 2, 'imageUrl_2-1');

INSERT INTO post VALUES (1, 1, 1, 'Spring Framework를 사용한 웹 프로그래밍(WEB)', 'Spring을 사용하여 Web BackEnd를 공부해왔습니다. 전반적인 서버 관련된 멘토링이 가능합니다. #Spring #JPA #MySQL #졸려',
                         current_timestamp, current_timestamp);

INSERT INTO post VALUES (2, 1, 1, 'Node.JS Framework를 사용한 웹 프로그래밍(WEB)', 'Node.JS를 사용하여 Web BackEnd를 공부해왔습니다. 전반적인 서버 관련된 멘토링이 가능합니다. #Node.js #npm #Javascript #졸려',
                         current_timestamp, current_timestamp);

INSERT INTO post VALUES (3, 1, 1, 'React를 사용한 웹 프로그래밍(WEB)', 'React를 사용하여 Web FrontEnd를 공부해왔습니다. 전반적인 Front 관련된 멘토링이 가능합니다. #React #Javascript #Typescript #졸려',
                         current_timestamp, current_timestamp);

INSERT INTO post VALUES (4, 1, 1, 'Spring Framework를 사용한 앱 프로그래밍(APP)', 'Spring을 사용하여 REST API 구축. 전반적인 서버 관련된 멘토링이 가능합니다. #Spring #JPA #MySQL #졸려',
                         current_timestamp, current_timestamp);

