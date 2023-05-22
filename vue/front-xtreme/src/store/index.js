import Vue from 'vue';
import Vuex from 'vuex';
import axios from 'axios';
import router from '@/router';

Vue.use(Vuex);

const REST_API = `http://localhost:9999/api`;

export default new Vuex.Store({
  state: {
    reviews: []
  },
  getters: {
  },
  mutations: {
    CREATE_REVIEW(state, review) {
      state.reviews.push(review)
    },
    GET_REVIEWS(state, reviews) {
      state.reviews = reviews
    },
    GET_REVIEW(state, review) {
      state.review = review
    },
    UPDATE_REVIEW(state, review) {
      state.review = review
    },
  },
  actions: {
    deleteReview({commit}, id){
      const API_URL = `${REST_API}/review`
      axios({
        url: API_URL,
        method: "DELETE"
      }).then(() => {
        commit
        router.push({name: "reviewList"})
      }).catch((err) => {
        console.log(err);
      })
    },
    updateBoard({commit}, review){
      const API_URL = `${REST_API}/review`
      axios({
        url: API_URL,
        method: "PUT",
        params: review,
      }).then(() => {
        commit("UPDATE_REVIEW", review);
        router.push({name: "reviewDetail", params: {id: review.id}})
      })
    },

    getReview({commit}, id) {
      const API_URL = `{REST_API}/review/${id}`
      axios({
        url: API_URL,
        method: "GET"
      }).then((res) => {
        commit("GET_REVIEW", res.data);
      }).catch((err) => {
        console.log(err);
      })
    },

    getReviews({commit}){
      const API_URL = `${REST_API}/review`
      axios({
        url: API_URL,
        method: "GET",
      })
      .then((res) => {
        commit("GET_REVIEWS", res.data);
      })
      .catch((err) => {
        console.log(err)
      })
    },
    createReview({commit}, review){
      const API_URL = `${REST_API}/review`
      axios({
        url: API_URL,
        methods: "POST",
        params: review,
      })
      .then(() => {
        commit("CREATE_REVIEW", review);
        router.push("/review");
      })
      .catch((err) => {
        console.log(err);
      })
    }
  },
  modules: {
  }
})
