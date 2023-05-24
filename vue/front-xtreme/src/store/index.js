import Vue from 'vue';
import Vuex from 'vuex';
import axios from 'axios';
import router from '@/router';

Vue.use(Vuex);

const REST_API_USER = `http://localhost:9999/api-user`;
const REST_API_COMPETITION = `http://localhost:9999/api-competition`;
const REST_API_REVIEW = `http://localhost:9999/api-review`;
const REST_API_PARTICIPATE = `http://localhost:9999/api-participate`;

export default new Vuex.Store({
  state: {
    user: {},
    competitions: [],
    competition: {},
    reviews: [],
    review: {},

    participates: [],
    participate: {},

    isLoggedIn: false,
  },
  getters: {
    
  },
  mutations: {
    CREATE_USER(state, payload){
      state.user = payload;
    },
    UPDATE_USER(state, payload){
      state.user = payload;
    },
    LOGIN(state, loginUser){
      state.loginUser = loginUser;
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

    CREATE_PARTICIPATE(state, participate){
      state.participate = participate;
    },
    GET_PARTICIPATE(state, participate){
      state.participate = participate;
    },

    SET_LOGGED_IN(state, isLoggedIn) {
      state.isLoggedIn = isLoggedIn;
    }
  },
  actions: {
    //유저
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
    
    updateUser({ commit }, user){
      const API_URL = `${REST_API_USER}/user`;
      axios({
        url: API_URL,
        method: "PUT",
        params: user,
      })
      .then(() => {
        commit("UPDATE_USER", user);
        // router.push({ name: "myPage", params: { id: user.id }});
      });
    },
    
    login({commit}, loginUser){
      const API_URL = `${REST_API_USER}/login`;
      axios({
        url: API_URL,
        method: "POST",
        params: loginUser,
      })
      .then((res) => {
        localStorage.setItem('loginUser', JSON.stringify(loginUser));
        commit("LOGIN", loginUser);
        alert("Login Success!");
      })
      .catch((err) => {
        console.log(err);
        alert("Login Failed... Please try again.");
        router.back();
      });
    },

    logoutUser({ commit }){
      const API_URL = `${REST_API_USER}/logout`;
      axios({
        url: API_URL,
        method: "GET",
      })
      .then(() => {
        localStorage.removeItem("loginUser");
        commit("LOGIN", null);
        commit("SET_LOGGED_IN", false),
        // this.checkLoginStatus();
        alert("Logout Completed");
      })
      .catch((err) => {
        console.log(err);
        alert("Logout Failed... Please try again.");
      });
    },

    // 로그인 여부 확인
    checkLoginStatus({ commit }) {
      const loginUser = localStorage.getItem('loginUser');
      const isLoggedIn = !!loginUser;
      commit('SET_LOGGED_IN', isLoggedIn);
    },
    
    
    //대회 정보
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



    //리뷰
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
    updateReview({ commit }, review){
      const API_URL = `${REST_API_REVIEW}/review`;
      axios({
        url: API_URL,
        method: "PUT",
        params: review,
      })
      .then(() => {
        commit("UPDATE_REVIEW", review);
        // router.push({ name: "reviewDetail", params: { id: review.id }});
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
        // router.push("/review");
      })
      .catch((err) => {
        console.log(err);
      });
    },


    // 참가신청
    createParticipate({ commit }, participate){
      const API_URL = `${REST_API_PARTICIPATE}/write`;
      axios({
        url: API_URL,
        method: "POST",
        params: participate,
      })
        .then(({data}) => {
          // data = participate.id
          commit("CREATE_PARTICIPATE", participate);
        })
        .catch((err) => {
          console.log(err);
        });
    },

    getParticipate({commit}, id){
      const API_URL = `${REST_API_PARTICIPATE}/detail/${id}`;
      axios({
        url: API_URL,
        method: "GET",
      })
        .then((res) => {
          commit("GET_PARTICIPATE", res.data);
        })
        .catch((err) => {
          console.log(err);
        });
    },

  },
  modules: {
  }
})
