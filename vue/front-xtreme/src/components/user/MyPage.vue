<template>
  <div class="compList-main">
    <div class="compList-title">
      <h3>MyPage</h3>
      <div class="compList-sub-title">
        <p>Welcome to your personal dashboard - MyPage!</p>
        <p>
          This is your dedicated space where you can access and manage all your
          information and activities on our website.
        </p>
      </div>
    </div>
    <div class="mypage-list">
      <div class="my-info">
        <h3 class="border-bottom">My Information</h3>
				<div class="about-my-info">
					<div class="my-info-img">
						<img src="@/assets/profile.jpg" alt="profile">
					</div>
					<div class="my-info-title">
						<h5>Name :</h5>
						<h5>ID :</h5>
						<h5>Email :</h5>
						<h5>Age :</h5>
					</div>
					<div class="my-info-content">
						<h6>춘식이</h6>
						<h6>choonsik</h6>
						<h6>choonsik@gmail.com</h6>
						<h6>4</h6>
					</div>
				</div>
				<div class="my-info-btn">
					<button class="btn btn-light">Update</button>
					<button class="btn btn-outline-danger">Deactivate</button>
				</div>
      </div>
      <div class="parti-review">
        <div class="my-parti">
          <h3 class="border-bottom">My Applications</h3>
					<div class="my-review-table">
            <b-table small :fields="applis" hover :items="appliItems" responsive="sm">
              <template #cell(index)="data">
                {{ data.index + 1 }}
              </template>
            </b-table>
          </div>
        </div>
        <div class="my-review">
          <h3 class="border-bottom">My Reviews</h3>
          <div class="my-review-table">
            <b-table small :fields="fields" hover :items="items" responsive="sm">
              <template #cell(index)="data">
                {{ data.index + 1 }}
              </template>
            </b-table>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "MyPage",
  data() {
    return {
      fields: [
        "index",
        { key: "title", label: "Title" },
        { key: "regDate", label: "Post Date" },
      ],
      items: [
				{ title: "테니스 재밌다", regDate: "2023.05.23 10:16:01" },
				{ title: "같이 테니스 대회 나가실 분 구합니다", regDate: "2023.02.03 22:48:15" },
				{ title: "테니스 재밌다", regDate: "2023.05.23 10:16:01" },
      ],
			applis: [
        "index",
        { key: "compTitle", label: "Tournament Name" },
        { key: "appliDate", label: "Application Date" },
      ],
      appliItems: [
				{ compTitle: "제 1회 서울시 테니스대회", appliDate: "2023.05.23 10:16:01" },
				{ compTitle: "제 233회 탁구 대회", appliDate: "2023.02.03 22:48:15" },
				{ compTitle: "2023 시니어 테니스 대회", appliDate: "2023.01.13 10:16:01" },
      ],
    };
  },
};
</script>

<style scoped>
.compList-main {
  height: auto;
	padding-bottom: 6rem;
}

.mypage-list {
  /* width: 100%; */
  height: auto;
  display: flex;
  justify-content: center;
  padding: 1rem 4rem;
}

.my-info {
  width: 50%;
  height: 22.5rem;
  margin-right: 2rem;
  border: 2px solid rgba(251, 119, 24, 0.7);
  border-radius: 0.4rem;
}

.my-info > h3,
.my-parti > h3,
.my-review > h3 {
  color: rgb(204, 204, 204);
  margin: 1.5rem 0 0 2rem;
  display: inline-block;
}

.parti-review {
  width: 50%;
  height: auto;
}

.my-parti {
	margin-bottom: 1rem;
}

.my-parti,
.my-review {
  height: auto;
  border: 2px solid rgba(251, 119, 24, 0.7);
  border-radius: 0.4rem;
}

.my-review-table {
	background-color: rgb(255, 255, 255, 0.65);
	/* border: rgb(255, 255, 255, 0.65); */
	/* border-radius: 0.6rem; */
	margin: 1rem 2rem 1.5rem;
	text-align: center;
}

.table.b-table.table-sm {
	border-radius: 0.4rem;
}

.about-my-info {
	/* border: solid pink; */
	display: flex;
	flex-direction: row;
	justify-content: center;
	height: 11rem;
	margin-top: 2rem;
}

.my-info-img {
	/* border: solid red; */
	width: 14rem;
	height: 10rem;
	margin-left: 2rem;
}

.my-info-img > img {
	display: block;
	width: 100%;
	height: 100%;
}

.my-info-title {
	/* border: solid green; */
	width: 10rem;
	height: 10rem;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	color: white;
	text-align: right;
	margin-right: 0.6rem;
}

.my-info-content {
	/* border: solid yellow; */
	width: 100%;
	height: 9.7rem;
	display: flex;
	margin-top: 0.25rem;
	flex-direction: column;
	justify-content: space-between;
	text-align: left;
	color: white;
}

.my-info-btn {
	text-align: right;
	margin: 1.7rem 2rem 1.5rem 0;
}

.my-info-btn button {
	margin-left: 0.4rem;
	font-weight: 600;
}

.btn.btn-light {
	background-color: #FB7718;
	border: 1px solid #FB7718;
	color: white;
}
</style>
