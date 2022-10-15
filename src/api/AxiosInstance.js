import axios from 'axios';

const instance = axios.create({
    baseURL: process.env.CODA_DASHBOARD_API_URL,
    timeout: 300000,
});

export default instance;