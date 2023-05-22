<template>
  <div class="home">
    <div @submit.prevent="submitForm" class="login-form">
      <div class="login-form-title">
        <p>Tournament Review</p>
      </div>
      <div class="review-form">
				<div class="review-form-title">
					<p>Sports: </p>
					<p>Tournament Name: </p>
					<p>Title: </p>
					<p>Writer: </p>
					<p>Content: </p>
				</div>
				<div class="review-form-content">
					<div class="login-form-input">
            <div class="login-form-text">
					    <span>테니스</span>
            </div>
            <div class="login-form-text">
              <span>제 2회 서울시 테니스 언더독 대회</span>
            </div>
            <div class="login-form-text">
              <span>첫 대회 후기!!!🥎</span>
            </div>
            <div class="login-form-text">
              <span>춘식이</span>
            </div>
            <div class="login-form-textarea">
              <span>sdfsdsdfdsfsdfsdfsdfdssdfsdfdsfsfsdfsdfsdfsdsdfsgsdgdfdsfglrsdanhgkjdfkvbadjfbvkajfsbvkdabkvjsnkjnfvkjasnbkfjbdfsdfsdfsdfsdfsdfsdfsdfsdfsdsfsdfssfsdfsfsf</span>
            </div>
          </div>
				</div>
			</div>
      <div class="write-review">
        <button class="write-review-btn">Write Review</button>
        <button class="write-review-btn">Review List</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
    name: 'ReviewDetail',
}
</script>

<style scoped>
.review-form {
	display: flex;
	flex-direction: row;
	justify-content: center;
  padding: 0 1.5rem 0.7rem 1.5rem;
}

.login-form {
    height: auto;
    width: 50rem;
}

.login-form-text {
	height: 2rem;
  width: 34rem;
	border-radius: 0.3rem;
  margin-bottom: 0.4rem;
  background-color: rgb(255, 255, 255, 0.65);
  text-align: left;
  align-items: center;
  display: flex;
  justify-content: left;
}

.review-form-title {
  width: 10rem;
  color: rgb(207, 207, 207);
  font-weight: 700;
  text-align: right;
  margin-right: 1rem;
}

.login-form-text > span {
  margin-left: 1rem;
}

.login-form-textarea {
  height: 15rem;
  width: 34rem;
	border-radius: 0.3rem;
  margin-bottom: 0.5rem;
  padding: 0.7rem 1rem;
  background-color: white;
  opacity: 0.65;
  border: transparent;
  font-weight: 600;
  text-align: left;
}

.login-form-textarea > span {
  word-wrap: break-word;
}

.write-review {
  display: flex;
  justify-content: center;
  margin-right: 0;
}

.write-review-btn {
  background-color: rgba(251, 119, 24, 0.7);
  color: white;
  font-weight: 700;
  border: transparent;
  height: 3.3rem;
  width: 10rem;
  border-radius: 1rem;
  margin: 0.5rem;
}

</style>