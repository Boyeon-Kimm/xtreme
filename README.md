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

![Main.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e4782f9b-8ee3-49e6-acc8-a3d260d29718/Main.png)

<br>

### 📌 `로그인 화면`

![Login.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2ba3821a-18f1-47a0-8d48-b8c2689edeef/Login.png)

<br>

### 📌 `회원가입 화면`

![RegistForm.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3bc43285-0e0f-442e-a4ad-ee9cdc24ca55/RegistForm.png)

<br>

### 📌 `대회목록 화면`

![Tournament List.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0cac7aeb-2c63-4788-aef7-00d201c700e9/Tournament_List.png)

<br>

### 📌 `대회 상세 화면`

![Tournament Detail.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2372fa6c-a1cf-4284-8699-4eacb0a05ab0/Tournament_Detail.png)

<br>

<br>

## 데이터베이스 모델링

### 📌 ERD

![ERD(수정본).png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/cfb7a75c-ea09-401e-a848-4d904daf444f/ERD(%EC%88%98%EC%A0%95%EB%B3%B8).png)

<br>

### 📌 기능구조트리

![Xtreme_기능구조 트리 (수정본).png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/299a23e5-5050-4ae6-adf9-317caf213c18/Xtreme_%EA%B8%B0%EB%8A%A5%EA%B5%AC%EC%A1%B0_%ED%8A%B8%EB%A6%AC_(%EC%88%98%EC%A0%95%EB%B3%B8).png)

<br>
<br>

## 서비스 대표 기능 및 실제 구현 화면

### 📌 `홈화면`

![mainBeforeLogin.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/05fac428-e1de-403c-9bbd-56008b612eec/mainBeforeLogin.jpeg)

- 로그인 전 홈화면
- 상단 header에 menu가 뜨지 않게 구현

![mainAfterLogin.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/77b74d0e-e81e-4e5b-8a99-3b0d2481a63a/mainAfterLogin.jpeg)

- 로그인 후 홈화면
- 상단 header에 menu 및 홈화면에 menu 버튼 생성

<br>

<br>

### 📌 `로그인`

![login.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b4886bef-0e00-4a2a-bcef-386dacea1299/login.jpeg)

<br>
<br>

### 📌 `로그인 완료`

![loginComplete.jpg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/88f93799-8315-43b1-8fe2-646138c6792b/loginComplete.jpg)

- 로그인 완료 시 홈화면으로 이동

<br>

<br>

### 📌 `로그아웃`

![logout.jpg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e1705dd7-cab8-4afd-80da-c3e22281f9a6/logout.jpg)

- 로그아웃 완료 시 로그인 페이지로 이동

<br>
<br>

### 📌 `대회목록 화면`

![tournamentsList.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1ce168a4-c80c-4a39-8f14-402a1768bf15/tournamentsList.jpeg)

<br>

![tournamentsList2.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/df772679-87e7-4314-8923-c1f9885e7a5b/tournamentsList2.jpeg)

- 운동 대회 이름을 누르면 해당 대회에 대한 상세정보 확인 가능

<br>
<br>

### 📌 `대회 상세 화면`

![tournamentDetail.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/9b57c051-ef04-4f2b-bac4-926bb99f2365/tournamentDetail.jpeg)

- Participate 버튼을 누르면 참가신청 폼 화면으로 이동
- List 버튼을 누르면 기존에 보고있던 대회 목록 화면으로 이동

<br>
<br>

### 📌 `대회 참가신청 화면`

![participateCreate.jpg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/9f97927f-46c4-4258-a5b4-1d7cf6855283/participateCreate.jpg)

<br>

![participateCreate2.jpg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2dacb881-b798-4ade-a943-e42da27879d8/participateCreate2.jpg)

- 참가신청 누른 대회명은 자동으로 불러옴
- 참가자의 개인정보를 입력 후 개인정보동의까지 모두 완료해야 제출 가능하게끔 구현

<br>
<br>

