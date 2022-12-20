const VendasService = require('../services/vendas.service');

const getAll = async (_req, res) => {
  try {
    const vendas = await VendasService.getAll();
    return res.status(200).json(vendas);
  } catch (e) {
    console.log(e.message);
    res.status(500).json({ message: 'Ocorreu um erro' });
  }
};

module.exports = {
  getAll,
};
