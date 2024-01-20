'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    return queryInterface.bulkInsert('Tags', [
      {
        tagName: 'test',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        tagName: 'learn',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        tagName: 'coding',
        createdAt: new Date(),
        updatedAt: new Date(),
      }
    ]);
  },

  async down (queryInterface, Sequelize) {
    return queryInterface.bulkDelete('Tags', null, {});
  }
};
