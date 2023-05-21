<template>
  <div class="home">
    <!-- 폼 내부에서 버튼을 누르면 submit 이벤트가 form으로 전송
     v-on:submit이 실행된다 
    이때 페이지가 새로고침되므로 .prevent를 통해 새로고침을 막고
     methods의 함수롤 호출하게 한다.-->
    <div @submit.prevent="submitForm" class="login-form">
      <div class="login-form-title">
        <p>Sign In</p>
      </div>
      <div class="login-form-input">
        <div class="login-form-text">
          <input type="text" placeholder="id" v-model="id" />
        </div>
        <div class="login-form-text">
          <input type="password" placeholder="password" v-model="password" />
        </div>
        <div class="login-form-btn">
          <input type="submit" value="Sign In"/>
          <input type="button" value="Join Us"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "LoginForm",

  data() {
    return {
      id: null,
      password: null,
    };
  },

  methods: {
    login() {
      const id = this.id;
      const password = this.password;

      const payload = {
        id,
        password,
      };

      this.$store.dispatch("login", payload);
    },
  },
};
</script>

<style>

.login-form {
  border: 4px solid rgba(251, 119, 24, 0.7);
  border-radius: 2rem;
  height: 24rem;
  width: 40rem;
}

.login-form-title p {
  font-size: 2.6rem;
  text-align: center;
  color: white;
  font-weight: 700;
  margin: 2rem;
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
