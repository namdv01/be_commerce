const { Sequelize } = require('sequelize');

// Option 3: Passing parameters separately (other dialects)
const { DB_DATABASE: database, DB_USERNAME: username, DB_PASSWORD: password, DB_HOST: host, DB_DIALECT: dialect, DB_PORT: port } = process.env;
const sequelize = new Sequelize(database, username, password, {
  host,
  dialect: dialect || 'mysql',
  port,
});

const connectDB = async () => {
  try {
    await sequelize.authenticate();
    console.log('Connection has been established successfully.');
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

module.exports = { sequelize, connectDB };
