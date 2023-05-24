<template>
  <div>
    <header class="header-class" style="background-image: none;">
    <nav>
      <div class="nav-title">
        <router-link to="/">XTREME</router-link>
      </div>
			<!-- 로그인 안했을 때 -->
      <div class="nav-btn">
        <b-button class="nav-b-btn" id="nav-b-btn1"><router-link :to="{ name: 'login' }">Sign in</router-link></b-button>
        <b-button class="nav-b-btn" id="nav-b-btn2"><router-link :to="{ name: 'joinus' }">Join us</router-link></b-button>
      </div>
    </nav>
  </header>
  <div class="home">
    <form class="login-form" @submit="login()">
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
          <input @click.prevent="goJoinUs" type="button" value="Join Us"/>
        </div>
      </div>
    </form>
  </div>
  </div>
</template>

<script>
export default {
  name: "LoginForm",

  data() {
    return {
      id: '',
      password: '',
    };
  },

  methods: {
    goJoinUs() {
      this.$router.push("/joinus");
    },
    login() {
      if(this.id === ''){
        alert("Please enter your ID.");
        return;
      }
      if(this.password === ''){
        alert("Please enter your password.");
        return;
      }
      var loginCheck = false; // 로그인 여부 확인할 boolean 변수
      if(this.id === 'ssafy' && this.password === '1234'){
        alert("Login Success!");
        loginCheck = true;
      } else {
        loginCheck = false;
        alert("Login Failed... Please try again.");
        $router.back();
      }
      const id = this.id;
      const password = this.password;

      const payload = {
        id,
        password,
      };

      this.$store.dispatch("login", payload);
      this.$router.push("/");
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
  background-color: rgb(255, 255, 255, 0.65);
  padding-left: 1rem;
  border: transparent;
  /* font-weight: 600; */
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

.login-form-btn input:hover {
  background-color: transparent;
  transition: 0.7s;
  color: black;
  text-shadow: -1px 0 #fb7718, 0 1px #fb7718, 1px 0 #fb7718, 0 -1px #fb7718;
}

/* .header-class {
  background-image: none !important;
} */
</style>
