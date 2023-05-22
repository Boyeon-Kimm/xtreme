<template>
  <div>
    <review-list></review-list>
    <router-view />
  </div>
</template>

<script>
import ReviewList from '../components/reviewComp/ReviewList.vue'

export default {
  name: 'ReviewView',
	components: { 
    ReviewList, 
  },
  
  data() {
    return {};
  },

  mounted: {},
};
</script>

<style>

</style>