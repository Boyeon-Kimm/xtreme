<template>
  <div class="home">
    <form class="participate-form">
      <div class="login-form-title">
        <p>Participation Application</p>
      </div>
			<div class="participate-detail-view">
      <div class="login-form-input">
				<div class="login-form-text">
					<span>{{ competition.compName }}</span>
        </div>
        <div class="login-form-text">
					<span>{{ participate.playerId }}</span>
        </div>
        <div class="login-form-text">
					<span>{{ participate.playerName }}</span>
        </div>
        <div class="login-form-text">
					<span>{{ participate.teamName }}</span>
        </div>
        <div class="login-form-text">
					<span>{{ participate.birth }}</span>
        </div>
        <div class="login-form-text">
					<span>{{ participate.phone }}</span>
        </div>
        <div class="login-form-text">
					<span>{{ participate.playerEmail }}</span>
        </div>
        <div class="login-form-btn">
          <input @click.prevent="updateParticipate" type="submit" value="Update" />
          <input @click="goList" type="button" value="Cancel" />
        </div>
      </div>
			</div>
    </form>
  </div>
</template>

<script>
import { mapState } from 'vuex';

export default {
  name: 'ParticipateDetail',
  computed: {
    ...mapState(['competition', 'participate']),
  },
  // created(){
  //   const pathName = new URL(document.location).pathname.split('/');
  //   const id = pathName[pathName.length - 1];
  //   this.$store.dispatch('getParticipate', id);
  // },
  methods:{
    goList() {
      this.$router.push("/competition");
    }
  },
};
</script>

<style scoped>
  .home {
      height: 70rem;
  }

	.login-form-text {
		height: 3.5rem;
		width: 29.5rem;
		border-radius: 1rem;
		margin: 0.7rem;
		background-color: rgb(255, 255, 255, 0.65);
		padding: 0;
		border: transparent;
		font-weight: 600;
		display: flex;
		justify-content: center;
		align-items: center;
	}	

  .participate-form {
    border: 4px solid rgba(251, 119, 24, 0.7);
    border-radius: 2rem;
    height: auto;
    width: 40rem;
  }

	.participate-detail-view {
		display: flex;
		justify-content: center;
	}

</style>
