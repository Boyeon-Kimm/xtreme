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
      <form @submit.prevent="submitForm" class="participate-form">
        <div class="login-form-title">
          <p>Update Application</p>
        </div>
        <div class="login-form-input">
          <div class="login-form-text">
            <input type="text" placeholder="id" id="id" v-model="id" disabled />
          </div>
          <div class="login-form-text">
            <input
              type="text"
              placeholder="name"
              id="name"
              v-model="name"
              disabled
            />
          </div>
          <div class="login-form-text">
            <input type="text" placeholder="team" id="team" v-model="team" />
          </div>
          <div class="login-form-text">
            <input
              type="number"
              placeholder="birth"
              id="birth"
              v-model="birth"
              disabled
            />
          </div>
          <div class="login-form-text">
            <input
              type="number"
              placeholder="phone number"
              id="phone"
              v-model="phone"
            />
          </div>
          <div class="login-form-text">
            <input
              type="email"
              placeholder="email"
              id="email"
              v-model="email"
            />
          </div>
          <div class="login-form-btn">
            <input type="submit" value="Update" />
            <input type="button" value="Cancel" />
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
};
</script>

<style scoped>
.home {
  height: 70rem;
}

.participate-form {
  border: 4px solid rgba(251, 119, 24, 0.7);
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
