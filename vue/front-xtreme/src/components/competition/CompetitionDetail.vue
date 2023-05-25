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
  <div class="compList-main">
    <div class="login-form">
      <div class="sect01">
        <div class="line-box" @click.prevent="moveCompList()">
          <span class="line-01"></span>
          <span class="line-02"></span>
        </div>
      </div>
      <div class="compList-title">
        <h3 class="fnt-kr">{{ competition.compName }}</h3>
        <hr />
      </div>
      <div class="compDetail-content">
        <div class="compDetail-img">
          <img src="@/assets/tennis.jpg" alt="tennis" />
        </div>
        <div class="compDetail">
          <div class="compDetail-text">
            <div class="compDetail-text-title">
              <p>Sports:</p>
              <p>Host:</p>
              <p>Place:</p>
              <p>Date:</p>
              <p>Registration Period:</p>
              <p>Fee:</p>
              <p>URL:</p>
            </div>
            <div class="compDetail-text-cont">
              <p class="fnt-kr">{{ competition.compSports }}</p>
              <p class="fnt-kr">{{ competition.host }}</p>
              <p class="fnt-kr">{{ competition.place }}</p>
              <p class="fnt-kr">{{ competition.compDay }}</p>
              <p class="fnt-kr">{{ competition.registDate }}</p>
              <p class="fnt-kr">{{ competition.fee }}원</p>
              <p class="fnt-kr">{{ competition.compUrl }}</p>
            </div>
          </div>
					<div class="compDetail-btn">
          	<button @click.prevent="moveParticipate">Participate</button>
          	<button @click.prevent="moveCompList">List</button>
        	</div>
        </div>
      </div>
    </div>
  </div>
  </div>
</template>

<script>
import { mapState } from 'vuex';

export default {
  name: "CompetitionDetail",
  computed: {
    ...mapState(['competition']),
  },
  created(){
    //console.log(new URL(document.location).pathname)
    const pathName = new URL(document.location).pathname.split('/');
    const id = pathName[pathName.length - 1];
    this.$store.dispatch('getCompetition', id);
  },
  methods:{ 
    moveParticipate(){
      this.$router.push({ name: "participateCreate", params: { id: this.competition.id }});
    },
    moveCompList(){
      this.$router.push("/competition");
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

.compList-main {
  display: flex;
  justify-content: center;
  align-items: center;
  height: auto;
}

.login-form {
  height: auto;
  width: 70rem;
  padding-bottom: 2rem;
}

.compList-title {
  display: inline-block;
}

.compList-title h3 {
  color: #3D1D06;
}

.compList-title > hr {
  border-color: #3D1D06;
}

.compDetail {
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	width: 100%;
  margin-left: 2rem;
}

.compDetail-content {
  height: 30rem;
  margin: 0 4rem;
  display: flex;
  direction: row;
  justify-content: center;
}

.compDetail-img img {
  height: 28rem;
  width: 23rem;
  align-items: center;
}

.compDetail-text {
  display: flex;
  justify-content: space-around;
  align-items: center;
	height: auto;
	width: 100%;
	color: #3D1D06;
	font-size: 1.1rem;
}

.compDetail-text-title p {
	align-items: center;
	font-weight: 700;
	/* text-align: center; */
}

.compDetail-btn {
	margin-top: 1rem;
	text-align: center;
}

button {
  background-color: #fb7718;
  color: white;
  font-weight: 600;
  border: transparent;
  height: 3rem;
  width: 8rem;
  margin-right: 0.5rem;
  border-radius: 0.5rem;
}

button:hover {
  background-color: transparent;
  transition: 0.5s;
  color: black;
  font-weight: 800;
  text-shadow: -1px 0 #fb7718, 0 1px #fb7718, 1px 0 #fb7718, 0 -1px #fb7718;
}

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
    cursor: pointer;
  }

  
.sect01 {
  margin: 1rem 0 0 63.6rem; 
}

</style>
