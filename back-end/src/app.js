const express = require('express');

const Vendas = require('./controllers/vendas.controllers');

const app = express();

app.use(express.json());

app.get('/vendas', Vendas.getAll);
app.get('/vendas/:id', Vendas.getById);
app.post('/vendas', Vendas.createSale);
app.put('/vendas/:id', Vendas.updateSale);
app.delete('/vendas/:id', Vendas.deleteSale);

module.exports = app;
