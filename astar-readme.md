# mock-grandpa
**mock-grandpa** is a blockchain built using Cosmos SDK and Tendermint and created with [Starport](https://github.com/tendermint/starport).

This project is used to test IBC-go with mock Grandpa module.

## Get started

### Requirements
* Install golang, version >= 1.16.4
* Install Starport
```
sudo curl https://get.starport.network/starport | bash
```

### Launch

```bash
starport chain serve -f -v -c earth.yml >| earth.log
```

### View On-Chain Data in Explorer
* It's recommended to run the explorer to view the on-chain data after the E2E testing finishes. As the Cosmos chain sometimes is not stable when the explorer is running in my testing.
* Please refer to repo `github.com:forbole/big-dipper.git`
* Before starting the explorer, set the `remote` property in `setting.json` as below:
```json
    "remote":{
        "rpc":"http://127.0.0.1:26657",
        "api":"http://127.0.0.1:1317"
    },
```
