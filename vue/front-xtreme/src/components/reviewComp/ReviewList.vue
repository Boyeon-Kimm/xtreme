<template>
  <div class="compList-main">
    <div class="compList-title">
      <h3>Participants Reviews</h3>
      <div class="compList-sub-title">
        <p>Participant Reviews page!</p>
        <p>
          Here, you can explore firsthand experiences and testimonials from participants of our sports tournaments.
        </p>
        <p>Read on to discover what athletes and sports enthusiasts have to say about their participation:</p>
      </div>
    </div>
    <div class="compList-list">
      <table class="table table-dark table-hover table-bordered">
        <thead>
          <tr>
            <th scope="col">Sports</th>
            <th scope="col">Tournaments Name</th>
            <th scope="col">Title</th>
            <th scope="col" class="comp-date">Name</th>
            <th scope="col" class="comp-date">Post Date</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="review in reviews" :key="review.id">
            <th scope="row">{{ review.sports }}}</th>
            <td>{{ review.compTitle }}</td>
            <td><router-link :to="`/review/${review.id}`">{{ review.title }}</router-link></router-link></td>
            <td>{{ review.userId }}</td>
            <td class="comp-date">{{ review.regDate }}</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="write-review">
      <button class="write-review-btn">Write Review</button>
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
  name: "ReviewList",

  data() {
    return {
			rows: 10,
      perPage: 2,
      currentPage: 1,
    };
  },
  computed: {
    ...mapState(['reviews']),
    rows() {
      return this.items.length;
    },
  },
  created() {
    this.$store.dispatch('getReviews');
  }
};
</script>

<style>
  .write-review {
    text-align: right;
    margin-right: 4rem;
    margin-bottom: 3rem;
  }

  .write-review-btn {
    background-color: #FB7718;
    color: white;
    font-weight: 600;
    width: 7.3rem;
    height: 3rem;
    border: transparent;
    border-radius: 0.3rem;
  }
</style>