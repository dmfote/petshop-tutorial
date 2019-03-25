

module.exports = {
  solc: {
    optimizer: {
      enabled: true,
      runs: 200,
    },
  },
  networks: {
    local: {
      host: 'localhost',
      port: 7545,
      network_id: '*',
      gasPrice: 0,
    },
  },
  compilers: {
    solc: {
      version: '0.4.24',
    },
  },
};
