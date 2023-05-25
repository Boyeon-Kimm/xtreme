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
      <form class="join-form">
        <div class="sect01">
          <div class="line-box" @click.prevent="$router.back()">
            <span class="line-01"></span>
            <span class="line-02"></span>
          </div>
        </div>
        <div class="login-form-title">
          <p>Update Information</p>
        </div>
        <div class="login-form-input">
          <div class="login-form-text">
            <input
              type="text"
              placeholder="name"
              id="name"
              v-model="user.name"
            />
          </div>
          <div class="login-form-text">
            <input
              type="text"
              placeholder="id"
              id="id"
              v-model="user.id"
              readonly
            />
          </div>
          <div class="login-form-text">
            <input
              type="email"
              placeholder="email"
              id="email"
              v-model="user.email"
            />
          </div>
          <div class="login-form-text">
            <input
              type="password"
              placeholder="password"
              id="password"
              v-model="user.password"
            />
          </div>
          <div class="login-form-text">
            <input
              type="number"
              placeholder="age"
              id="age"
              v-model="user.age"
            />
          </div>
          <div class="login-form-btn">
            <input @click.prevent="updateUser" type="submit" value="Update" />
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
  name: "UserUpdate",
  data() {
    return {
      name: "",
      id: "",
      email: "",
      password: "",
      age: "",
    };
  },
  computed: {
    ...mapState(["user"]),
  },
  methods: {
    updateUser() {
      let updatedUser = {
        id: this.user.id,
        password: this.user.password,
        email: this.user.email,
        name: this.user.name,
        age: this.user.age,
      };

      this.$store.dispatch("updateUser", updatedUser);


        // .then(() => {
          
        //     // 로그아웃 시키는 기능 구현
        // })
        // .catch((err) => {
        //   console.log(err);
        // });
    },
  },
};
</script>

<style scoped>
.join-form {
  border: 4px solid rgba(251, 119, 24, 0.7);
  background-color: rgb(228, 225, 225);
  border-radius: 2rem;
  height: auto;
  width: 40rem;
  padding-bottom: 1rem;
}

.login-form-btn {
  margin: 1rem;
}

.header-class {
  background-image: none;
}
</style>
