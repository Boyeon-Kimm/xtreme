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
      <form class="participate-form">
        <div class="sect01">
          <div class="line-box" @click.prevent="goList()">
            <span class="line-01"></span>
            <span class="line-02"></span>
          </div>
        </div>
        <div class="login-form-title">
          <p>Update Application</p>
        </div>
        <div class="login-form-input">
          <div class="login-form-text">
            <input type="text" placeholder="id" id="id" v-model="participate.playerId" disabled />
          </div>
          <div class="login-form-text">
            <input
              type="text"
              placeholder="name"
              id="name"
              v-model="participate.playerName"
              disabled
            />
          </div>
          <div class="login-form-text">
            <input type="text" placeholder="team" id="team" v-model="participate.teamName" />
          </div>
          <div class="login-form-text">
            <input
              type="number"
              placeholder="birth"
              id="birth"
              v-model="participate.birth"
              disabled
            />
          </div>
          <div class="login-form-text">
            <input
              type="number"
              placeholder="phone number"
              id="phone"
              v-model="participate.phone"
            />
          </div>
          <div class="login-form-text">
            <input
              type="email"
              placeholder="email"
              id="email"
              v-model="participate.playerEmail"
            />
          </div>
          <div class="login-form-btn">
            <input @click.prevent="updateParticipate" type="submit" value="Update" />
            <input @click.prevent="participateDetail" type="button" value="Cancel" />
          </div>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import { mapState } from "vuex";

export default {
  name: "ParticipateUpdate",
  data(){
    return {
      playerId: "",
      teamName: "",
      playerName: "",
      birth: "",
      phone: "",
      playerEmail: "",
    };
  },
  computed: {
    ...mapState(['participate']),
  },
  methods: {
    participateDetail() {
      this.$router.back();
    },
    // 로그아웃
    logoutUser() {
      this.$store.dispatch("logoutUser");
      // 로그인 페이지로 이동
      this.$router.push('/login');
    },

    updateParticipate() {
      // if(this.participate.playerId === '' || this.participate.teamName === '' || this.participate.playerName === '' || this.participate.birth === '' || this.participate.phone === '' || this.participate.playerEmail === ''){
      //   alert("Please fill in all fields.");
      //   return;
      // }
      let updateParticipate = {
        id: this.participate.id,
        playerId: this.participate.playerId,
        teamName: this.participate.teamName,
        playerName: this.participate.playerName,
        birth: this.participate.birth,
        phone: this.participate.phone,
        playerEmail: this.participate.playerEmail,
        compId: this.participate.compId,
      };
      this.$store.dispatch("updateParticipate", updateParticipate);
      this.$router.push({ name: "participateDetail", params: { id: this.participate.id }});
    },
  },
};
</script>

<style scoped>
.home {
  height: 70rem;
  padding-top: 2rem;
}

.participate-form {
  border: 4px solid rgba(251, 119, 24);
  background-color: rgb(228, 225, 225);
  border-radius: 2rem;
  height: auto;
  width: 40rem;
}

.participate-radio {
  background-color: rgb(255, 255, 255, 0.65);
  height: 9.3rem;
  width: 29.5rem;
  border-radius: 1rem;
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 0.7rem;
}

.radio-group-title {
  font-weight: 700;
  margin: 0;
}

.radio-group-content {
  font-weight: 400 !important;
  margin-bottom: 0.4rem;
}

.custom-control.custom-radio {
  margin-top: 0.4rem;
}

.participate-form-radio {
  display: flex;
  justify-content: center;
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
