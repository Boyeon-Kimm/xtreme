<template>
<div>
  <header class="header-class" style="background-image: none;">
    <nav>
      <div class="nav-title">
        <router-link to="/">XTREME</router-link>
      </div>
			<!-- 로그인 안했을 때 -->
      <!-- <div v-if="!isLoggedIn">
      <div class="nav-btn">
        <b-button class="nav-b-btn" id="nav-b-btn1"><router-link :to="{ name: 'login' }">Sign in</router-link></b-button>
        <b-button class="nav-b-btn" id="nav-b-btn2"><router-link :to="{ name: 'joinus' }">Join us</router-link></b-button>
      </div>
    </div> -->
    <div v-if="isLoggedIn">
      <div class="nav-menu">
        <router-link :to="{ name: 'competitionList' }">Tournaments</router-link>
        <router-link :to="{ name: 'reviewList' }">Reviews</router-link>
        <router-link :to="{ name: 'myPage' }">MyPage</router-link>
        <a @click="logoutUser" class="logout-btn">Logout</a>
      </div>
    </div>
    </nav>
  </header>
  <div class="home">
    <div class="home-content">
      <div class="sub-describe">
        <p>Explore the Excitement of</p>
        <p>Sports Tournaments</p>
      </div>
      <div class="home-btn" v-if="isLoggedIn">
        <b-button class="nav-b-btn3"><router-link :to="{ name: 'competitionList' }">Tournaments</router-link></b-button>
        <b-button class="nav-b-btn3"><router-link :to="{ name: 'reviewList' }">Reviews</router-link></b-button>
        <b-button class="nav-b-btn3"><router-link :to="{ name: 'myPage' }">MyPage</router-link></b-button>
        <b-button class="nav-b-btn3" @click="logoutUser">Logout</b-button>
      </div>
      <div class="home-btn2" v-else>
        <b-button class="nav-b-btn3" style="margin-right: 2rem;"><router-link :to="{ name: 'login' }">Sign in</router-link></b-button>
        <b-button class="nav-b-btn3"><router-link :to="{ name: 'joinus' }">Join us</router-link></b-button>
      </div>
    </div>
  </div>
</div>
</template>

<script>
import { mapState, mapActions } from 'vuex';

export default {
  name: "HomeView",
  computed: {
    ...mapState(['isLoggedIn'])
  },
  created() {
    this.checkLoginStatus();
  },
  methods: {
    ...mapActions(['checkLoginStatus', 'logoutUser']),
  }
};
</script>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Red+Hat+Display:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900family=IBM+Plex+Sans+KR:wght@200;300;400;500&display=swap');

* {
  font-family: 'Red Hat Display', sans-serif;
}

.fnt-title {
  font-family: 'Bree Serif', serif;
  color: #3D1D06;
}

.home {
  height: auto;
  min-height: 55rem;
  background: url(@/assets/main1.png) no-repeat center center fixed;
  -webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
  display: flex;
  direction: column;
  justify-content: center;
  align-items: center;
  padding-top: 9rem;
  padding-bottom: 8rem;
}

.home-btn {
  display: flex;
  justify-content: space-around;
  margin-top: 3.5rem;
  width: 52rem;
}

.home-btn2 {
  display: flex;
  justify-content: center;
  margin-top: 3.5rem;
}

.nav-b-btn3 {
  width: 9.5rem !important;
  height: 3rem;
  border-radius: 0.7rem !important;
  border: transparent !important;
  background-color: rgba(251, 119, 24) !important;
  font-size: 1.2rem !important;
  font-weight: 600 !important;
} 

.nav-b-btn3:hover {
  background-color: transparent !important;
  text-decoration: none;
  transition: 0.4s;
  color: #3D1D06;
  font-weight: 800;
  text-shadow: -1px 0 #fb7718, 0 1px #fb7718, 1px 0 #fb7718, 0 -1px #fb7718;
}


.nav-b-btn3 a {
  color: white;
  font-size: 1.2rem;
  font-weight: 600;
}

.nav-b-btn3 a:hover, .nav-menu a:hover {
  color: #3D1D06;
  text-decoration: none;
  text-shadow: -1px 0 #fb7718, 0 1px #fb7718, 1px 0 #fb7718, 0 -1px #fb7718;
}

.sub-describe p {
  font-weight: 700;
  color: white;
  font-size: 3.5rem;
  text-align: center;
  margin-bottom: -1rem;
  text-shadow: 4px 4px 4px #443022;
}

.nav-menu a {
  font-size: 1.2rem;
  font-weight: 600;
}
</style>
