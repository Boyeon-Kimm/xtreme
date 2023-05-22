<template>
  <div class="compList-main">
    <!-- <header-nav-2></header-nav-2> -->
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
          <tr>
            <th scope="row">테니스</th>
            <td><a href="">2023 서울시 시니어 테니스 대회</a></td>
            <td class="comp-date">2023-03-25 09:00</td>
            <td class="comp-date">2023-03-09 10:00 ~ 2023-04-15 18:00</td>
          </tr>
          <tr>
            <th scope="row">탁구</th>
            <td><a href="">제15회 김제지평선배 전국탁구</a></td>
            <td class="comp-date">2023-11-18 09:00</td>
            <td class="comp-date">2023-10-20 20:00 ~ 2023-11-08 11:00</td>
          </tr>
          <tr>
            <th scope="row">탁구</th>
            <td><a href="">제11회 안동하회탈배 전국오픈탁구대회</a></td>
            <td class="comp-date">2023-06-03 09:00</td>
            <td class="comp-date">2023-04-01 15:00 ~ 2023-05-22 13:00</td>
          </tr>
					<tr>
            <th scope="row">테니스</th>
            <td><a href="">제 2회 서울시 테니스 언더독 대회</a></td>
            <td class="comp-date">2023-04-28 09:00</td>
            <td class="comp-date">2023-04-10 07:00 ~ 2023-04-27 18:00</td>
          </tr>
					<tr>
            <th scope="row">테니스</th>
            <td><a href="">제 31회 도봉구청장배 테니스 대회</a></td>
            <td class="comp-date">2023-05-14 09:00</td>
            <td class="comp-date">2023-04-17 10:00 ~ 2023-05-10 19:00</td>
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
export default {
  name: "CompetitionList",

  data() {
    return {
			rows: 10,
      perPage: 2,
      currentPage: 1,
    };
  },
  computed: {
    rows() {
      return this.items.length;
    },
  },
};
</script>

<style>
.compList-main {
  height: 55rem;
  background-color: black;
}

.compList-title {
  padding: 8rem 0 0 4rem;
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
