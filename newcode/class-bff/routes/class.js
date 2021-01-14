const axios = require('axios');

const fileRoutes = (app, fs) => {
    app.get('/api/bff/class', (req, response) => {
        axios.get("http://k8s-default-msa-03bdb36ba1-908944475.us-east-1.elb.amazonaws.com/api/class", {
            headers: { 'Content-Type': 'application/json' }
        }).then(res => {
            response.send(res.data);
        })
    });
};
 
module.exports = fileRoutes;
