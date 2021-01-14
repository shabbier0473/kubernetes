const classRoutes = require('./class');
const axios = require('axios');
const { head } = require('request');

const appRouter = (app, fs) => {
    app.get('/', (req, res) => {
        res.send('welcome to the development v2  api-server');
    });

    app.get('/api/bff/test', (req, response) => {
        headers = { 'Content-Type': 'application/json' }
        if (req.headers.team) {
            headers = { team : "sqe"}
        }
        axios.get("http://k8s-default-msa-03bdb36ba1-1669804531.us-east-1.elb.amazonaws.com/api/test", { headers
        }).then(res => {
            res.data.bff = "v2";
            response.send(res.data);
        })
    });

    app.get('/api/bff/other', (req, response) => {
        headers = { 'Content-Type': 'application/json' }
        if (req.headers.team) {
            headers = { team : "sqe"}
        }
        axios.get("http://k8s-default-msa-03bdb36ba1-1669804531.us-east-1.elb.amazonaws.com/api/test", { headers
        }).then(res => {
            res.data.bff = "v2";
            response.send(res.data);
        })
    });

    app.get('/api/bff/all', (req, response) => {
        headers = { 'Content-Type': 'application/json' }
        if (req.headers.team) {
            headers = { team : "sqe"}
        }
        axios.get("http://k8s-default-msa-03bdb36ba1-1669804531.us-east-1.elb.amazonaws.com/api/test", { headers
        }).then(res => {
            axios.get("http://k8s-default-msa-03bdb36ba1-1669804531.us-east-1.elb.amazonaws.com/api/test", { headers
            }).then(result => {
                result.data.bff = "v2";
                result.data.otherMSA = res.data;
                response.send(result.data);
            })
        })
    });

    classRoutes(app, fs);
};

module.exports = appRouter;
