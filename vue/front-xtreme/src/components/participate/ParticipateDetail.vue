<template>
  <div class="home">
    <form class="participate-form">
      <div class="login-form-title">
        <p>Participation Application</p>
      </div>
			<div class="participate-detail-view">
      <div class="login-form-input">
				<div class="login-form-text">
					<span>제 2회 서울시 테니스 언더독 대회</span>
        </div>
        <div class="login-form-text">
					<span>choonsik</span>
        </div>
        <div class="login-form-text">
					<span>춘식이</span>
        </div>
        <div class="login-form-text">
					<span>팀 캏캏오</span>
        </div>
        <div class="login-form-text">
					<span>210505</span>
        </div>
        <div class="login-form-text">
					<span>010-1234-5678</span>
        </div>
        <div class="login-form-text">
					<span>choonsik123@gmail.com</span>
        </div>
        <div class="login-form-btn">
          <input type="submit" value="Update" />
          <input type="button" value="Cancel" />
        </div>
      </div>
			</div>
    </form>
  </div>
</template>

<script>
export default {
  name: 'ParticipateDetail',
};
</script>

<style scoped>
  .home {
      height: 70rem;
  }

	.login-form-text {
		height: 3.5rem;
		width: 29.5rem;
		border-radius: 1rem;
		margin: 0.7rem;
		background-color: rgb(255, 255, 255, 0.65);
		padding: 0;
		border: transparent;
		font-weight: 600;
		display: flex;
		justify-content: center;
		align-items: center;
	}	

  .participate-form {
    border: 4px solid rgba(251, 119, 24, 0.7);
    border-radius: 2rem;
    height: auto;
    width: 40rem;
  }

	.participate-detail-view {
		display: flex;
		justify-content: center;
	}

</style>
