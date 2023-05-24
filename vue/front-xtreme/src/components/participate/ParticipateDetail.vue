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
          <a class="logout-btn">Logout</a>
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
          <p>Participation Application</p>
        </div>
        <div class="participate-detail-view">
          <div class="login-form-input">
            <div class="login-form-text">
              <span>{{ competition.compName }}</span>
            </div>
            <div class="login-form-text">
              <span>{{ participate.playerId }}</span>
            </div>
            <div class="login-form-text">
              <span>{{ participate.playerName }}</span>
            </div>
            <div class="login-form-text">
              <span>{{ participate.teamName }}</span>
            </div>
            <div class="login-form-text">
              <span>{{ participate.birth }}</span>
            </div>
            <div class="login-form-text">
              <span>{{ participate.phone }}</span>
            </div>
            <div class="login-form-text">
              <span>{{ participate.playerEmail }}</span>
            </div>
            <div class="login-form-btn">
              <input
                @click.prevent="updateParticipate"
                type="submit"
                value="Update"
              />
              <input @click="goList" type="button" value="Cancel" />
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import { mapState } from "vuex";

export default {
  name: "ParticipateDetail",

  computed: {
    ...mapState(["competition", "participate"]),
  },
  created(){
    const pathName = new URL(document.location).pathname.split('/');
    const id = pathName[pathName.length - 1];
    this.$store.dispatch('getParticipate', id);
  },
  methods: {
    goList() {
      this.$router.push("/competition");
    },
    updateParticipate() {
      this.$router.push({ name: "participateUpdate" });
    },
  },
};
</script>

<style scoped>
.home {
  padding-top: 5rem;
  height: 70rem;
}

.login-form-text {
  height: 3.5rem;
  width: 29.5rem;
  border-radius: 1rem;
  margin: 0.7rem;
  background-color: rgba(255, 255, 255, 0.65);
  padding: 0;
  border: transparent;
  font-weight: 600;
  display: flex;
  justify-content: center;
  align-items: center;
}

.participate-form {
  border: 4px solid rgba(251, 119, 24);
  background-color: rgb(228, 225, 225);
  border-radius: 2rem;
  height: auto;
  width: 40rem;
}

.participate-detail-view {
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
