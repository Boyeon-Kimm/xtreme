<template>
  <header class="header-class">
    <nav>
      <div class="nav-title">
        <router-link to="/">XTREME</router-link>
      </div>
      <div class="nav-btn">
        <b-button class="nav-b-btn" id="nav-b-btn1"><router-link :to="{ name: 'login' }">Sign in</router-link></b-button>
        <b-button class="nav-b-btn" id="nav-b-btn2"><router-link :to="{ name: 'joinus' }">Join us</router-link></b-button>
      </div>
    </nav>
  </header>
</template>

<script>
export default {
	name: 'HeaderNav',
};
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Red+Hat+Display:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

* {
  font-family: 'Red Hat Display', sans-serif;

}

header {
	width: 100%;
	position: absolute;
	z-index: 100;
	padding: 0;
}

header nav {
  display: flex;
  justify-content: space-between;
  margin: 1rem 2.5rem;
	align-items: center;
	background-color: transparent;
}

.nav-btn {
  display: flex;
  direction: row;
}

.nav-b-btn {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
  margin-left: 0.7rem;
  height: 1.8rem;
  width: 6rem;
	padding: 0;
}

.nav-title {
	font-size: 1.8rem;
	font-weight: 700;
	letter-spacing: -0.05rem;
}

.nav-title a {
	color: white;
}

.nav-b-btn a {
  font-size: 0.9rem;
}

#nav-b-btn1 {
	background-color: white;
	border: 1px solid #FB7718;
	border-radius: 0.35rem;
}

#nav-b-btn1 a {
	color: #FB7718;
	/* border: solid green; */
}

#nav-b-btn2 {
	background-color: #FB7718;
	border: 1px solid #FB7718;
	border-radius: 0.35rem;
}

#nav-b-btn2 a {
	color: white;
}

</style>
