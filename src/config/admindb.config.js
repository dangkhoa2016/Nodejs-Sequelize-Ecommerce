require('dotenv').config();

const { DB_NAME, DB_PATH = './storage' } = process.env;

const storagePath = (env) => {
  if (env === 'production') {
    return `${DB_PATH}/${DB_NAME}.sqlite3`;
  } else {
    return `${DB_PATH}/${DB_NAME}_${env}.sqlite3`;
  }
};

module.exports = {
  development: {
    dialect: 'sqlite',
    storage: storagePath('development'),
  },
  test: {
    dialect: 'sqlite',
    storage: storagePath('test'),
  },
  production: {
    dialect: 'sqlite',
    storage: storagePath('production'),
  },
};
