'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    return queryInterface.bulkInsert('Categories', [
      {
        categoryName_en: 'Technology',
        categoryName_mm: 'ဒိုခံရေး',
        categoryName_zh: '科技',
        categoryIcon: 'fa fa-laptop',
        categoryImageUrl: 'https://picsum.photos/id/1018/500/300',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
    ]);
  },

  async down (queryInterface, Sequelize) {
    return queryInterface.bulkDelete('Categories', null, {});
  }
};
