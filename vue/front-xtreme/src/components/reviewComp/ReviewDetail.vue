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
          <div class="line-box" @click.prevent="goList()">
            <span class="line-01"></span>
            <span class="line-02"></span>
          </div>
        </div>
        <div class="login-form-title">
          <p>Tournament Review</p>
        </div>
        <div class="review-form">
          <div class="review-form-title">
            <p>Sports:</p>
            <p>Tournament Name:</p>
            <p>Title:</p>
            <p>Writer:</p>
            <p>Content:</p>
          </div>
          <div class="review-form-content">
            <div class="login-form-input">
              <div class="login-form-text">
                <span class="fnt-kr">{{ review.sports }}</span>
              </div>
              <div class="login-form-text">
                <span class="fnt-kr">{{ review.compTitle }}</span>
              </div>
              <div class="login-form-text">
                <span class="fnt-kr">{{ review.title }}</span>
              </div>
              <div class="login-form-text">
                <span>{{ review.userId }}</span>
              </div>
              <div class="login-form-textarea">
                <span class="fnt-kr">{{ review.content }}</span>
              </div>
            </div>
          </div>
        </div>
        <div class="write-review">
          <button @click="moveUpdate" class="write-review-btn">Update</button>
          <button @click="deleteReview" class="write-review-btn">Delete</button>
          <!-- <button @click="$router.back()" class="write-review-btn">
            Cancel
          </button> -->
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapState } from "vuex";

export default {
  name: "ReviewDetail",
  computed: {
    ...mapState(["review"]),
  },

  created() {
    const pathName = new URL(document.location).pathname.split("/");
    const id = pathName[pathName.length - 1];
    this.$store.dispatch("getReview", id);
  },

  methods: {
    moveUpdate() {
      this.$router.push({ name: "reviewUpdate" });
    },

    deleteReview() {
      this.$store.dispatch("deleteReview", this.review.id);
    },

    // 로그아웃
    logoutUser() {
      this.$store.dispatch("logoutUser");
      // 로그인 페이지로 이동
      this.$router.push('/login');
    },

    goList() {
      this.$router.push("/review");
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
  color: #3D1D06;
  font-weight: 700;
  text-align: right;
  margin-right: 1rem;
}

.login-form-text > span {
  margin-left: 1rem;
    color: #3D1D06;
}

.login-form-textarea {
  height: 15rem;
  width: 34rem;
  border-radius: 0.3rem;
  margin-bottom: 0.5rem;
  padding: 0.7rem 1rem;
  background-color: rgb(255, 255, 255, 0.65);
  border: transparent;
  text-align: left;
}

.login-form-textarea > span {
  word-wrap: break-word;
    color: #3D1D06;
}

.write-review {
  display: flex;
  justify-content: center;
  margin-right: 0;
}

.write-review-btn {
  background-color: rgba(251, 119, 24);
  color: white;
  font-weight: 700;
  border: transparent;
  height: 3.3rem;
  width: 10rem;
  border-radius: 1rem;
  margin: 0.5rem;
}

button:hover {
  background-color: transparent;
  transition: 0.7s;
  color: black;
  font-weight: 800;
  text-shadow: -1px 0 #fb7718, 0 1px #fb7718, 1px 0 #fb7718, 0 -1px #fb7718;
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

.sect01 {
  margin: 0.5rem 0 0 45rem !important; 
}
</style>
