<template>
  <div>
    <!-- <review-list></review-list> -->
    <!-- <review-create /> -->
    <!-- <review-update/> -->
    <review-detail></review-detail>
    <router-views />
  </div>
</template>

<script>
import ReviewDetail from '../components/reviewComp/ReviewDetail.vue';
import ReviewList from '../components/reviewComp/ReviewList.vue'
// import ReviewCreate from '../components/reviewComp/ReviewCreate.vue'
// import ReviewUpdate from '../components/reviewComp/ReviewUpdate.vue'
// import ReviewDetail from '../components/reviewComp/ReviewDetail.vue'

export default {
  name: 'ReviewView',
	components: { 
    ReviewList,
ReviewDetail,
    // ReviewCreate,
    // ReviewUpdate,
    // ReviewDetail,
  },
  
  data() {
    return {};
  },

  mounted: {},
};
</script>

<style>

</style>