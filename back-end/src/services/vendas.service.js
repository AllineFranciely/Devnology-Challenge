const { Venda } = require('../models');

const getAll = async () => {
  const vendas = await Venda.findAll();

  return vendas;
};

module.exports = {
  getAll,
};
