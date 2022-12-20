const VendasModel = (sequelize, DataTypes) => {
  const Venda = sequelize.define('Venda', {
    clienteName: DataTypes.STRING,
    clienteEmail: DataTypes.STRING,
    clienteEndereco: DataTypes.STRING,
    produto: DataTypes.STRING,
    preco: DataTypes.STRING,
  });

  return Venda;
};

module.exports = VendasModel;
