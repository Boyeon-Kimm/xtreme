<template>
  <div>
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
      <form class="participate-form">
        <div class="sect01">
          <div class="line-box" @click.prevent="$router.back()">
            <span class="line-01"></span>
            <span class="line-02"></span>
          </div>
        </div>
        <div class="login-form-title">
          <p>Participation Application</p>
        </div>
        <div class="login-form-input">
          <div class="login-form-text">
            <input
              type="text"
              id="compName"
              v-model="competition.compName"
              class="fnt-kr" readonly
            />
          </div>
          <div class="login-form-text">
            <input
              type="text"
              placeholder="id"
              id="playerId"
              v-model="playerId"
            />
          </div>
          <div class="login-form-text">
            <input
              type="text"
              placeholder="name"
              id="playerName"
              v-model="playerName"
            />
          </div>
          <div class="login-form-text">
            <input
              type="text"
              placeholder="team"
              id="teamName"
              v-model="teamName"
            />
          </div>
          <div class="login-form-text">
            <input
              type="number"
              placeholder="birth"
              id="birth"
              v-model="birth"
            />
          </div>
          <div class="login-form-text">
            <input
              type="number"
              placeholder="phone number(Write it without '-')"
              id="phone"
              v-model="phone"
            />
          </div>
          <div class="login-form-text">
            <input
              type="email"
              placeholder="email"
              id="playerEmail"
              v-model="playerEmail"
            />
          </div>
          <div class="participate-form-radio">
            <div class="participate-radio">
              <b-form-group
                class="radio-group-title"
                label="Personal Information Collection and Usage Agreement">
                <router-link :to="{ name: 'participateAgreement' }" class="compAgree">More about Required Agreement...✅</router-link>
              </b-form-group>
            </div>
          </div>
          <div class="login-form-btn">
            <input
              @click.prevent="createParticipate"
              type="submit"
              value="Submit"
            />  
            <input
              @click.prevent="$router.back()"
              type="button"
              value="Cancel"
            />
          </div>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import { mapState } from "vuex";

export default {
  name: "ParticipateCreate",
  computed: {
    ...mapState(["competition"]),
  },
  data() {
    return {
      playerId: '',
      playerName: '',
      teamName: '',
      birth: '',
      phone: '',
      playerEmail: '',
      selected: null,
    };
  },
  
  methods: {
    createParticipate() {
      if(this.playerId === '' || this.teamName === '' || this.playerName === '' || this.birth === '' || this.phone === '' || this.playerEmail === ''){
        alert("Please fill in all fields.");
        return;
      }
      let participate = {
        id: 0,
        playerId: this.playerId,
        playerName: this.playerName,
        teamName: this.teamName,
        birth: this.birth,
        phone: this.phone,
        playerEmail: this.playerEmail,
        compId: this.competition.id,
      };
      
      this.$store.dispatch("createParticipate", participate);
      this.$router.push({ name: "participateDetail", params: { id: this.competition.id, user: this.playerId }});
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

.home {
  height: auto;
}

.participate-form {
  border: 4px solid rgba(251, 119, 24);
  border-radius: 2rem;
  height: auto;
  width: 40rem;
  background-color: rgb(228, 225, 225);
}

.participate-radio {
  background-color: rgb(255, 255, 255, 0.65);
  height: 8rem;
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

.login-form-text-span {
  height: 3.5rem;
  width: 29.5rem;
  border-radius: 1rem;
  margin-bottom: 0.7rem;
  background-color: rgb(255, 255, 255, 0.65);
  border: transparent;
  font-weight: 600;
  margin-right: 0;
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
