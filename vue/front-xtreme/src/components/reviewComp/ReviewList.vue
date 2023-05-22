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
          <tr>
            <th scope="row">테니스</th>
            <td>2023 서울시 시니어 테니스 대회</td>
            <td><a href="">시니어 테니스 대회 후기..!</a></td>
            <td>김보연</td>
            <td class="comp-date">2023-03-25 08:53:10</td>
          </tr>
          <tr>
            <th scope="row">탁구</th>
            <td>제15회 김제지평선배 전국탁구</td>
            <td><a href="">1등해서 상탄 후기🥇</a></td>
            <td>홍성민</td>
            <td class="comp-date">2022-11-18 14:09:55</td>
          </tr>
          <tr>
            <th scope="row">탁구</th>
            <td>제11회 안동하회탈배 전국오픈탁구대회</td>
            <td><a href="">재밌었던 탁구대회 :D</a></td>
            <td>김뮝태</td>
            <td class="comp-date">2023-05-03 23:11:09</td>
          </tr>
					<tr>
            <th scope="row">테니스</th>
            <td>제 2회 서울시 테니스 언더독 대회</td>
            <td><a href="">테린이의 첫 대회 후기!!!🥎</a></td>
            <td>춘식이</td>
            <td class="comp-date">2023-04-28 22:40:23</td>
          </tr>
					<tr>
            <th scope="row">테니스</th>
            <td>제 31회 도봉구청장배 테니스 대회</td>
            <td><a href="">이렇게만 따라하면 상위권! 꿀팁 여러가지</a></td>
            <td>haley</td>
            <td class="comp-date">2023-01-14 19:10:23</td>
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
    rows() {
      return this.items.length;
    },
  },
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