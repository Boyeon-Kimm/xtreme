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
VALUES 
("kahkaho", "1234", "123@123", "캏캏오", 20),
("choonsik", "1234", "choonsik@naver.com", "춘식이", 2),
("boyeon", "1234", "kkbbyy1113@gmail.com", "김보연", 29),
("sungmin", "1234", "moris8470@gmail.com", "홍성민", 27);

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
VALUES (0, "마라톤", "2023 대전맨몸마라톤", "(주)맥키스컴퍼니", "대전 엑스포과학공원 물빛광장", "2023-01-01 11:11", "2022-10-18 11:35 ~ 2022-12-22 24:00", 11000, "http://www.djmmrun.co.kr", ""),
(0, "마라톤", "제 19회 밀양아리랑마라톤대회", "밀양시/밀양시육상연맹", "밀양종합운동장", "2023-02-26 10:00", "2022-11-01 20:00 ~ 2023-01-17", 25000, "http://www.miryangmarathon.com", ""),
(0, "마라톤", "코리아오픈레이스", "컬처런", "뚝섬한강공원 수변광장", "2023-03-18 09:00", "2023-01-12 00:00 ~ 2023-03-03 24:00", 35000, "http://www.koreaopenrace.com", ""),
(0, "마라톤", "제 22회 합천벚꽃마라톤대회", "합천군체육회", "합천공설운동장", "2023-04-02 08:30", "2022-12-01 09:20 ~ 2023-03-07 24:00", 25000, "http://www.hcmrt.or.kr", ""),
(0, "마라톤", "제 11회 김포한강마라톤", "김포시", "김포종합운동장", "2023-04-09 09:00", "2023-02-04 09:00 ~ 2023-03-09 18:30", 30000, "http://gimporun.kr", ""),
(0, "마라톤", "제 13회 여의도 벚꽃 마라톤대회", "한국마라톤TV", "여의도 이벤트광장", "2023-04-23 09:00", "2023-01-17 08:00 ~ 2023-04-11 24:00", 40000, "http://xn--js0bk9fwvdgzcd5e88r2kcx06a.kr/", ""),
(0, "마라톤", "제 23회 5.18마라톤대회", "(재)5.18기념재단_전남매일", "광주 승촌공원 운동장", "2023-05-20 08:30", "2023-02-20 18:11 ~ 2023-04-21 24:00", 10000, "http://518run.com", ""),
(0, "마라톤", "제 18회 울릉도 전국 마라톤대회", "세계일보", "울릉문화 예술 체험장", "2023-06-11 06:00", "2023-02-06 10:00 ~ 2023-04-30 24:00", 40000, "http://ulmarathon.co.kr/", ""),
(0, "마라톤", "부산 백양산트레일", "명품트레일런", "신라대 대운동장앞", "2023-07-09 07:30", "2023-04-23 08:30 ~ 2023-07-07 10:00", 29500, "http://www.mtrailrun.kr", ""),
(0, "마라톤", "2023 청송사과 마라톤대회", "청송군, 매일신문사", "청송정원", "2023-10-15 10:00", "2023-03-19 10:00 ~ 2023-09-29 24:00", 20000, "http://www.csmarathon.co.kr", ""),
(0, "테니스", "제 2회 서울시 테니스 언더독 대회", "서울시 테니스 협회", "올림픽공원 테니스장", "2023-04-28 09:00", "2023-04-10 07:00 ~ 2023-04-27 18:00", 64000, "https://play.google.com/store/apps/details?id=com.momzit.tennistown&pli=1", ""),
(0, "테니스", "제 31회 도봉구청장배 테니스 대회", "도봉구체육회", "다락원 테니스장외 보조경기장", "2023-05-14 09:00", "2023-04-17 10:00 ~ 2023-05-10 19:00", 30000, "http://dbgta.or.kr/", ""),
(0, "테니스", "제 2회 성남시 실버 전국시니어 테니스 대회", "성남시체육회", "성남 양지시립테니스장 외 보조경기장", "2023-05-24 10:00", "2023-04-22 09:00 ~ 2023-05-20 19:00", 30000, "http://www.nsta.or.kr/", ""),
(0, "테니스", "2023 서울시 시니어 테니스 대회", "동양생명", "장충테니스장", "2023-03-25 09:00", "2023-03-09 10:00 ~ 2023-04-15 18:00", null, "https://www.myangel.co.kr/process/main", ""),
(0, "테니스", "2023 테이크핏배 전국동호인테니스대회", "(사)한국테니스발전협의회 (KATO)", "서산종합테니스코트외 보조코트", "2023-06-14 09:00", "2023-05-16 09:00 ~ 2023-06-10 13:00", 64000, "https://www.kato.kr/", ""), 
(0, "테니스", "2023년 수원시협회장배 전국 동호인 테니스대회", "수원시테니스협회", "수원만석공원외 보조경기장", "2023-06-21 09:00", "2023-05-22 08:00 ~ 2023-06-15 18:00", 50000, "https://www.kato.kr/", ""), 
(0, "테니스", "2023년도 안동오픈 테니스대회", "(사)대한테니스협회", "안동시 시민운동장 테니스코트", "2023-04-21 09:00", "2023-04-03 14:20 ~ 2023-04-14 17:00", 30000, "http://www.kortennis.co.kr/", ""), 
(0, "테니스", "제7회 설악산배 전국시니어테니스대회", "속초시테니스협회", "속초시립테니스코트 및 보조경기장", "2023-05-26 09:00", "2023-04-03 18:20 ~ 2023.05.24 24:00", 300000, "http://www.nsta.or.kr/", ""), 
(0, "테니스", "제1회 달서암꽃배 전국시니어테니스대회", "달성시니어테니스연맹", "달성스포츠파크 외 보조경기장", "2023-04-19 09:00", "2023-03-21 11:00 ~ 2023-04-14 24:00", 30000, "http://www.nsta.or.kr/", ""), 
(0, "테니스", "제37회 전국 교육대학교 교수테니스대회", "전국교육대학교 총장협의회", "청주국제테니스장", "2023-05-12 09:00", "2023-04-17 09:00 ~ 2023-04-28 18:00", 50000, "http://www.tennisgame.co.kr", ""),
(0, "사이클", "2023 위아위스와 함께하는 홍천 그란폰도", "홍천군자전거연맹", "홍천종합운동장", "2023-04-16 08:00", "2023-01-16 10:00 ~ 2023-04-01 18:00", 70000, "http://www.speedbike.kr/", ""),
(0, "사이클", "2023 전국생활체육대축전 자전거대회", "대한체육회", "영주호 오토 캠핑장", "2023-04-29 08:00", "2023-03-19 08:00 ~ 2023-04-20 13:00", 80000, "https://cycling.or.kr/", ""),
(0, "사이클", "광주MBC 2023 영산강 그란폰도", "광주MBC", "석관정나루 입구", "2023-05-27 08:00", "2023-04-15 08:00 ~ 2023-05-12 18:00", 60000, "http://speedbike.kr/speedagency/04_daesin_info.htm?num=27", ""),
(0, "사이클", "2023 무주 그란폰도, 메디오폰도 대회", "(사)전라북도자전거연맹", "예체문화관 주차장", "2023-06-10 08:00", "2023-04-10 19:00 ~ 2023-05-04 24:00", 70000, "https://www.jbcycling.or.kr/notice/?uid=666&mod=document&pageid=1", ""),
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
(0, "탁구", "2023 서울시민리그 탁구대회", "서울특별시체육회", "서초탁구장", "2023-09-09 09:00", "2023-08-03 12:00 ~ 2023-08-25 18:00", 30000, "https://sleague.or.kr/kr/sports/tabletennis.php", "");

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
    PRIMARY KEY(`id`)
    -- FOREIGN KEY(compId) REFERENCES Competition(id),
    -- FOREIGN KEY(userId) REFERENCES Users(id)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO `review`(id, title, userId, sports, compTitle, content)
