import axios from 'axios';

const instance = axios.create({
    baseURL: process.env.VUE_APP_API_URL,
});

// 로그인 함수
function loginUser(userData){
    return instance.post('login', userData);
}

export { loginUser };