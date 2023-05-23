<template>
  <div class="home">
    <form class="login-form" @submit="submitForm">
      <div class="login-form-title">
        <p>Sign In</p>
      </div>
      <div class="login-form-input">
        <div class="login-form-text">
          <input type="text" placeholder="id" id="idInput" v-model="id" />
        </div>
        <div class="login-form-text">
          <input type="password" placeholder="password" v-model="password" />
        </div>
        <div class="login-form-btn">
          <input type="submit" value="Sign In"/>
          <input type="button" value="Join Us"/>
        </div>
      </div>
    </form>
  </div>
</template>

<script>
import { loginUser } from '@/api/index';
export default {
  name: "LoginForm",

  data() {
    return {
      id: '',
      password: '',
      logMessage: '',
    };
  },

  methods: {
    async submitForm() {
      try{
        const userData = {
          id: this.id,
          password: this.password,
        };
        // API 함수 loginUser 호출
        const { data } = await loginUser(userData);
        this.$store.commit('setUsername', data.user.id);
        // 메인페이지 이동
        this.$router.push('/main');
        alert(`Welcome, ${data.user.id} !`);
      } catch (err) {
        console.log(err);
      } finally {
        // 입력칸 비우기
        this.initForm();
      }
    },
    initForm() {
      this.id = '';
      this.password = '';
    },
  },

};
</script>

<style>

.login-form {
  border: 4px solid rgba(251, 119, 24, 0.7);
  border-radius: 2rem;
  height: auto;
  width: 40rem;
}

.login-form-title p {
  font-size: 2.6rem;
  text-align: center;
  color: white;
  font-weight: 700;
  margin: 2rem 0 1.4rem 0;
}

.login-form-input {
  text-align: center;
}

.login-form-text input {
  height: 3.5rem;
  width: 29.5rem;
  border-radius: 1rem;
  margin-bottom: 0.7rem;
  background-color: white;
  opacity: 0.65;
  padding-left: 1rem;
  border: transparent;
  font-weight: 600;
}

.login-form-btn {
  margin-bottom: 2rem;
}

.login-form-btn input{
  background-color: rgba(251, 119, 24, 0.7);
  color: white;
  font-weight: 700;
  /* opacity: 0.75; */
  border: transparent;
  height: 3.3rem;
  width: 10rem;
  border-radius: 1rem;
  margin: 0.5rem;
}
</style>
