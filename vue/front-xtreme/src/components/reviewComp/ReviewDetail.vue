<template>
  <div class="home">
    <div class="login-form">
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
					    <span>{{ review.sports }}</span>
            </div>
            <div class="login-form-text">
              <span>{{ review.compTitle }}</span>
            </div>
            <div class="login-form-text">
              <span>{{ review.title }}</span>
            </div>
            <div class="login-form-text">
              <span>{{ review.userId }}</span>
            </div>
            <div class="login-form-textarea">
              <span>{{ review.content }}</span>
            </div>
          </div>
				</div>
			</div>
      <div class="write-review">
        <button @click="moveUpdate" class="write-review-btn">Update</button>
        <button @click="deleteReview" class="write-review-btn">Delete</button>
      </div>
    </div>
  </div>
</template>

<script>
import { mapState } from 'vuex';

export default {
    name: 'ReviewDetail',
    computed: {
      ...mapState(['review']),
    },

    created() {
      const pathName = new URL(document.location).pathname.split('/');
      const id = pathName[pathName.length - 1];
      this.$store.dispatch('getReview', id);
    },

    methods: {
      moveUpdate() {
        this.$router.push({ name: 'reviewUpdate'});
      },

      deleteReview() {
        this.$store.dispatch('deleteReview', this.review.id);
      },
    },
};
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