### 📌 `참가신청 폼의 개인정보동의 화면`

![participateAgreement.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5595631a-06e2-44fa-9db6-070a17d36765/participateAgreement.jpeg)

- Agree 버튼을 강조하기 위해 색상을 다르게 설정

`Disagree 버튼을 누를 경우`

![participateDisagree.jpg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/44864290-3052-43d0-a310-1f4ed6cd64ef/participateDisagree.jpg)

- Agree 버튼을 눌러야 진행가능하다는 안내메세지 생성

`Agree 버튼을 누를 경우`

![participateAgree.jpg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1e03d6dc-ebf0-4456-93cb-d09532e9300b/participateAgree.jpg)

- Agree 버튼을 누를 경우 기존 대회 참가신청 폼으로 이동

<br>

### 📌 `참가신청 완료 화면`

![participateAfterCreate.jpg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/bb9ab52c-2211-43ba-a1dc-ba315322017c/participateAfterCreate.jpg)

- Update 버튼을 누르면 참가신청 수정 화면으로 이동

<br>
<br>

### 📌 `참가신청 완료 후 상세화면`

![participateDetail.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/89abbf49-cefd-4afa-9fb5-98e0e7688284/participateDetail.jpeg)

### 📌 `참가신청 수정 화면`

![participateUpdate.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ea3c41c7-9ef5-40c6-95f8-834a5961ad90/participateUpdate.jpeg)

<br>

`수정 중 화면`

![participateUpdating.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c59645e3-e260-4508-9385-3cde998f0d11/participateUpdating.jpeg)

<br>

`수정 완료 화면`

![participateUpdate.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/45241ff0-379f-4f54-a21e-bf26d38efbad/participateUpdate.jpeg)

<br>
<br>

### 📌 `대회 리뷰 목록 화면`

![reviewList.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/50f695eb-2ee3-4045-a743-3516746fb682/reviewList.jpeg)

<br>

<br>

### 📌 `대회 리뷰 상세 화면`

![reviewDetail.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a30701d3-972e-44b5-aae1-e9324c46bd72/reviewDetail.jpeg)

<br>

<br>

### 📌 `대회 리뷰 작성 화면`

`초기 작성 화면`

![reviewCreate.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/593c37cb-bd2b-469a-ada2-2a4a9fca80da/reviewCreate.jpeg)

<br>

`리뷰 작성 중인 화면`

![reviewCreating.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/68104c9f-426a-4f12-9f74-d937476559a8/reviewCreating.jpeg)

- Submit 버튼을 누르면, 작성한 리뷰 상세 화면으로 이동

<br>

<br>

### 📌 `리뷰 수정 화면`

![reviewUpdate.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ceccea85-49ce-4d78-a870-0ec36e9b120e/reviewUpdate.jpeg)

<br>

`리뷰 수정 완료 후`

![reviewUpdated.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6cbce9d9-311c-4aca-80b4-cace7ea49554/reviewUpdated.jpeg)

- Update 버튼을 누르면 리뷰 수정화면으로 이동
- Delete 버튼을 누르면 해당 리뷰 삭제

<br>

### 📌 `리뷰 삭제`

![reviewDelete.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/aebe4706-ce80-4dce-8ae4-98c23f06e0d5/reviewDelete.jpeg)

- 삭제 완료 후 리뷰 목록으로 이동

<br>
<br>

### 📌 `마이페이지`

![mypage.jpg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/9edd247a-15cb-4d7a-b103-8b520252dd31/mypage.jpg)

<br>

### 📌 `마이페이지 수정 화면`

![mypageUpdate.jpeg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0b8cdbbf-5af9-4adc-b682-877f4e57d2be/mypageUpdate.jpeg)

<br>

### 📌 `마이페이지 수정 후 화면`

![mypageUpdated.jpg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a338512c-c3da-41fc-9054-7be46b0aaee7/mypageUpdated.jpg)

- 수정 완료 시 로그아웃 되고 홈화면으로 이동
