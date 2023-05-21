<template>
  <div class="home">
    <div class="home-content">
      <div class="sub-describe">
        <p>Explore the Excitement of</p>
        <p>Sports Tournaments</p>
      </div>
      <div class="home-btn">
        <b-button class="nav-b-btn3"><router-link :to="{ name: 'competitionList' }">Tournaments</router-link></b-button>
        <b-button class="nav-b-btn3"><router-link :to="{ name: 'reviewList' }">Reviews</router-link></b-button>
        <b-button class="nav-b-btn3"><router-link :to="{ name: 'joinus' }">Join Us</router-link></b-button>
        <b-button class="nav-b-btn3"><router-link :to="{ name: 'myPage' }">MyPage</router-link></b-button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "HomeView",
};
</script>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Red+Hat+Display:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

* {
  font-family: 'Red Hat Display', sans-serif;

}

.home {
  height: 55rem;
  background-image: url(@/assets/main1.png);
  background-size: cover;
  display: flex;
  direction: column;
  justify-content: center;
  align-items: center;
}

.home-btn {
  display: flex;
  justify-content: space-around;
  margin-top: 3.5rem;
  width: 52rem;
}

.nav-b-btn3 {
  width: 9.5rem !important;
  /* height: 3rem; */
  border-radius: 0.7rem !important;
  border: transparent !important;
  background-color: rgba(251, 119, 24, 0.7) !important;
}

.nav-b-btn3 a {
  color: white;
  font-size: 1.2rem;
}

.sub-describe p {
  font-weight: 700;
  color: white;
  font-size: 3.5rem;
  text-align: center;
  margin-bottom: -1rem;
}
</style>
