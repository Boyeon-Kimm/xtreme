<template>
  <div>
		<my-page></my-page>
		<!-- <router-view /> -->
	</div>
</template>

<script>
import MyPage from '../components/user/MyPage.vue';

export default {
	name: 'MyPageView',
	components: {
		MyPage,
	}
}
</script>