'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Vendas', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      clienteName: {
        type: Sequelize.STRING
      },
      clienteEmail: {
        type: Sequelize.STRING
      },
      clienteEndereco: {
        type: Sequelize.STRING
      },
      produto: {
        type: Sequelize.STRING
      },
      preco: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('Vendar');
  }
};
