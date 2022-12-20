const { Venda } = require('../models');

const getAll = async () => {
  const vendas = await Venda.findAll();

  return vendas;
};

const getById = async (id) => {
  const venda = await Venda.findByPk(id);

  return venda;
};

const createSale = async (clienteName, clienteEmail, clienteEndereco, produto, preco) => {
  const newSale = await Venda.create({ clienteName, clienteEmail, clienteEndereco, produto, preco });

  return newSale;
};

const updateSale = async (id, clienteName, clienteEmail, clienteEndereco, produto, preco) => {
  const [updatedSale] = await Venda.update(
    { clienteName, clienteEmail, clienteEndereco, produto, preco },
    { where: { id } },
  );

  // console.log(updatedSale);
  return updatedSale;
};

const deleteSale = async (id) => {
  const sale = await Venda.destroy(
    { where: { id } },
  );

  // console.log(sale);
  return sale;
};

module.exports = {
  getAll,
  getById,
  createSale,
  updateSale,
  deleteSale,
};
