<template>
  <header class="header-class">
    <nav>
      <div class="nav-title">
        <router-link to="/">XTREME</router-link>
      </div>
      <div class="nav-menu">
        <router-link :to="{ name: 'competitionList' }">Tournaments</router-link>
        <router-link :to="{ name: 'reviewList' }">Reviews</router-link>
        <router-link :to="{ name: 'joinus' }">Join Us</router-link>
        <router-link :to="{ name: 'myPage' }">MyPage</router-link>
      </div>
    </nav>
  </header>
</template>

<script>
export default {
  name: 'HeaderNav2',
}
</script>

<style scoped>
.header-class {
  background-image: url(@/assets/main1.png);
  background-size: cover;
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
  }
</style>