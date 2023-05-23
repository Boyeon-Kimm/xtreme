<template>
  <div>
    <header class="header-class">
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
    <form class="join-form">
      <div class="login-form-title">
        <p>Personal Details</p>
      </div>
      <div class="login-form-input">
        <div class="login-form-text">
          <input type="text" placeholder="name" id="name" v-model="name" />
        </div>
        <div class="login-form-text">
          <input type="text" placeholder="id" id="id" v-model="id" />
        </div>
        <div class="login-form-text">
          <input type="email" placeholder="email" id="email" v-model="email" />
        </div>
        <div class="login-form-text">
          <input type="password" placeholder="password" id="password" v-model="password"
          />
        </div>
        <div class="login-form-text">
          <input type="number" placeholder="age" id="age" v-model="age" />
        </div>
        <div class="login-form-btn">
          <input @click.prevent="createUser" type="submit" value="Submit"/>
          <input @click.prevent="goSign" type="button" value="Sign In"/>
        </div>
      </div>
    </form>
  </div>
  </div>
</template>

<script>
export default {
  name: "JoinUs",
  data(){
    return {
      name: '',
      id: '',
      email: '',
      password: '',
      age: '',
    };
  },
  methods: {
    createUser(){
      let user = {
        id: this.id,
        password: this.password,
        email: this.email,
        name: this.name,
        age: this.age,
      };

      this.$store.dispatch('createUser', user);
      this.$router.push("/login");
    },

    goSign(){
      this.$router.push("/login");
    }
  }
};
</script>

<style scoped>
  .join-form {
    border: 4px solid rgba(251, 119, 24, 0.7);
    border-radius: 2rem;
    height: 37.5rem;
    width: 40rem;
  }

  .login-form-btn {
    margin: 1rem;
  }
</style>
