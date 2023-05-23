<template>
  <div class="agreement-main">
    <div class="agreement-title">
      <h3>개인정보 수집･활용 동의서</h3>
      <h3>Agreement on the Collection and Usage of Personal Information</h3>
    </div>
    <div class="agreement-sub">
      <p>XTREME은 「개인정보보호법」에 따라 아래와 같이 개인정보의 수집·이용에 관하여 귀하의 동의를 얻고자 합니다.</p>
      <p>XTREME, in accordance with the Act on the Protection of Personal Information by the Korean law, seeks your permission for the collection and use of your personal information.</p>
    </div>
    <div class="agreement-content">
      <p>■ 개인정보 수집‧이용 내역</p>
      <p>Purpose of Collection and Usage of Personal Information</p>
      <div class="agreement-content-detail">
        <p>항목(Article): 성명, 주소, 연락처, 전자우편, 생년월일(Name, Address, Phone number, E-mail, Birth)</p>
        <p>수집 목적(Purpose of Collection): 대회신청 및 관련 정보 안내(Registration for the tournaments and providing other information related to tournaments)</p>
        <p>보유 기간(Retention Period): 1년(1 year)</p>
      </div>
      <div class="agreement-content-detail">
        <p>※ 위의 개인정보 수집‧이용에 대한 동의를 거부할 권리가 있습니다. 그러나 동의를 거부할 경우 대회 신청에 제한을 받을 수 있습니다.</p>
        <p>You have the right to refuse to accept the above agreement on the collection and use of personal in-formation. However, submission may be restricted if you do not consent to the agreement.</p>
      </div>
    </div>
    <div class="continue-fill">
      <a @click="$router.back()" class="click-btn">Click Here!</a><br>
      <a>Continue to fill out the application form.</a>
    </div>
    <div class="xtreme-logo">
      <h3>XTREME</h3>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ParticipateAgreement',
}
</script>

<style>
  .agreement-main {
    height: 55rem;
    background-color: black;
    padding: 4rem;
  }

  .agreement-title {
    padding: 8rem 0 0.3rem 0;
  }
  
  .agreement-title h3 {
    color: rgb(220, 213, 213);
    font-size: 1.5rem;
    font-weight: 700;
  }

  .agreement-sub p, .agreement-content p {
    color: rgb(220, 213, 213);
    font-size: 1rem;
    font-weight: 500;
    margin: 0;
  }

  .agreement-content > p {
    font-weight: 700;
    font-size: 1.1rem;
  }

  .agreement-content {
    margin: 1.7rem 0;
  }

  .agreement-content-detail {
    margin-top: 0.7rem;
  }

  .agreement-content-detail > p {
    font-weight: 300;
  }

  .xtreme-logo > h3 {
    font-weight: 700;
    text-align: center;
    margin-top: 4rem;
    color: rgb(79, 77, 77);
  }

  .continue-fill {
    color: gray;
    font-weight: 900;
    
  }

  .click-btn {
    color: rgb(0, 0, 0);
    text-shadow: -1px 0 #FB7718, 0 1px #FB7718, 1px 0 #FB7718, 0 -1px #FB7718;
    font-size: 2rem;
  }
</style>