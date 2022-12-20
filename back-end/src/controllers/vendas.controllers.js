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

const getById = async (req, res) => {
  try {
    const { id } = req.params;
    const venda = await VendasService.getById(id);

    if (!venda) return res.status(404).json({ message: 'Venda não encontrada' });

    return res.status(200).json(venda);
  } catch (e) {
    console.log(e.message);
    res.status(500).json({ message: error500Message });
  }
};

const createSale = async (req, res) => {
  try {
    const { clienteName, clienteEmail, clienteEndereco, produto, preco } = req.body;
    const newSale = await VendasService.createSale(clienteName, clienteEmail, clienteEndereco, produto, preco);

    return res.status(201).json(newSale);
  } catch (e) {
    console.log(e.message);
    res.status(500).json({ message: error500Message });
  }
};

const updateSale = async (req, res) => {
  try {
    const { clienteName, clienteEmail, clienteEndereco, produto, preco } = req.body;
    const { id } = req.params;
    const updatedSale = await VendasService.updateSale(id, clienteName, clienteEmail, clienteEndereco, produto, preco);

    if (!updatedSale) return res.status(404).json({ message: 'Venda não encontrada' });

    return res.status(200).json({ message: 'Venda atualizada com sucesso!' });
  } catch (e) {
    console.log(e.message);
    res.status(500).json({ message: error500Message });
  }
};

const deleteSale = async (req, res) => {
  try {
    const { id } = req.params;
    await VendasService.deleteSale(id);

    return res.status(200).json({ message: 'Venda excluída com sucesso!' });
  } catch (e) {
    console.log(e.message);
    res.status(500).json({ message: error500Message });
  }
};

module.exports = {
  getAll,
  getById,
  createSale,
  updateSale,
  deleteSale,
};
