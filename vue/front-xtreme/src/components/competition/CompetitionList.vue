<template>
  <div>
    <header class="header-class">
      <nav>
        <div class="nav-title">
          <router-link :to="`/`">XTREME</router-link>
        </div>
        <!-- 로그인 했을 때 보여줄 nav menu -->
        <div class="nav-menu">
          <router-link :to="`/competition`">Tournaments</router-link>
          <router-link :to="`/review`">Reviews</router-link>
          <router-link :to="`/mypage`">MyPage</router-link>
          <a class="logout-btn">Logout</a>
        </div>
      </nav>
    </header>
    <div class="compList-main">
      <div class="compList-title">
        <h3>Tournaments List</h3>
        <div class="compList-sub-title">
          <p>Tournaments List Page!</p>
          <p>
            Here, you'll find a comprehensive list of upcoming sports
            tournaments.
          </p>
          <p>Take a closer look at the tournaments we have in store for you:</p>
        </div>
      </div>
      <div>
        <b-form inline>
          <b-form-select v-model="mode">
            <b-form-select-option value="1">Sports</b-form-select-option>
            <b-form-select-option value="2">Tournament Name</b-form-select-option>
            <b-form-select-option value="3">Sports+Tournament Name</b-form-select-option>
          </b-form-select>
          <b-form-input type="text" v-model="keyword" />
          <b-button @click="search" class="search-btn">Search</b-button>
        </b-form>
      </div>
      <div class="compList-list">
        <table :items="competitions" class="table table-dark table-hover table-bordered">
          <thead>
            <tr>
              <th scope="col" class="first-td">Sports</th>
              <th scope="col" class="second-td">Tournaments Name</th>
              <th scope="col" class="comp-date" id="fourth-td">Tournaments Date</th>
              <th scope="col" class="comp-date" id="fifth-td">Registration Period</th>
              <th scope="col" class="third-td">View</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="competition in pageCompetitionList" :key="competition.compName">
              <td scope="row" class="fnt-kr" style="font-weight: 400">{{ competition.compSports }}</td>
              <td>
                <router-link :to="`/competition/${competition.id}`" class="fnt-kr">
                  {{ competition.compName }}
                </router-link>
              </td>
              <td>{{ competition.compDay }}</td>
              <td>{{ competition.registDate }}</td>
              <td>{{ competition.viewCnt }}</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="overflow-auto">
        <b-pagination
          v-model="currentPage"
          :total-rows="competitionCount"
          :per-page="perPage"
          aria-controls="my-table"
          align="center"
        ></b-pagination>
      </div>
    </div>
  </div>
</template>

<script>
import { mapState } from "vuex";

export default {
  name: "CompetitionList",

  data() {
    return {
      perPage: 10,
      currentPage: 1,
      mode: 1,
      keyword: "",
    };
  },
  computed: {
    ...mapState(["competitions"]),
    competitionCount() {
      return this.competitions.length;
    },
    pageCompetitionList() {
      return this.competitions.slice(
        (this.currentPage - 1) * this.perPage,
        this.currentPage * this.perPage
      );
    },
  },
  created() {
    this.$store.dispatch("getCompetitions");
  },
  methods: {
    search() {
      const payload = {
        mode: this.mode,
        keyword: this.keyword,
      };
      this.$store.dispatch("getCompetitions", payload);
    },
  },
};
</script>

<style>
  @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@200;300;400;500&display=swap');
.compList-main {
  padding-top: 8rem;
  padding-bottom: 6rem;
  background-color: black;
  min-height: 60rem;
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
  margin: 1rem 4rem 3rem 4rem;
}

.compList-list table {
  text-align: center;
}

.overflow-auto {
  display: flex;
  justify-content: center;
  margin-top: 3rem;
}

.page-item {
  margin-left: 0.5rem;
}

li button,
li span {
  width: 2.4rem;
  border-radius: 0.2rem;
}

.page-item button {
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
  background-color: #fb7718 !important;
  border-color: #fb7718 !important;
  color: white !important;
}

.first-td {
  width: 7rem;
}

.second-td {
  width: 30rem;
}

.third-td {
  width: 5rem;
}

#fourth-td {
  width: 15rem;
}

#fifth-td {
  width: 25rem;
}

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
  cursor: pointer;
}

.fnt-kr {
  font-family: 'IBM Plex Sans KR', sans-serif;
}
</style>
