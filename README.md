# colony-hello-world

> Colony [Get Started](https://docs.colony.io/colonyjs/docs-get-started/) tutorial

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
  git checkout d50abbeb9f119850cb70e9ec854576123a707205
  ```

3. Install dependencies:

  ```bash
  yarn

  yarn global add trufflepig
  ```

4. Start gananche (in separate terminal):

  ```bash
  ./node_modules/.bin/ganache-cli -d --gasLimit 7000000 --acctKeys ganache-accounts.json
  ```

5. Deploy contracts:

  ```bash
  ./node_modules/.bin/truffle migrate --reset --compile-all
  ```

6. Start trufflepig:

  ```bash
  trufflepig --ganacheKeyFile ganache-accounts.json
  ```

7. Clone this repository (in another terminal):

  ```bash
  git clone git@github.com:miguelmota/colony-hello-world.git
  cd colony-hello-world/
  ```

8. Install dependencies:

  ```bash
  yarn
  ```

9. Start colony:

  ```bash
  node index.js
  ```

## License

[MIT](LICENSE)
