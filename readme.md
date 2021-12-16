# Brief
This project is a simple app chain based on cosmos and it  depends on the ibc-go that has a mock grandpa client. This app chain is used to test the use cases for IBC between substrate and cosmos.

# Install starport
please refer to [starport doc](https://docs.starport.network/guide/install.html)
# star the app chain use defferent config
```
# start the earth chain and redirect the output to file
starport chain serve -v -c earth.yml >| earth.log

# start the mars chain and redirect the output to file
starport chain serve -v -c mars.yml >| mars.log
```
for the command detail, pls refer to [cli doc](https://docs.starport.network/cli/)

## Learn more

- [Starport](https://github.com/tendermint/starport)
- [Starport Docs](https://docs.starport.network)
- [Cosmos SDK documentation](https://docs.cosmos.network)
- [Cosmos SDK Tutorials](https://tutorials.cosmos.network)
- [Discord](https://discord.gg/7fwqwc3afK)
