DROP DATABASE IF EXISTS xtreme;
CREATE DATABASE xtreme DEFAULT CHARACTER SET utf8mb4;

USE xtreme;

CREATE TABLE `Users` (
	`id` VARCHAR(40) NOT NULL,
    `password` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `name` VARCHAR(40) NOT NULL,
    `age` INT NOT NULL,
    -- `profileImg` VARCHAR(100),
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO `Users`(id, password, email, name, age) 
VALUES ("kahkaho", "1234", "123@123", "캏캏오", 20);

SELECT * FROM Users;

CREATE TABLE `Competition` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `compSports` VARCHAR(100) NOT NULL,
    `compName` VARCHAR(100) NOT NULL,
    `host` VARCHAR(40) NOT NULL,
    `place` VARCHAR(100) NOT NULL,
    `compDay` DATE NOT NULL,
    `registDate` VARCHAR(100) NOT NULL,
    `fee` INT,
   --  `compAge` INT,
    `compUrl` VARCHAR(100) NOT NULL,	
    `compImg` VARCHAR(100),
    -- `liked` BOOLEAN NOT NULL,
    -- `userId` VARCHAR(40) NOT NULL,
    PRIMARY KEY(`id`)
    -- FOREIGN KEY(userId) REFERENCES Users(id)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;


INSERT INTO `Competition`(id, compSports, compName, host, place, compDay, registDate, fee, compUrl, compImg) 
VALUES (0, "마라톤", "2023 대전맨몸마라톤", "(주)맥키스컴퍼니", "대전 엑스포과학공원 물빛광장", "2023-01-01 11:11", "2022-10-18 00:00 ~ 2022-12-22 24:00", 11000, "http://www.djmmrun.co.kr", ""),
(0, "마라톤", "제 19회 밀양아리랑마라톤대회", "밀양시/밀양시육상연맹", "밀양종합운동장", "2023-02-26 10:00", "2022-11-01 00:00 ~ 2023-01-17 18:00", 25000, "http://www.miryangmarathon.com", ""),
(0, "마라톤", "코리아오픈레이스", "컬처런", "뚝섬한강공원 수변광장", "2023-03-18 09:00", "2023-01-12 00:00 ~ 2023-03-03 24:00", 35000, "http://www.koreaopenrace.com", ""),
(0, "마라톤", "제 22회 합천벚꽃마라톤대회", "합천군체육회", "합천공설운동장", "2023-04-02 08:30", "2022-12-01 00:00 ~ 2023-03-07 24:00", 25000, "http://www.hcmrt.or.kr", ""),
(0, "마라톤", "제 11회 김포한강마라톤", "김포시", "김포종합운동장", "2023-04-09 09:00", "2023-02-04 00:00 ~ 2023-03-09 21:00", 30000, "http://gimporun.kr", ""),
(0, "마라톤", "제 13회 여의도 벚꽃 마라톤대회", "한국마라톤TV", "여의도 이벤트광장", "2023-04-23 09:00", "2023-01-17 00:00 ~ 2023-04-11 24:00", 40000, "http://xn--js0bk9fwvdgzcd5e88r2kcx06a.kr/", ""),
(0, "마라톤", "제 23회 5.18마라톤대회", "(재)5.18기념재단_전남매일", "광주 승촌공원 운동장", "2023-05-20 08:30", "2023-02-20 00:00 ~ 2023-04-21 24:00", 10000, "http://518run.com", ""),
(0, "마라톤", "제 18회 울릉도 전국 마라톤대회", "세계일보", "울릉문화 예술 체험장", "2023-06-11 06:00", "2023-02-06 00:00 ~ 2023-04-30 24:00", 40000, "http://ulmarathon.co.kr/", ""),
(0, "마라톤", "부산 백양산트레일", "명품트레일런", "신라대 대운동장앞", "2023-07-09 07:30", "2023-04-23 00:00 ~ 2023-07-07 11:00", 29500, "http://www.mtrailrun.kr", ""),
(0, "마라톤", "2023 청송사과 마라톤대회", "청송군, 매일신문사", "청송정원", "2023-10-15 10:00", "2023-03-19 00:00 ~ 2023-09-29 24:00", 20000, "http://www.csmarathon.co.kr", ""),
(0, "테니스", "제 2회 서울시 테니스 언더독 대회", "서울시 테니스 협회", "올림픽공원 테니스장", "2023-04-28 09:00", "2023-04-10 07:00 ~ 2023-04-27 18:00", 64000, "https://play.google.com/store/apps/details?id=com.momzit.tennistown&pli=1", ""),
(0, "테니스", "제 31회 도봉구청장배 테니스 대회", "도봉구체육회", "다락원 테니스장외 보조경기장", "2023-05-14 09:00", "2023-04-17 10:00 ~ 2023-05-10 19:00", 30000, "http://dbgta.or.kr/", ""),
(0, "테니스", "제 2회 성남시 실버 전국시니어 테니스 대회", "성남시체육회", "성남 양지시립테니스장 외 보조경기장", "2023-05-24 10:00", "2023-04-22 09:00 ~ 2023-05-20 19:00", 30000, "http://www.nsta.or.kr/", ""),
(0, "테니스", "2023 서울시 시니어 테니스 대회", "동양생명", "장충테니스장", "2023-03-25 09:00", "2023-03-09 10:00 ~ 2023-04-15 18:00", null, "https://www.myangel.co.kr/process/main", ""),
(0, "테니스", "2023 테이크핏배 전국동호인테니스대회", "(사)한국테니스발전협의회 (KATO)", "서산종합테니스코트외 보조코트", "2023-06-14 09:00", "2023-05-16 09:00 ~ 2023-06-10 13:00", 64000, "https://www.kato.kr/", ""), 
(0, "테니스", "2023년 수원시협회장배 전국 동호인 테니스대회", "수원시테니스협회", "수원만석공원외 보조경기장", "2023-06-21 09:00", "2023-05-22 08:00 ~ 2023-06-15 18:00", 50000, "https://www.kato.kr/", ""), 
(0, "테니스", "2023년도 안동오픈 테니스대회", "(사)대한테니스협회", "안동시 시민운동장 테니스코트", "2023-04-21 09:00", "2023-04-03 00:00 ~ 2023-04-14 17:00", 30000, "http://www.kortennis.co.kr/", ""), 
(0, "테니스", "제7회 설악산배 전국시니어테니스대회", "속초시테니스협회", "속초시립테니스코트 및 보조경기장", "2023-05-26 09:00", "2023-04-03 00:00 ~ 2023.05.24 24:00", 300000, "http://www.nsta.or.kr/", ""), 
(0, "테니스", "제1회 달서암꽃배 전국시니어테니스대회", "달성시니어테니스연맹", "달성스포츠파크 외 보조경기장", "2023-04-19 09:00", "2023-03-21 00:00 ~ 2023-04-14 24:00", 30000, "http://www.nsta.or.kr/", ""), 
(0, "테니스", "제37회 전국 교육대학교 교수테니스대회", "전국교육대학교 총장협의회", "청주국제테니스장", "2023-05-12 09:00", "2023-04-17 09:00 ~ 2023-04-28 18:00", 50000, "http://www.tennisgame.co.kr", ""),
(0, "사이클", "2023 위아위스와 함께하는 홍천 그란폰도", "홍천군자전거연맹", "홍천종합운동장", "2023-04-16 08:00", "2023-01-16 10:00 ~ 2023-04-01 18:00", 70000, "http://www.speedbike.kr/", ""),
(0, "사이클", "2023 전국생활체육대축전 자전거대회", "대한체육회", "영주호 오토 캠핑장", "2023-04-29 08:00", "2023-03-19 08:00 ~ 2023-04-20 13:00", 80000, "https://cycling.or.kr/", ""),
(0, "사이클", "광주MBC 2023 영산강 그란폰도", "광주MBC", "석관정나루 입구", "2023-05-27 08:00", "2023-04-15 08:00 ~ 2023-05-12 18:00", 60000, "http://speedbike.kr/speedagency/04_daesin_info.htm?num=27", ""),
(0, "사이클", "2023 무주 그란폰도, 메디오폰도 대회", "(사)전라북도자전거연맹", "예체문화관 주차장", "2023-06-10 08:00", "2023-04-10 00:00 ~ 2023-05-04 24:00", 70000, "https://www.jbcycling.or.kr/notice/?uid=666&mod=document&pageid=1", ""),
(0, "사이클", "천사의 섬, 신안 비금도 HAPPY RIDING", "1004스포츠클럽", "신안군 비금도 일대", "2023-06-03 08:00", "2023-04-11 11:00 ~ 2023-05-20 13:00", 30000, "https://www.thebike.co.kr/", ""),
(0, "사이클", "제7회 경기친환경 자전거페스티벌", "양평군자전거연맹", "양평 양강섬 일대", "2023-06-24 07:00", "2023-05-02 11:00 ~ 2023-06-02 15:00", 10000, "https://www.thebike.co.kr/", ""),
(0, "사이클", "제23회 상주시장배 전국 MTB대회", "상주시", "경천대자전거이야기존", "2023-07-02 07:00", "2023-04-04 11:00 ~ 2023-06-20 11:00", 35000, "https://www.thebike.co.kr/", ""),
(0, "사이클", "제9회 철원 DMZ PEACE 그란폰도", "철원군자전거연맹", "철원종합운동장", "2023-06-18 07:30", "2023-03-10 11:00 ~ 2023-04-10 11:00", 60000, "https://www.thebike.co.kr/", ""),
(0, "사이클", "2023 자이언트 설악그란폰도", "설악그란폰도조직위원회", "강원도 인재군 상남면", "2023-05-20 07:00", "2023-03-10 09:00 ~ 2023-04-10 11:00", 60000, "http://www.granfondo.kr/", ""),
(0, "사이클", "2023 어라운드 태백", "태백시자전거연맹", "강원도 태백시 일원", "2023-10-01 08:00", "2023-05-20 09:00 ~ 2023-06-18 11:00", 60000, "https://cycling.or.kr/", ""),
(0, "탁구", "제11회 안동하회탈배 전국오픈탁구대회", "안동시체육회", "안동체육관", "2023-06-03 09:00", "2023-04-01 15:00 ~ 2023-05-22 13:00", 20000, "http://okpingpong.co.kr/04match/04_1view.php?idx=225#", ""),
(0, "탁구", "제20회 강릉 전국가족 생활체육 탁구대회", "강릉시탁구협회", "강릉생활체육센터", "2023-07-07 09:00", "2023-05-11 15:00 ~ 2023-6-26 18:00", 20000, "http://www.iping.club/?pg=CV&m=3&id=3240 ", ""),
(0, "탁구", "제8회 이순신장군배 전국오픈탁구대회", "통영시", "통영시탁구체육관", "2023-04-22 08:30", "2023-03-17 14:20 ~ 2023-4-10 18:00", 20000, "http://www.gntta.com/web/00main/main.php", ""),
(0, "탁구", "2023 울산 전국 OPEN 탁구 대회", "울산신문사", "문수체육관", "2023-02-25 08:00", "2023-02-07 24:00 ~ 2023-2-10 18:00", 15000, "http://www.utta.co.kr/web/00main/main.php", ""),
(0, "탁구", "제8회 부안쌀 [천년의 솜씨]배 전국동호인 탁구대회", "부안군 탁구협회", "부안군 스포츠파크 실내체육관", "2023-03-11 08:30", "2023-02-25 11:00 ~ 2023-03-02 18:00", 15000, "https://www.superstar.kr/", ""),
(0, "탁구", "제15회 김제지평선배 전국탁구", "김제시협회", "김제실내체육관", "2023-11-18 09:00", "2023-10-20 20:00 ~ 2023-11-08 11:00", 15000, "http://jbtta.pingpongkorea.com/", ""),
(0, "탁구", "제30회 전주시장배", "전주시협회", "전주화산체육관", "2023-10-21 08:30", "2023-09-20 11:00 ~ 2023-10-10 16:00", 15000, "http://jjtta.pingpongkorea.com/", ""),
(0, "탁구", "제10회 완주군수배", "완주군협회", "우석대체육관", "2023-09-09 09:00", "2023-08-03 21:00 ~ 2023-08-26 12:00", 30000, "http://jbtta.pingpongkorea.com/", ""),
(0, "탁구", "제3회 임실N치즈배", "임실군협회", "임실군민체육관", "2023-10-07 08:00", "2023-09-01 10:00 ~ 2023-09-20 17:00", 15000, "http://jbtta.pingpongkorea.com/", ""), 
(0, "탁구", "2023 서울시민리그 탁구대회", "서울특별시체육회", "서초탁구장", "2023-09-09 09:00", "2023-08-03 00:00 ~ 2023-08-25 18:00", 30000, "https://sleague.or.kr/kr/sports/tabletennis.php", "");

SELECT * FROM Competition;


CREATE TABLE `review` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) NOT NULL,
    `userId` VARCHAR(40) NOT NULL,
    `sports` VARCHAR(100) NOT NULL,
    `compTitle` VARCHAR(100) NOT NULL,
    `content` TEXT NOT NULL,
	`regDate` TIMESTAMP DEFAULT NOW(),
    `viewCnt` INT DEFAULT 0,
    -- `compId` INT NOT NULL,
    PRIMARY KEY(`id`),
    -- FOREIGN KEY(compId) REFERENCES Competition(id),
    FOREIGN KEY(userId) REFERENCES Users(id)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

