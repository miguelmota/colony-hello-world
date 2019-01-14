// Import the prerequisites
const { providers, Wallet } = require('ethers');
const { default: EthersAdapter } = require('@colony/colony-js-adapter-ethers');
const { TrufflepigLoader } = require('@colony/colony-js-contract-loader-http');
const { default: ColonyNetworkClient } = require('@colony/colony-js-client');

// Create an instance of TrufflepigLoader
const loader = new TrufflepigLoader();

// Create an instance of JsonRPCProvider using the url of our test network
const provider = new providers.JsonRpcProvider('http://localhost:8545/');

// Create an async function
const example = async () => {

  // Get the private key from the first account
  const { privateKey } = await loader.getAccount(0);

  // Create an instance of Wallet using the private key and provider
  const wallet = new Wallet(privateKey, provider);


  // Create an instance of EthersAdapter
  const adapter = new EthersAdapter({
    loader,
    provider,
    wallet,
  });

  // Create an instance of ColonyNetworkClient using the adapter
  const networkClient = new ColonyNetworkClient({ adapter });

  // Initialize the client
  await networkClient.init();

  // Congrats, you've connected to the network!
  console.log('network address: ' + networkClient.contract.address);

  // Create an ERC20 token (you could also skip this step and use a pre-existing token)
  const { meta: { receipt: { contractAddress } } } = await networkClient.createToken.send({
    name: 'Token',
    symbol: 'TKN',
  });

  // Congrats, you've created an ERC20 token!
  console.log('token address: ' + contractAddress);

  // Create a colony using the token address of the ERC20 token we created
  const { eventData: { colonyId, colonyAddress } } = await networkClient.createColony.send({
    tokenAddress: contractAddress,
  });

  // Congrats, you've created a colony!
  console.log('colony id: ' + colonyId);
  console.log('colony address: ' + colonyAddress);

  // Get an initialized ColonyClient for the colony we just created
  const colonyClient = await networkClient.getColonyClient(colonyId);

};

// Execute the example async function
example()
  .then(() => process.exit())
  .catch(error => console.error(error));
