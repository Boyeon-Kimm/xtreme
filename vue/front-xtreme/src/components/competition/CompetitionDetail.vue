<template>
  <div class="compList-main">
    <div class="login-form">
      <div class="compList-title">
        <h3>제11회 안동하회탈배 전국오픈탁구대회</h3>
        <hr />
      </div>
      <div class="compDetail-content">
        <div class="compDetail-img">
          <img src="@/assets/tennis.jpg" alt="tennis" />
        </div>
        <div class="compDetail">
          <div class="compDetail-text">
            <div class="compDetail-text-title">
              <p>Sports:</p>
              <p>Host:</p>
              <p>Place:</p>
              <p>Date:</p>
              <p>Registration Period:</p>
              <p>Fee:</p>
              <p>URL:</p>
            </div>
            <div class="compDetail-text-cont">
              <p>테니스</p>
              <p>동양생명</p>
              <p>장충테니스장</p>
              <p>2023-03-25 09:00</p>
              <p>2023-03-09 10:00 ~ 2023-04-15 18:00</p>
              <p>15,000원</p>
              <p>https://www.myangel.co.kr/process/main</p>
            </div>
          </div>
					<div class="compDetail-btn">
          	<button>Participate</button>
          	<button>List</button>
        	</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "CompetitionDetail",
};
</script>

<style scoped>
.compList-main {
  display: flex;
  justify-content: center;
  align-items: center;
}

.login-form {
  height: 40rem;
  width: 70rem;
}

.compList-title {
  padding-top: 2rem;
  display: inline-block;
}

.compList-title > hr {
  border-color: gray;
}

.compDetail {
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	width: 100%;
}

.compDetail-content {
  height: 30rem;
  margin: 0 4rem;
  display: flex;
  direction: row;
  justify-content: center;
}

.compDetail-img img {
  height: 28rem;
  width: 23rem;
  align-items: center;
}

.compDetail-text {
  display: flex;
  justify-content: space-around;
  align-items: center;
	height: auto;
	width: 100%;
	color: rgb(205, 205, 205);
	font-size: 1.1rem;
}

.compDetail-text-title p {
	align-items: center;
	font-weight: 700;
	/* text-align: center; */
}

.compDetail-btn {
	margin-top: 1rem;
	text-align: center;
}

button {
  background-color: #fb7718;
  color: white;
  font-weight: 600;
  border: transparent;
  height: 2.5rem;
  width: 7rem;
  margin-right: 0.5rem;
  border-radius: 0.5rem;
}
</style>
