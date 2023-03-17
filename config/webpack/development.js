process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

module.exports = {
  // ...
  node: {
    __dirname: true,
    __filename: true,
  },
};
