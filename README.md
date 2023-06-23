# xtreme

## 프로젝트 개요

- 프로젝트명 : xtreme
- 프로젝트 컨셉 : 각종 운동 대회에 대한 정보를 확인하고 참가 신청할 수 있는 사이트
- 개발 기간 : 2023.05.18 ~ 2023.05.24 (7일)
- 팀원 : 김보연, 홍성민
- 사용 기술 스택 : <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"> <img src="https://img.shields.io/badge/vue.js-4FC08D?style=for-the-badge&logo=vue.js&logoColor=white">

<br>
<br>

## 팀원 정보 및 업무 분담 내역

| 이름 | 역할 | 설명 |
| --- | --- | --- |
| 김보연 | Front-end | UI 디자인 및 Vue를 활용한 SPA 구현 |
| 홍성민 | Back-end | 데이터베이스 설계 및 구축 STS를 이용하여 백엔드 구현 |

<br>
<br>

## UI 디자인 및 프로토타입

피그마를 활용하여 최종 구현 화면과 동일하게 디자인하여 프로토타입을 제작하였습니다. 실제 작업을 하면서 입력 폼의 배경색상 등 미세한 부분은 사용자 친화적인 방향으로 선택하며 진행하였습니다. (아래 이미지는 실제로 구현한 화면이 아닌 피그마로 구현한 이미지입니다.)

<br>

### 📌 `메인화면`

![Main.png](./목업/Main.png)

<br>

### 📌 `로그인 화면`

![Login.png](./목업/Login.png)

<br>

### 📌 `회원가입 화면`

![RegistForm.png](./목업/RegistForm.png)

<br>

### 📌 `대회목록 화면`

![Tournament List.png](./목업/TournamentList.png)

<br>

### 📌 `대회 상세 화면`

![Tournament Detail.png](./목업/TournamentDetail.png)

<br>

<br>

## 데이터베이스 모델링

### 📌 ERD

![ERD(수정본).png](./sql/ERD(%EC%88%98%EC%A0%95%EB%B3%B8).png)

<br>

### 📌 기능구조트리

![Xtreme_기능구조 트리 (수정본).png](./xtreme_tree.png)

<br>
<br>

## 서비스 대표 기능 및 실제 구현 화면

### 📌 `홈화면`

![mainBeforeLogin.jpeg](./실행화면/mainBeforeLogin.jpeg)

- 로그인 전 홈화면
- 상단 header에 menu가 뜨지 않게 구현

![mainAfterLogin.jpeg](./실행화면/mainAfterLogin.jpeg)

- 로그인 후 홈화면
- 상단 header에 menu 및 홈화면에 menu 버튼 생성

<br>

<br>

### 📌 `로그인`

![login.jpeg](./실행화면/login.jpeg)

<br>
<br>

### 📌 `로그인 완료`

![loginComplete.jpg](./실행화면/loginComplete.jpg)

- 로그인 완료 시 홈화면으로 이동

<br>

<br>

### 📌 `로그아웃`

![logout.jpg](./실행화면/logout.jpg)

- 로그아웃 완료 시 로그인 페이지로 이동

<br>
<br>

### 📌 `대회목록 화면`

![tournamentsList.jpeg](./실행화면/tournamentsList.jpeg)

<br>

![tournamentsList2.jpeg](./실행화면/tournamentsList2.jpeg)

- 운동 대회 이름을 누르면 해당 대회에 대한 상세정보 확인 가능

<br>
<br>

### 📌 `대회 상세 화면`

![tournamentDetail.jpeg](./실행화면/tournamentDetail.jpeg)

- Participate 버튼을 누르면 참가신청 폼 화면으로 이동
- List 버튼을 누르면 기존에 보고있던 대회 목록 화면으로 이동

<br>
<br>

### 📌 `대회 참가신청 화면`

![participateCreate.jpg](./실행화면/participateCreate.jpg)

<br>

![participateCreate2.jpg](./실행화면/participateCreate2.jpg)

- 참가신청 누른 대회명은 자동으로 불러옴
- 참가신청 폼을 모두 입력해야 제출 가능하게끔 구현

<br>
<br>

### 📌 `참가신청 폼의 개인정보동의 화면`

![participateAgreement.jpeg](./실행화면/participateAgreement.jpeg)

- Agree 버튼을 강조하기 위해 색상을 다르게 설정

`Disagree 버튼을 누를 경우`

![participateDisagree.jpg](./실행화면/participateDisagree.jpg)

- Agree 버튼을 눌러야 진행가능하다는 안내메세지 생성

`Agree 버튼을 누를 경우`

![participateAgree.jpg](./실행화면/participateAgree.jpg)

- Agree 버튼을 누를 경우 기존 대회 참가신청 폼으로 이동

<br>

### 📌 `참가신청 완료 화면`

![participateAfterCreate.jpg](./실행화면/participateAfterCreate.jpg)

- Update 버튼을 누르면 참가신청 수정 화면으로 이동

<br>
<br>

### 📌 `참가신청 완료 후 상세화면`

![participateDetail.jpeg](./실행화면/participateDetail.jpeg)

### 📌 `참가신청 수정 화면`

![participateUpdate.jpeg](./실행화면/participateUpdate.jpeg)

<br>

`수정 중 화면`

![participateUpdating.jpeg](./실행화면/participateUpdating.jpeg)

<br>

`수정 완료 화면`

![participateUpdate.jpeg](./실행화면/participateUpdate.jpeg)

<br>
<br>

### 📌 `대회 리뷰 목록 화면`

![reviewList.jpeg](./실행화면/reviewList.jpeg)

<br>

<br>

### 📌 `대회 리뷰 상세 화면`

![reviewDetail.jpeg](./실행화면/reviewDetail.jpeg)

<br>

<br>

### 📌 `대회 리뷰 작성 화면`

`초기 작성 화면`

![reviewCreate.jpeg](./실행화면/reviewCreate.jpeg)

<br>

`리뷰 작성 중인 화면`

![reviewCreating.jpeg](./실행화면/reviewCreating.jpeg)

- Submit 버튼을 누르면, 작성한 리뷰 상세 화면으로 이동

<br>

<br>

### 📌 `리뷰 수정 화면`

![reviewUpdate.jpeg](./실행화면/reviewUpdate.jpeg)

<br>

`리뷰 수정 완료 후`

![reviewUpdated.jpeg](./실행화면/reviewUpdated.jpeg)

- Update 버튼을 누르면 리뷰 수정화면으로 이동
- Delete 버튼을 누르면 해당 리뷰 삭제

<br>

### 📌 `리뷰 삭제`

![reviewDelete.jpeg](./실행화면/reviewDelete.jpeg)

- 삭제 완료 후 리뷰 목록으로 이동

<br>
<br>

### 📌 `마이페이지`

![mypage.jpg](./실행화면/mypage.jpg)

<br>

### 📌 `마이페이지 수정 화면`

![mypageUpdate.jpeg](./실행화면/mypageUpdate.jpeg)

<br>

### 📌 `마이페이지 수정 후 화면`

![mypageUpdated.jpg](./실행화면/mypageUpdated.jpg)

- 수정 완료 시 로그아웃 되고 홈화면으로 이동
