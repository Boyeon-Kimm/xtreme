<template>
  <div class="submit-page">
    <header class="header-class">
      <nav>
        <div class="nav-title">
          <router-link :to="`/`">XTREME</router-link>
        </div>
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
          <p>My Information</p>
        </div>
        <div class="login-form-input">
          <div class="my-info">
            <div class="my-info-img">
              <img src="@/assets/profile.png" alt="userImg">
            </div>
          </div>
          <div class="my-info-about">
            <div class="my-info-list">
              <span>Name:</span>
              <span>Id:</span>
              <span>Email:</span>
              <span>Age:</span>
            </div>
            <div class="my-info-textfrom">
              <div class="login-form-text">

                <input type="text" id="name" v-model="user.name" readonly/>
              </div>
              <div class="login-form-text">
                <input type="text" v-model="user.id" readonly/>
              </div>
              <div class="login-form-text">
                <input type="text" v-model="user.email" readonly />
              </div>
              <div class="login-form-text">
                <input type="text" v-model="user.age" readonly />

              </div>
            </div>
          </div>
            <div class="login-form-btn">

                <input @click.prevent="moveUpdate" type="submit" value="Update" />

              <input @click="goHome()" type="button" value="Home" />
              <input @click="$router.back()" type="button" value="Cancel" />
            </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapState } from 'vuex';

export default {
  name: "MyPage",

 
  computed: {
    ...mapState(['user']),
  },


  methods: {
    // 로그아웃
    logoutUser() {
      this.$store.dispatch("logoutUser");
      // 로그인 페이지로 이동
      this.$router.push('/login');
    },
    goHome() {
      this.$router.push("/");
    },


    moveUpdate() {
      this.$router.push({ name: "userUpdate" });
    },

  },
};
</script>

<style scoped>
.submit-page {
  height: auto;
}

.login-form {
  height: auto;
}

.my-info {
  display: flex;
  justify-content: center;
  margin-bottom: 0.8rem;
}

.my-info-about {
  display: flex;
  flex-direction: row;
  justify-content: center;
  padding: 0 3rem;
}

.my-info-list {
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  height: 16rem;
  width: 7rem;
  margin-right: 1.5rem;
  text-align: right;
  font-weight: 700;
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
  margin-top: 0.7rem;
  margin-bottom: 2.4rem;
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

.my-info-img {
  width: 10rem;
  height: 10.5rem;
}

.my-info-img > img {
  display: block;
  width: 100%;
  height: 100%;
}

</style>

