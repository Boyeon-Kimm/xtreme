<template>
  <header class="header-class">
    <nav>
      <div class="nav-title">
        <router-link to="/">XTREME</router-link>
      </div>
      <div class="nav-menu" v-if="isUserLogin">
        <router-link :to="{ name: 'competitionList' }">Tournaments</router-link>
        <router-link :to="{ name: 'reviewList' }">Reviews</router-link>
        <router-link :to="{ name: 'joinus' }">Join Us</router-link>
        <router-link :to="{ name: 'myPage' }">MyPage</router-link>
        <b-button @click="logoutUser" class="nav-b-btn" id="nav-b-btn1">Log out</b-button>
      </div>
      <div class="nav-btn" v-else>
        <b-button class="nav-b-btn" id="nav-b-btn1"><router-link :to="{ name: 'login' }">Sign in</router-link></b-button>
        <b-button class="nav-b-btn" id="nav-b-btn2"><router-link :to="{ name: 'joinus' }">Join us</router-link></b-button>
      </div>
    </nav>
  </header>
</template>

<script>
export default {
  name: 'HeaderNav2',
  computed: {
    // 로그인 유무 확인
    isUserLogin() {
      return this.$store.getters.isLogin;
    },
  },
  methods: {
    // 로그아웃
    logoutUser() {
      this.$store.commit('clearUsername');
      alert("Logout Completed");
      // 로그인 페이지로 이동
      this.$store.push('/login');
    }
  }
};
</script>

<style scoped>
.header-class {
  background-image: url(@/assets/main1.png);
  background-size: cover;
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
  }
</style>