import Vue from 'vue';
import Vuex from 'vuex';
import axios from 'axios';
import router from '@/router';

Vue.use(Vuex);

const REST_API_USER = `http://localhost:9999/api-user`;
const REST_API_COMPETITION = `http://localhost:9999/api-competition`;
const REST_API_REVIEW = `http://localhost:9999/api-review`;

export default new Vuex.Store({
  state: {
    user: {},
    competitions: [],
    competition: {},
    reviews: [],
    review: {},
  },
  getters: {
  },
  mutations: {
    CREATE_USER(state, payload){
      state.user = payload;
    },


    GET_COMPETITIONS(state, competitions){
      state.competitions = competitions;
    },
    GET_COMPETITION(state, competition){
      state.competition = competition;
    },


    CREATE_REVIEW(state, payload) {
      state.reviews.push(payload);
    },
    GET_REVIEWS(state, payload) {
      state.reviews = payload;
    },
    GET_REVIEW(state, review) {
      state.review = review;
    },
    UPDATE_REVIEW(state, payload) {
      state.review = payload;
    },
  },
  actions: {
    createUser({commit}, user){
      const API_URL = `${REST_API_USER}/signup`;
      axios({
        url: API_URL,
        method: "POST",
        params: user,
      })
        .then(() =>{
          commit("CREATE_USER", user);
        })
        .catch((err) => {
          console.log(err);
        });
    },


    

    getCompetitions({commit}){

      const API_URL = `${REST_API_COMPETITION}/comp`;
      axios({
        url: API_URL,
        method: "GET",
        //params: competition,
      })
        .then((res) => {
          commit("GET_COMPETITIONS", res.data);
        })
        .catch((err) => {
          console.log(err);
        });
    },

    getCompetition({commit}, id){
      const API_URL = `${REST_API_COMPETITION}/comp/${id}`;
      axios({
        url: API_URL,
        method: "GET",
      })
        .then((res) => {
          commit("GET_COMPETITION", res.data);
        })
        .catch((err) => {
          console.log(err);
        });
    },



    deleteReview({ commit }, id){
      const API_URL = `${REST_API_REVIEW}/review/${id}`;
      axios({
        url: API_URL,
        method: "DELETE",
      })
      .then(() => {
        commit;
        router.push({ name: "reviewList" });
      })
      .catch((err) => {
        console.log(err);
      });
    },
    updateBoard({ commit }, review){
      const API_URL = `${REST_API_REVIEW}/review`;
      axios({
        url: API_URL,
        method: "PUT",
        params: review,
      })
      .then(() => {
        commit("UPDATE_REVIEW", review);
        router.push({ name: "reviewDetail", params: { id: review.id }});
      });
    },

    getReview({ commit }, id) {
      const API_URL = `${REST_API_REVIEW}/review/detail/${id}`;
      axios({
        url: API_URL,
        method: "GET",
      })
        .then((res) => {
          commit("GET_REVIEW", res.data);
        })
        .catch((err) => {
          console.log(err);
        });
    },

    getReviews({ commit }, payload){
      let params = null;
      if(payload) params = payload;

      const API_URL = `${REST_API_REVIEW}/review`;
      axios({
        url: API_URL,
        method: "GET",
        params,
      })
      .then((res) => {
        commit("GET_REVIEWS", res.data);
      })
      .catch((err) => {
        console.log(err);
      })
    },

    createReview({ commit }, review) {
      const API_URL = `${REST_API_REVIEW}/review`;
      axios({
        url: API_URL,
        method: "POST",
        params: review,
      })
      .then(() => {
        commit("CREATE_REVIEW", review);
        router.push("/review");
      })
      .catch((err) => {
        console.log(err);
      });
    },
  },
  modules: {
  }
})
