<template>
  <div class="home">
    <form @submit.prevent="submitForm" class="join-form">
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
          <input type="submit" value="Submit"/>
          <input type="button" value="Sign In"/>
        </div>
      </div>
    </form>
  </div>
</template>

<script>
export default {
  name: "JoinUs",
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
