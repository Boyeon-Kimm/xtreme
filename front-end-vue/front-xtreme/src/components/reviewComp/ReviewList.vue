<template>
  <div>
    <header class="header-class">
      <nav>
        <div class="nav-title">
          <router-link :to="`/`">XTREME</router-link>
        </div>
        <div class="nav-menu">
          <router-link :to="`/competition`">Tournaments</router-link>
          <router-link :to="`/review`">Reviews</router-link>
          <router-link :to="`/mypage`">MyPage</router-link>
          <a @click="logoutUser" class="logout-btn">Logout</a>
        </div>
      </nav>
    </header>
    <div class="compList-main">
      <div class="compList-title">
        <h3>Participants Reviews</h3>
        <div class="compList-sub-title">
          <p>Participant Reviews page!</p>
          <p>
            Here, you can explore firsthand experiences and testimonials from
            participants of our sports tournaments.
          </p>
          <p>
            Read on to discover what athletes and sports enthusiasts have to say
            about their participation:
          </p>
        </div>
      </div>
      <div>
        <b-form inline>
          <b-form-select v-model="mode">
            <b-form-select-option value="1">Title</b-form-select-option>
            <b-form-select-option value="2">Content</b-form-select-option>
            <b-form-select-option value="3">Title+Content</b-form-select-option>
          </b-form-select>
          <b-form-input type="text" v-model="keyword" />
          <b-button @click="search" class="search-btn">Search</b-button>
        </b-form>
      </div>
      <div class="compList-list">
        <table
          :items="reviews"
          class="table table-dark table-hover table-bordered"
        >
          <thead>
            <tr>
              <th scope="col" class="first-td">Sports</th>
              <th scope="col" class="second-td">Title</th>
              <th scope="col" class="second-td">Tournaments Name</th>
              <th scope="col" class="comp-date" id="name-td">Name</th>
              <th scope="col" class="comp-date" id="fourth-td">Post Date</th>
              <th scope="col" class="third-td">View</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="review in pageReviewList" :key="review.id">
              <th scope="row" class="fnt-kr" style="font-weight: 400">{{ review.sports }}</th>
              <td>
                <router-link :to="`/review/${review.id}`" class="fnt-kr">{{
                  review.title
                }}</router-link>
              </td>
              <td class="fnt-kr">{{ review.compTitle }}</td>
              <td>{{ review.userId }}</td>
              <td class="comp-date">{{ review.regDate }}</td>
              <td>{{ review.viewCnt }}</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="write-review">
        <button class="write-review-btn">
          <router-link :to="`/review/create`">Write Review</router-link>
        </button>
      </div>
      <div class="overflow-auto">
        <b-pagination
          v-model="currentPage"
          :total-rows="reviewCount"
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
  name: "ReviewList",

  data() {
    return {
      perPage: 10,
      currentPage: 1,
      mode: 1,
      keyword: "",
    };
  },
  computed: {
    ...mapState(["reviews"]),
    reviewCount() {
      return this.reviews.length;
    },
    pageReviewList() {
      return this.reviews.slice(
        (this.currentPage - 1) * this.perPage,
        this.currentPage * this.perPage
      );
    },
  },
  created() {
    this.$store.dispatch("getReviews");
  },
  methods: {
    search() {
      const payload = {
        mode: this.mode,
        keyword: this.keyword,
      };
      this.$store.dispatch("getReviews", payload);
    },

    // 로그아웃
    logoutUser() {
      this.$store.dispatch("logoutUser");
      // 로그인 페이지로 이동
      this.$router.push('/login');
    },
  },
};
</script>

<style>
.compList-main {
  height: auto;
}

.compList-list {
  margin-bottom: 0;
}

.write-review {
  text-align: right;
  margin-right: 4rem;
  margin-bottom: 3rem;
}

.write-review-btn {
  background-color: #fb7718;
  width: 8rem;
  height: 3rem;
  border: transparent;
  border-radius: 0.3rem;
}

.write-review-btn:hover {
  background-color: transparent;
  transition: 0.7s;
  color: black;
  font-weight: 800;
  text-shadow: -1px 0 #fb7718, 0 1px #fb7718, 1px 0 #fb7718, 0 -1px #fb7718;
}

.write-review-btn a {
  color: white;
  font-weight: 600;
}

.form-inline {
  display: flex;
  justify-content: center;
}

.custom-select {
  width: 18rem !important;
  margin: 0.8rem 1rem 0 0;
}

.form-control {
  width: 20rem !important;
  margin: 0.8rem 1rem 0 0;
}

.search-btn {
  background-color: #fb7718 !important;
  border: #fb7718 !important;
  margin: 0.8rem 0 0 0;
}

#name-td {
  width: 9rem;
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
</style>
