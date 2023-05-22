<template>
  <div class="home">
    <div class="login-form">
      <div class="login-form-title">
        <p>Update Review</p>
      </div>
      <div class="login-form-input">
        <div class="login-form-text">
          <input type="text" placeholder="Tournament Name" v-model="review.compTitle" />
        </div>
        <div class="login-form-text">
          <input type="text" placeholder="Title" v-model="review.title" />
        </div>
        <div class="login-form-text">
          <input type="text" v-model="review.userId" readonly />
        </div>
        <div class="login-form-text">
          <textarea placeholder="Content" v-model="review.content" />
        </div>
        <div class="login-form-btn">
          <input @click.prevent="updateReview" type="submit" value="Update"/>
          <input @click="goList" type="button" value="List"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapState } from 'vuex';

export default {
    name: 'ReviewUpdate',
    computed: {
      ...mapState(['review']),
    },
    methods: {
      updateReview() {
        let updateReview = {
          compTitle: this.review.compTitle,
          title: this.review.title,
          userId: this.review.userId,
          content: this.review.content,
        };
        this.$store.dispatch('updateReview', updateReview);
      },
      goList() {
        this.$router.push("/review");
      }
    },
};
</script>

<style scoped>
.login-form {
    height: auto;
}

.login-form-text textarea {
  height: 15rem;
  width: 29.5rem;
  border-radius: 1rem;
  margin-bottom: 0.7rem;
  background-color: white;
  opacity: 0.65;
	padding-top: 0.8rem;
  padding-left: 1rem;
  border: transparent;
  font-weight: 600;
}

.login-form-btn {
    margin-bottom: 2.6rem;
}

</style>