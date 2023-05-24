<template>
  <div>
    <header class="header-class" style="background-image: none">
      <nav>
        <div class="nav-title">
          <router-link to="/">XTREME</router-link>
        </div>
        <div class="nav-btn">
          <b-button class="nav-b-btn" id="nav-b-btn1"
            ><router-link :to="{ name: 'login' }"
              >Sign in</router-link
            ></b-button
          >
          <b-button class="nav-b-btn" id="nav-b-btn2"
            ><router-link :to="{ name: 'joinus' }"
              >Join us</router-link
            ></b-button
          >
        </div>
      </nav>
    </header>
    <div class="home">
      <form class="login-form" @submit="login()">
        <div class="sect01">
          <div class="line-box" @click.prevent="goMain()">
            <span class="line-01"></span>
            <span class="line-02"></span>
          </div>
        </div>
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
            <input type="submit" value="Sign In" />
            <input @click.prevent="goJoinUs" type="button" value="Join Us" />
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
      id: "",
      password: "",
    };
  },

  methods: {
    goJoinUs() {
      this.$router.push("/joinus");
    },

    goMain() {
      this.$router.push("/");
    },
    
    login() {
      // if(this.id === ''){
      //   alert("Please enter your ID.");
      //   return;
      // }
      // if(this.password === ''){
      //   alert("Please enter your password.");
      //   return;
      // }
      // const id = this.id;
      // const password = this.password;

      // const payload = {
      //   id,
      //   password,
      // };
      // this.$store.dispatch("login", payload);
      // this.$router.push("/");
      
      let loginUser = {
        id: this.id,
        password: this.password,
      }

      this.$store.dispatch("login", loginUser);

      this.$router.push("/");
    },
    
    goMain() {
      this.$router.push("/");
    },
  },
};
</script>

<style>
.login-form {
  border: 4px solid rgba(251, 119, 24);
  background-color: rgb(228, 225, 225);
  border-radius: 2rem;
  height: auto;
  width: 40rem;
}

.login-form-title p {
  font-size: 2.6rem;
  text-align: center;
  color: #3d1d06;
  font-weight: 700;
  margin: 0 0 1.4rem 0;
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

.login-form-btn input {
  background-color: rgba(251, 119, 24);
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
  color: #3d1d06;
  text-shadow: -1px 0 #fb7718, 0 1px #fb7718, 1px 0 #fb7718, 0 -1px #fb7718;
}


.sect01 {
  position: relative;
  width: 2.6rem;
  height: 64px;
  margin: 0.5rem 36rem 0 35rem; 
}

.sect01 .line-box {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 100%;
  height: 100%;
}

.sect01 .line-box > span {
  position: absolute;
  top: 50%;
  width: 100%;
  height: 2px;
  background-color: #3D1D06;
}

.sect01 .line-01 {
  transform: rotate(135deg) translateX(0%);
}

.sect01 .line-02 {
  transform: rotate(45deg) translateX(0%);
}

.line-box:hover {
  cursor: pointer;
}

</style>
