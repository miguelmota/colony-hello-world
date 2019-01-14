all:
	@echo "no default"

.PHONY: start/ganache
start/ganache:
	@./node_modules/.bin/ganache-cli --acctKeys "./ganache-accounts.json" --noVMErrorsOnRPCResponse --gasLimit 6721975 \
    --account="0x0355596cdb5e5242ad082c4fe3f8bbe48c9dba843fe1f99dd8272f487e70efae, 100000000000000000000" \
    --account="0xe9aebe8791ad1ebd33211687e9c53f13fe8cca53b271a6529c7d7ba05eda5ce2, 100000000000000000000" \
    --account="0x6f36842c663f5afc0ef3ac986ec62af9d09caa1bbf59a50cdb7334c9cc880e65, 100000000000000000000" \
    --account="0xf184b7741073fc5983df87815e66425928fa5da317ef18ef23456241019bd9c7, 100000000000000000000" \
    --account="0x7770023bfebe3c8e832b98d6c0874f75580730baba76d7ec05f2780444cc7ed3, 100000000000000000000" \
    --account="0xa9442c0092fe38933fcf2319d5cf9fd58e3be5409a26e2045929f9d2a16fb090, 100000000000000000000" \
    --account="0x06af2c8000ab1b096f2ee31539b1e8f3783236eba5284808c2b17cfb49f0f538, 100000000000000000000" \
    --account="0x7edaec9e5f8088a10b74c1d86108ce879dccded88fa9d4a5e617353d2a88e629, 100000000000000000000" \
    --account="0xe31c452e0631f67a629e88790d3119ea9505fae758b54976d2bf12bd8300ef4a, 100000000000000000000" \
    --account="0x5e383d2f98ac821c555333e5bb6109ca41ae89d613cb84887a2bdb933623c4e3, 100000000000000000000" \
    --account="0x33d2f6f6cc410c1d46d58f17efdd2b53a71527b27eaa7f2edcade351feb87425, 100000000000000000000" \
    --account="0x32400a48ff16119c134eef44e2627502ce6e367bc4810be07642275a9db47bf7, 100000000000000000000"

.PHONY: start/trufflepig
start/trufflepig:
	@trufflepig --ganacheKeyFile ganache-accounts.json

.PHONY: compile/contracts
compile/contracts:
	@./node_modules/.bin/truffle migrate --reset --compile-all
