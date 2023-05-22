<template>
  <div class="home">
    <div @submit.prevent="submitForm" class="login-form">
      <div class="login-form-title">
        <p>Review</p>
      </div>
      <div class="login-form-input">
        <div class="login-form-text">
          <input type="text" placeholder="Tournament Name" v-model="CompName" />
        </div>
        <div class="login-form-text">
          <input type="text" placeholder="Title" v-model="id" />
        </div>
        <div class="login-form-text">
          <textarea placeholder="Content" v-model="content" />
        </div>
        <div class="login-form-btn">
          <input type="submit" value="Submit"/>
          <input type="button" value="Cancel"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
    name: 'ReviewCreate',
}
</script>

<style scoped>
.login-form {
    height: auto;
}

.login-form-text textarea {
  height: 15rem;
  width: 29.5rem;
  border-radius: 1rem;
  margin-bottom: 0.7rem;
  background-color: white;
  opacity: 0.65;
	padding-top: 0.8rem;
  padding-left: 1rem;
  border: transparent;
  font-weight: 600;
}

.login-form-btn {
    margin-bottom: 2.6rem;
}

</style>