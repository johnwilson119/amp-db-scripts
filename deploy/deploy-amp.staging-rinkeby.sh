AMP_RINKEBY_MATCHING_ENGINE_IP=${AMP_RINKEBY_MATCHING_ENGINE_IP:-'13.125.100.61'} \
AMP_RINKEBY_CLIENT_IP=${AMP_RINKEBY_CLIENT_IP:-'13.125.177.169'} \
AMP_RINKEBY_ETHEREUM_IP=${AMP_RINKEBY_ETHEREUM_IP:-'13.125.62.193'} \
AMP_RINKEBY_EXCHANGE_CONTRACT_ADDRESS=${AMP_RINKEBY_EXCHANGE_CONTRACT_ADDRESS} \
AMP_RINKEBY_WETH_CONTRACT_ADDRESS=${AMP_RINKEBY_WETH_CONTRACT_ADDRESS} \
AMP_RINKEBY_FEE_ACCOUNT_ADDRESS=${AMP_RINKEBY_FEE_ACCOUNT_ADDRESS} \
AMP_RINKEBY_ETHERBASE=${AMP_RINKEBY_ETHERBASE} \
docker stack deploy -c docker-compose.staging-rinkeby.yml amp