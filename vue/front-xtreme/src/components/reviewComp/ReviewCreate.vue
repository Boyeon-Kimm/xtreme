<template>
  <div class="home">
    <div class="login-form">
      <div class="login-form-title">
        <p>Review</p>
      </div>
      <div class="login-form-input">
        <div class="login-form-text">
          <input type="text" placeholder="Sports" v-model="sports" />
        </div>
        <div class="login-form-text">
          <input type="text" placeholder="Tournament Name" v-model="compTitle" />
        </div>
        <div class="login-form-text">
          <input type="text" placeholder="Title" v-model="title" />
        </div>
        <div class="login-form-text">
          <textarea placeholder="Content" v-model="content" />
        </div>
        <div class="login-form-btn">
          <input @click.prevent="createReview" type="submit" value="Submit"/>
          <input type="button" value="Cancel"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
// import { mapGetters } from 'vuex';
export default {
  name: 'ReviewCreate',
  data() {
    return {
      sports: '',
      compTitle: '',
      title: '',
      userId: '',
      content: '',
    };
  },
  // computed: {
  //   ...mapGetters(['getUser']),
  //   userId() {
  //     return this.getUser.id;
  //   },
  // }, 
  methods: {
    createReview() {
      let review = {
        id: 0,
        sports: this.sports,
        compTitle: this.compTitle,
        title: this.title,
        userId: this.userId,
        content: this.content,
      };
      
      this.$store.dispatch('createReview', review);
      this.$router.push("/review");
      // .then(() => {
      //   router.push({ name: 'reviewList' });
      // })
      // .catch((err) => {
      //   console.log(err);
      // });
    },
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