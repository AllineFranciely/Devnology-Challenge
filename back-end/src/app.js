const express = require('express');

const Vendas = require('./controllers/vendas.controllers');

const app = express();

app.use(express.json());

app.get('/vendas', Vendas.getAll);

module.exports = app;