VALUES
(0, "올해도 참가한 춘천마라톤 후기", "G.Hong", "마라톤", "2021 VIRTUAL 춘천마라톤", "춘천 마라톤은 홈페이지에 기록을 올리는 것으로 인증을 합니다.<br>사실 인증을 한다고해서 추가로 주어지는 기념품은 없습니다. "),
(0, "테린이 테니스 대회 후기:: 반포테니스장", "숴니", "테니스", "제 1회 강남서초 테린이 테니스 대회", "후기를 간단히 남기자면 역시 2년차까지 모이는 대회다보니 7개월인 나는 쪼랩이었다...^^ <br>난 게임을 안해본 티가 좀 난다했다. 요령이 없다고!? <br>사실 난 자세가 망가질까봐 게임보다는 랠리를 즐겼는데..."),
(0, "2019 아레나 코리아 마스터즈 수영대회 참가 후기", "yangjae333", "수영", "2019 ARENA KOREA MASTERS", "수영 잘하고 싶은데 연습할 부분이 너무나 많은듯!!<br>그래도 정말 재미있다~!! "),
(0, "안양 장거리 수영대회 첫 참가 후기(1.5K)", "gyeong", "수영", "안양시철인3종협회장배 전국 장거리 수영대회", "일단 기회를 만들어 몸을 움직이면 새로운 세상을 접할 수 있다는 생각을 했다. <br>혼돈의 카오스였던 3월을 마치고 개운한 맘으로 시작하는 4월의 시작이 참 기분좋았다.<br>내년에도 또 나갈 것 같다 :)"),
(0, "고창 군수배 탁구대회 출전 후기", "마노짱", "탁구", "제10회 고창군수배(모양성배)전국 탁구대회", "이번 대회는 한 번쯤 롱러버 선수를 만나길 기대했으나 만나지못하였고 민러버 사용자를 연속해서 만났으나 실력 부족으로 참패하고 말았다...<br>오늘도 탁구 실력이 늘지 않아 고민중인 몸치 마노짱이었습니다."),
(0, "2021 음성 사이클 대회 후기", "jibum", "사이클", "2021 음성 전국사이클대회", "0.6초 차이로 메달을 놓쳤지만 아쉬움이 안 든다고 하면 거짓말이겠죠..<br>하지만 서로 간의 가능성을 보여줬기에 매우 만족했던 시합이었네요"),
(0, "2023.0520.토.KTA대전 한꿈이배.전국동호인테니스대회.참석후기", "라퓨타", "테니스", "제 5회 대전 한꿈이배 전국동호인테니스대회", "의외로 강팀을 예선에서 이겨버렸다 ㅋ 근데 어이없게 약팀에게는 져버립 ㅡㅡ<br>평생 버킷리스트를 손쉽게 달성해서 허탈한 마음에~ 본선 해볼만한 상대에게 지고 광속 탈락 ㅋㅋㅋ"),
(0, "마라톤 풀코스 혼자 달리기", "maramara", "마라톤", "2020 VIRTUAL 춘천마라톤", "이 대회는 11/17 ~ 11/26 10일간 누적거리로 42키로를 달리는 방식으로 진행이 되었습니다.<br>이미 직전에 42km를 달린 터라 무릎과 발바닥의 피로를 신경쓰느라 빠르게 뛰지는 않았습니다. <br>어차피 누적방식이라 기록이 크게 의미는 없습니다. <br>춘천마라톤은 메달 디자인이 인상적이었는데, 이번에도 어떨지 기대가 됩니다."),
(0, "제 29회 서초구청장기 테니스 대회 참가 후기", "rainyday", "테니스", "제 29회 서초구정장기 테니스대회", "경기는 예선전에서는 3개 팀 중에서 월등히 1위를 하여 본선에 진출하였지만 본선 1회전에서 그리 강한 팀은 아니었는데 오더에서 우리가 불리한 오더를 내면서 2 대 1로 지고 말았다. 1 대 1에서 3번 조로 출전한 팀이 충분히 이길 수 있는 실력이었는데 대회 참가 경험이 부족하고 긴장을 많이 한 나머지 제 실력을 발휘하지 못해 아쉽게 본선 1회전 탈락의 아픔을 맛보아야 했다."),
(0, "1.5km 장거리 수영대회 참가 후기🏊🏻‍♀️", "seoulLightBear", "수영", "2023 철인3종 장거리 수영대회", "너무 너무 즐거웠던 생에 첫 장거리 수영대회!! 다음에 또 이런 기회가 있으면 또 참여해야지🤍"),
(0, "김해 산악자전거대회 후기", "끌바고수", "사이클", "제 2회 김해시장배 전국산악자전거대회", "느리게 들어왔음에도 불구하고 대회라는 압박감에, 쉬엄쉬엄 못타서 힘들었습니다<br>다들 다운힐 엄청 빨리 잘하시고 나만 엄청느림... 기술을 좀 배워야하나...<br>낙엽하고 돌모래, 많은데 미끄러질까봐 무서운데 다른분들은 그냥 막달리시네요.."),
(0, "여의도 벚꽃 마라톤대회 후기 / 인생 최초 마라톤", "김쩡", "마라톤", "제 13회 여의도 벚꽃 마라톤대회", "56:25에 완주!!<br>1시간 안에 들어왔다는 것에 정말 너무 만족한다.<br>ㅋㅋㅋㅋ연습하면서도 10km는 처음 뛴건데, 첫 기록이자, 내 기준 신기록이다.<br>다같이 뛰니까 괜히 뿌듯한 마음이 컸다."),
(0, "20220807 첫 탁구대회 후기", "gold", "탁구", "제 3회 세종문화신문사배 세종시동호회연합 탁구대회", "다음 대회를 준비한다면,<br>1.경기전 몸풀기 필수<br>2.시합구로 연습할것.<br>3.대회복(유니폼)은 2벌 이상이 좋을것 같다.<br>4.중간중간 에너지보충<br>가장 중요한건...실력을 키우는 것.<br>평소처럼 안되는 것도 결국은 연습부족이다"),
(0, "4월 제21회 울산커플마라톤대회 5km 구간 참가 후기", "sweetsalt", "마라톤", "제 21회 울산 커플 마라톤대회", "전날 미세먼지가 너무 심해서 오늘도 그러면 어쩌지 걱정했는데 다행히 날씨가 좋아져서 가벼운 마음으로 마라톤 할 수 있었어요. 재밌었습니다"),
(0, "2023년 첫대회~~!", "장기영", "탁구", "제 21회 충청남도지사기 생활체육 탁구대회", "단체전은 예선탈락, 개인전은 16강으로 마쳤다.<br>참여부수는 가장 낮은 8부였지만 현실적으로 중간 이상 참가자들이 6부 수준이였던 도대회였기에 찐8부로서 참가한 전보다 성장한 것 같아 후회가 남지 않았다."),
(0, "23아시아태평양마스터즈수영대회. 후기", "무사 강의신", "수영", "2023 전북 아시아태평양 마스터스대회", "19년 월마때는 아버지의 병안으로 접50 자50만 급하게 하고 끝냈던 설움을 드디어 풀었습니다.<br>개인전<br>자50, 접50, 배50, 자100, 자200 5경기<br>단체전 3경기 자50, 자50, 접50 총8경기<br>빡시게 해봤네요"),
(0, "2023년 제3회 수원시체육회장배 수영대회 참여 계기 및 후기", "옐", "수영", "제3회 수원시 체육회장배 수영대회", "오늘 하루가 너무값지고 행복하다. 그리고 팀원 한 분 한 분 다치지 않아 다행이다.<br>이제는 딱 한달 남은 46km 울릉도 일주 수영 일정 관련하여 좀 더 집중을 해보려 한다.<br>나의 새로운 도전은 계속된다.");
SELECT * FROM review;

CREATE TABLE `Participate` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `playerId` VARCHAR(40) NOT NULL,
    `teamName` VARCHAR(100) NOT NULL,
    `playerName` VARCHAR(100) NOT NULL,
    `birth` INT NOT NULL,
    `phone` VARCHAR(100) NOT NULL,
    `playerEmail` VARCHAR(100) NOT NULL,
    `check` BOOLEAN,
    `compId` INT NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(compId) REFERENCES Competition(id)
    -- FOREIGN KEY(playerId) REFERENCES Users(id)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO `Participate`(id, playerId, playerName, teamName, birth, phone, playerEmail, compId)
VALUES
(0, "choonsik", "춘식이", "카카오프렌즈", 201031, "010-0000-0000", "choonsik@naver.com", 1),
(0, "boyeon", "김보연", "Team Kahkaho", 951113, "010-1111-1111", "kkbbyy1113@gmail.com", 1),
(0, "sungmin", "홍성민", "Team Kahkaho", 970826, "010-1234-5678", "moris8470@gmail.com", 1);

SELECT * FROM Participate;