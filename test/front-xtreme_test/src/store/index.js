import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios';

Vue.use(Vuex)

const REST_API_User = `http://localhost:9999/api-user`;

export default new Vuex.Store({
  state: {
    user: {},
  },
  getters: {
  },
  mutations: {
    CREATE_USER(state, payload){
      state.user = payload;
    },
  },
  actions: {
    createUser({commit}, user){
      const API_URL = `${REST_API_User}/signup`;
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
        })
    }
  },
  modules: {
  }
})