SELECT * FROM review;

INSERT INTO `review`(id, title, userId, sports, compTitle, content)
VALUES
(0, "제발", "kahkaho", "테니스", "제 1회 어쩌고", "돼라 좀 ㅡㅡ;"),
(0, "ㄴㅇㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㄹ", "kahkaho", "테니스", "제 144회 어쩌고", "돼라 좀 ㅡㅡ;"),
(0, "휴우우우", "kahkaho", "축구", "제 하하하 어쩌고", "ㄴㅇㄹㄴㄹㄴ "),
(0, "ㅇㄴㄹ", "kahkaho", "테니스", "제 1회 어쩌고", "돼라 좀 ㅡㅡ;"),
(0, "ㄴㅇㄹㄴㅇㄹㄴㄹㄴㅇㅇㄹㄴㄹ", "kahkaho", "탁구", "제 53 어쩌고", "돼라 좀 ㅡㅡ;"),
(0, "ㄴㅇㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㄹ", "kahkaho", "핸드볼", "제241회 어쩌고", "돼라 좀 ㅡㅡ;"),
(0, "tournalsalwkm", "kahkaho", "테니스", "제 63회 어쩌고", "돼라 좀 ㅡㅡ;"),
(0, "춘식이 귀여워", "kahkaho", "펜싱", "제 21회 어쩌고", "돼라 좀 ㅡㅡ;"),
(0, "제목입니다아아아아ㅏ", "kahkaho", "테니스", "제 19회 어쩌고", "돼라 좀 ㅡㅡ;"),
(0, "최종 플젝...얼마 안남았네..", "kahkaho", "몰?루?", "제 1회 어쩌고", "돼라 좀 ㅡㅡ;"),
(0, "ㄴㅇㄹㄴㅇㄹㄴㄹㄴㅇㄹㄴㄹ", "kahkaho", "테니스", "제 11회 어쩌고", "돼라 좀 ㅡㅡ;"),
(0, "sdfs", "kahkaho", "탁구", "제 31회 어쩌고", "돼라 좀 ㅡㅡ;");

CREATE TABLE `Participate` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `playerId` VARCHAR(40) NOT NULL,
    `teamName` VARCHAR(100) NOT NULL,
    `playerName` VARCHAR(100) NOT NULL,
    `birth` INT NOT NULL,
    `phone` VARCHAR(100) NOT NULL,
    `playerEmail` VARCHAR(100) NOT NULL,
    `check` BOOLEAN NOT NULL,
    `compId` INT NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(compId) REFERENCES Competition(id),
    FOREIGN KEY(playerId) REFERENCES Users(id)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

SELECT * FROM Participate;