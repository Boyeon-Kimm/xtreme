import Vue from 'vue';
import VueRouter from 'vue-router';
import HomeView from '../views/HomeView.vue';
import CompetitionView from '../views/CompetitionView.vue';
import ParticipateView from '../views/ParticipateView.vue';
import LoginView from '../views/LoginView.vue';
import JoinUsView from '../views/JoinUsView.vue';
import MyPageView from '../views/MyPageView.vue';
import ReviewView from '../views/ReviewView.vue';

import CompetitionDetail from '../components/competition/CompetitionDetail.vue';
import CompetitionList from '../components/competition/CompetitionList.vue';

import ParticipateCreate from '../components/participate/ParticipateCreate.vue';
import ParticipateDetail from '../components/participate/ParticipateDetail.vue';
import ParticipateUpdate from '../components/participate/ParticipateUpdate.vue';
import ParticipateAgreement from '../components/participate/ParticipateAgreement.vue';

import ReviewCreate from '../components/reviewComp/ReviewCreate.vue';
import ReviewDetail from '../components/reviewComp/ReviewDetail.vue';
import ReviewList from '../components/reviewComp/ReviewList.vue';
import ReviewUpdate from '../components/reviewComp/ReviewUpdate.vue';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: "/competition",
    component: CompetitionView,
    children: [
      {
        path: "",
        name: "competitionList",
        component: CompetitionList,
      },
      {
        path: ":id",
        name: "competitionDetail",
        component: CompetitionDetail,
      },
    ],
  },
  {
    path: "/participate",
    component: ParticipateView,
    children: [
      {
        path: "",
        name: "participateCreate",
        component: ParticipateCreate,
      },
      {
        path: ":id",
        name: "participateDetail",
        component: ParticipateDetail,
      },
      {
        path: "update",
        name: "participateUpdate",
        component: ParticipateUpdate,
      },
      {
        path: "agreement",
        name: "participateAgreement",
        component: ParticipateAgreement,
      },
    ],
  },
  {
    path: "/review",
    component: ReviewView,
    children: [
      {
        path: "",
        name: "reviewList",
        component: ReviewList,
      },
      {
        path: "create",
        name: "reviewCreate",
        component: ReviewCreate,
      },
      {
        path: ":id",
        name: "reviewDetail",
        component: ReviewDetail,
      },
      {
        path: "update",
        name: "reviewUpdate",
        component: ReviewUpdate,
      },
    ],
  },
  {
    path: "/login",
    name: "login",
    component: LoginView,
  },
  {
    path: "/joinus",
    name: "joinus",
    component: JoinUsView,
  },
  {
    // path: "/mypage/:userId",
    path: "/myPage",
    name: "myPage",
    component: MyPageView,
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
})

export default router;
