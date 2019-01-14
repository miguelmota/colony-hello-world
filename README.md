# colony-hello-world

> Colony [Get Started](https://docs.colony.io/colonyjs/docs-get-started/) tutorial learning

## Development

In terminal 1:

1. Download solc:

  ```bash
  docker pull ethereum/solc:0.4.23
  ```

2. Clone colony smart contracts

  ```bash
  git clone --recursive https://github.com/JoinColony/colonyNetwork.git
  cd colonyNetwork

  # checkout a stable revision
  git checkout f73dc84a41f5fc1962c999a24e13b15ba491b8a6
  ```

3. Install and provision submodules:

  ```bash
  git submodule update --init --recursive

  yarn provision:token:contracts
  ```

3. Install dependencies:

  ```bash
  yarn
  ```

4. Install trufflepig cli:

  ```bash
  yarn global add trufflepig
  ```

5. Start gananche (in separate terminal):

  ```bash
  ./node_modules/.bin/ganache-cli -d --gasLimit 7000000 --acctKeys ganache-accounts.json
  ```

6. Deploy contracts:

  ```bash
  ./node_modules/.bin/truffle migrate --reset --compile-all
  ```

7. Start trufflepig:

  ```bash
  trufflepig --ganacheKeyFile ganache-accounts.json
  ```

8. Clone this repository (in another terminal):

  ```bash
  git clone git@github.com:miguelmota/colony-hello-world.git
  cd colony-hello-world/
  ```

9. Install dependencies:

  ```bash
  yarn
  ```

10. Start colony:

  ```bash
  node index.js
  ```

## License

[MIT](LICENSE)
