<template>
  <div class="home">
    <form class="participate-form">
      <div class="login-form-title">
        <p>Participation Application</p>
      </div>
      <div class="login-form-input">
        <div class="login-form-text">
          <!-- <input type="text" placeholder="Tournament Name" id="compName" v-model="compName" /> -->
          <span>{{ competition.compName }}</span>
        </div>
        <div class="login-form-text">
          <input type="text" placeholder="id" id="playerId" v-model="playerId" />
        </div>
        <div class="login-form-text">
          <input type="text" placeholder="name" id="playerName" v-model="playerName" />
        </div>
        <div class="login-form-text">
          <input type="text" placeholder="team" id="teamName" v-model="teamName" />
        </div>
        <div class="login-form-text">
          <input type="number" placeholder="birth" id="birth" v-model="birth" />
        </div>
        <div class="login-form-text">
          <input type="number" placeholder="phone number" id="phone" v-model="phone"/>
        </div>
        <div class="login-form-text">
          <input type="email" placeholder="email" id="playerEmail" v-model="playerEmail" />
        </div>
        <div class="participate-form-radio">
        <div class="participate-radio">
          <b-form-group class="radio-group-title" label="Personal Information Collection and Usage Agreement" v-slot="{ ariaDescribedby }">
            <router-link :to="{ name: 'participateAgreement' }" class="compAgree">More about Agreement...</router-link>
            <b-form-radio v-model="selected" :aria-describedby="ariaDescribedby" name="some-radios" value="Agree" >Agree</b-form-radio
            >
            <b-form-radio class="radio-group-content" v-model="selected" :aria-describedby="ariaDescribedby" name="some-radios" value="Disagree">Disagree</b-form-radio>
          </b-form-group>
        </div>
      </div>
        <div class="login-form-btn">
          <input @click.prevent="createParticipate" type="submit" value="Submit" />
          <input @click.prevent="moveCompList" type="button" value="Cancel" />
        </div>
      </div>
    </form>
  </div>
</template>

<script>
import { mapState } from 'vuex';

export default {
  name: 'ParticipateCreate',
  computed: {
    ...mapState(['competition']),
  },
  data(){
    return {
      // compName: '',
      playerId: '',
      playerName: '',
      teamName: '',
      birth: '',
      phone: '',
      playerEmail: '',
    };
  },

  // computed: {
  //   ...mapState(['competitions']),
  //   compId(){
  //     return this.$route.params.compId;
  //   },
  //   competitionName(){
  //     const competition = this.competitions.find(c => c.compId === this.compId);
  //     return competition ? competition.compName : '';
  //   },
  // },

  methods: {
    createParticipate(){
      let participate = {
        
        playerId: this.playerId,
        playerName: this.playerName,
        teamName: this.teamName,
        birth: this.birth,
        phone: this.phone,
        playerEmail: this.playerEmail,
      };

      this.$store.dispatch('createParticipate', participate);
      this.$router.push({ name: "participateDetail", params: { id: participate.id }});
    },
    moveCompList(){

    },
  },
};
</script>

<style scoped>
.home {
  height: 70rem;
}
  .participate-form {
    border: 4px solid rgba(251, 119, 24, 0.7);
    border-radius: 2rem;
    height: 50rem;
    width: 40rem;
  }
  .participate-radio {
    background-color:  rgb(255, 255, 255, 0.65);
    height: 9.3rem;
    width: 29.5rem;
    border-radius: 1rem;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 0.7rem;
  }

  .radio-group-title {
    font-weight: 700;
    margin: 0;
  }

  .radio-group-content {
    font-weight: 400 !important;
    margin-bottom: 0.4rem;
  }

  .custom-control.custom-radio {
    margin-top: 0.4rem;
  }

  .participate-form-radio {
    display: flex;
    justify-content: center;
  }

</style>
