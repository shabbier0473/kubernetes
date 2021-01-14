const classRoutes = require('./class');
const axios = require('axios');

const appRouter = (app, fs) => {
    app.get('/', (req, res) => {
        res.send('welcome to the development api-server');
    });

    app.get('/api/bff/test', (req, response) => {
        axios.get("http://k8s-default-msa-03bdb36ba1-908944475.us-east-1.elb.amazonaws.com/api/test", {
            headers: { 'Content-Type': 'application/json' }
        }).then(res => {
            res.data.bff = "msa-2-v2";
            response.send(res.data);
        })
    });

    app.get('/api/bff/other', (req, response) => {
        axios.get("http://k8s-default-msa-03bdb36ba1-908944475.us-east-1.elb.amazonaws.com/api/test", {
            headers: { 'Content-Type': 'application/json' }
        }).then(res => {
            res.data.bff = "msa-2-otherv2";
            response.send(res.data);
        })
    });

    app.get('/api/bff/all', (req, response) => {
        axios.get("http://k8s-default-msa-03bdb36ba1-908944475.us-east-1.elb.amazonaws.com/api/test", {
            headers: { 'Content-Type': 'application/json' }
        }).then(res => {
            axios.get("http://k8s-default-msa-03bdb36ba1-908944475.us-east-1.elb.amazonaws.com/api/test", {
            headers: { 'Content-Type': 'application/json' }
            }).then(result => {
                result.data.bff = "msa-2-allv2";
                result.data.otherMSA = res.data;
                response.send(result.data);
            })
        })
    });

    classRoutes(app, fs);
};

module.exports = appRouter;
