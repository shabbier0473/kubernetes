const classRoutes = require('./class')
const appRouter = (app, fs) => {
    app.get('/', (req, res) => {
        res.send('welcome to the development msa-2 api-server');
    });
    app.get('/api/test', (req, res) => {
        res.send({
            "data": "microservice-2 (msa-2)"
        });
    });

    classRoutes(app, fs);
};

module.exports = appRouter;
