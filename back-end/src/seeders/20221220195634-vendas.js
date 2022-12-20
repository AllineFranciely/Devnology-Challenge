'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => queryInterface.bulkInsert('Vendas',
    [
      {
        clienteName: 'Alline',
        clienteEmail: 'alline@email.com',
        clienteEndereco: 'Rua, 0, bairro. City - ES',
        produto: 'Refined Plastic Bike',
        preco: '127.00',
        createdAt: Sequelize.literal('CURRENT_TIMESTAMP'),
        updatedAt: Sequelize.literal('CURRENT_TIMESTAMP'),
      },
      {
        clienteName: 'Vinícius',
        clienteEmail: 'email@email.com',
        clienteEndereco: 'Rua, 1, bairro. City - ES',
        produto: 'Refined Plastic Bike',
        preco: '127.00',
        createdAt: Sequelize.literal('CURRENT_TIMESTAMP'),
        updatedAt: Sequelize.literal('CURRENT_TIMESTAMP'),
      },
    ], {}),

    down: async (queryInterface) => queryInterface.bulkDelete('Vendas', null, {}),
};
