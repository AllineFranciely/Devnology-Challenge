# Devnology-Challenge
O back-end do projeto foi realizado em Node.js utilizando-se o Express e o Sequelize.
Foi constrída uma API REST seguindo o modelo CRUD, o que permite que o usuário faça interações de atualização, adição, exclusão e requisição à API.
A tabela de vendas foi pensada para conter um resmo da compra do cliente, nela é possível juntar as informações de nome, email e endereço do cliente junto das informações de nome e preço do produto comprado.
Como os produtos já vem de uma API pronta achei que seria mais simples fazer apenas 1 tabela em novo banco de dados e manipulá-la.

Para iniciar a aplicação siga os seguintes comandos:
1. Dê um git clone nesse repositório;
2. Entre na pasta de back-end e rode o comando <npm install> para instalar as dependências do projeto.
3. Crie um banco de dados vazio manualmente;
4. Atualize as informações no arquivo src/config/config.json. Coloque seu user, password, host e nomde do banco de dados;
5. Para gerar a migration de criação da tabela Vendas rode o comando <npx sequelize db:migrate>;
6. Para povoar a tabela rode o comando <npx sequelize db:seed:all>. Nesta etapa é possível atualizar manualmente as informações da seeder antes de rodar o comando.
7. Para rodar a aplicação execute o comando <node src/server.js>. Deve aparecer no console a mensagem: Escutando na porta 3001.

 Extra: Para reverter o seed utilize o comando <npx sequelize db:seed:undo:all>.
  Para reverter a migration utilize o comando <npx sequelize db:migrate:undo>.
