<template>
  <div>
    <header class="header-class">
      <nav>
        <div class="nav-title">
          <router-link :to="`/`">XTREME</router-link>
        </div>
        <!-- 로그인 했을 때 보여줄 nav menu -->
        <div class="nav-menu">
          <router-link :to="`/competition`">Tournaments</router-link>
          <router-link :to="`/review`">Reviews</router-link>
          <router-link :to="`/mypage`">MyPage</router-link>
          <a @click="logoutUser" class="logout-btn">Logout</a>
        </div>
      </nav>
    </header>
    <div class="home">
      <div class="login-form">
        <div class="sect01">
          <div class="line-box" @click.prevent="$router.back()">
            <span class="line-01"></span>
            <span class="line-02"></span>
          </div>
        </div>
        <div class="login-form-title">
          <p>Update Review</p>
        </div>
        <div class="login-form-input">
          <div class="login-form-text">
            <input
              type="text"
              placeholder="Tournament Name"
              v-model="review.compTitle"
              class="fnt-kr"
            />
          </div>
          <div class="login-form-text">
            <input
              type="text"
              placeholder="Title"
              v-model="review.title"
              class="fnt-kr"
            />
          </div>
          <div class="login-form-text">
            <input type="text" v-model="review.userId" readonly />
          </div>
          <div class="login-form-text">
            <textarea
              placeholder="Content"
              v-model="review.content"
              class="fnt-kr"
            />
          </div>
          <div class="login-form-btn">
            <input @click.prevent="updateReview" type="submit" value="Update" />
            <input
              @click.prevent="$router.back()"
              type="button"
              value="Cancel"
            />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapState } from "vuex";

export default {
  name: "ReviewUpdate",
  data(){
    return {
      compTitle: "",
      title: "",
      userId: "",
      content: "",
    };
  },

  computed: {
    ...mapState(['review']),
  },
  methods: {
    updateReview() {
      let updateReview = {
        id: this.review.id,
        compTitle: this.review.compTitle,
        title: this.review.title,
        userId: this.review.userId,
        content: this.review.content,
      };
      this.$store.dispatch("updateReview", updateReview);
      this.$router.push({ name: "reviewDetail", params: { id: this.review.id }});
    },

    // 로그아웃
    logoutUser() {
      this.$store.dispatch("logoutUser");
      // 로그인 페이지로 이동
      this.$router.push('/login');
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
  background-color: rgb(255, 255, 255, 0.65);
  padding-top: 0.8rem;
  padding-left: 1rem;
  border: transparent;
}

.login-form-btn {
  margin-bottom: 2.6rem;
}

.header-class {
  background-image: none;
}

.nav-menu {
  display: flex;
  justify-content: center;
}

.nav-menu a {
  color: white;
  margin-left: 1.3rem;
  display: flex;
  justify-content: center;
  cursor: pointer;
}

</style>
