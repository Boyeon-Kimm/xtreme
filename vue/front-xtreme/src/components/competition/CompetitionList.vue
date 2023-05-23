<template>
  <div class="compList-main">
    <div class="compList-title">
      <h3>Tournaments List</h3>
      <div class="compList-sub-title">
        <p>Tournaments List Page!</p>
        <p>
          Here, you'll find a comprehensive list of upcoming sports tournaments.
        </p>
        <p>Take a closer look at the tournaments we have in store for you:</p>
      </div>
    </div>
    <div class="compList-list">
      <table class="table table-dark table-hover table-bordered">
        <thead>
          <tr>
            <th scope="col">Sports</th>
            <th scope="col">Tournaments Name</th>
            <th scope="col" class="comp-date">Tournaments Date</th>
            <th scope="col" class="comp-date">Registration Period</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="competition in competitions" :key="competition.compName">
            <td scope="row">{{ competition.compSports }}</td>
            <td>
              <router-link :to="`/competition/${competition.id}`">
                {{ competition.compName }}
              </router-link>
            </td>
            
            <td>{{ competition.compDay }}</td>
            <td>{{ competition.registDate }}</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="overflow-auto">
      <b-pagination
        v-model="currentPage"
        :total-rows="rows"
        :per-page="perPage"
        aria-controls="my-table"
      ></b-pagination>
    </div>
  </div>
</template>

<script>
import {mapState} from 'vuex';

export default {
  name: "CompetitionList",

  data() {
    return {
			rows: 10,
      perPage: 1,
      currentPage: 1,
    };
  },
  computed: {
    rows() {
      return this.items.length;
    },
    ...mapState(['competitions']),
  },
  created(){
    this.$store.dispatch('getCompetitions');
  },
  // methods: {
  //   search(){
  //     const payload = {
  //       mode: this.mode,
  //       keyword: this.keyword,
  //     };
  //     this.$store.dispatch('getCompetitions', payload);
  //   },
  // },
};
</script>

<style>
.compList-main {
  padding-top: 8rem;
  padding-bottom: 6rem;
  background-color: black;
}

.compList-title {
  padding: 0 0 0 4rem;
}

.compList-title h3 {
  color: white;
  font-size: 2rem;
  font-weight: 700;
}

.compList-sub-title p {
  color: white;
  font-weight: 600;
  margin: 0;
}

.compList-list {
  margin: 1rem 4rem 1rem 4rem;
}

.compList-list table {
  text-align: center;
}

.overflow-auto{
	display: flex;
	justify-content: center;
}

.page-item {
	margin-left: 0.5rem;
}

li button, li span {
	width: 2.4rem;
	border-radius: 0.2rem;
}

.page-item button{
	border: transparent;
	color: black !important;
	font-weight: 700;
	background-color: rgb(201, 200, 200);
}

.page-item.disabled .page-link {
	background-color: rgb(88, 87, 87) !important;
	color: rgb(186, 183, 183) !important;
	border: transparent;
	font-weight: 700;
}

.page-item.active .page-link {
	background-color: #FB7718 !important;
	border-color: #FB7718 !important;
	color: white !important;
}

</style>
