const axios = require('axios');

const fileRoutes = (app, fs) => {
    app.get('/api/bff/class', (req, response) => {
        headers = { 'Content-Type': 'application/json' }
        if (req.headers.team) {
            headers = { team : "sqe"}
        }
        axios.get("http://k8s-default-msa-03bdb36ba1-1669804531.us-east-1.elb.amazonaws.com/api/class", { headers
        }).then(res => {
            response.send(res.data);
        })
    });
};
 
module.exports = fileRoutes;
