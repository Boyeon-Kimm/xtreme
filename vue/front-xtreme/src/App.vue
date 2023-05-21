<template>
  <div id="app">
    <header-nav></header-nav>
    <header-nav-2></header-nav-2>
    <router-view />
    <footer-nav></footer-nav>
  </div>
</template>

<script>
import HeaderNav from './components/commons/HeaderNav.vue'
import HeaderNav2 from './components/commons/HeaderNav2.vue'
import FooterNav from './components/commons/FooterNav.vue'

export default {
  components: { 
    HeaderNav,
    HeaderNav2,
    FooterNav,
  },
};
</script>

<style>

</style>