# About The Application
This project is covid-19 vaccination queuing application, suppose we are going to some hospital or any other vaccination center then we fill in the form and have to wait for our turn beign in a queue.

Suppose there are already 4 people and I am the 5th one then I will be added in the que using application and when I get my vaccination responsible person will click on the checkbox near my name and the status will be done for me.

[TodoList.sol] contain business logic. [createTask] used for adding new person and [toggleCompleted] to mark the status complete as true.

# Prerequisites
Install node js
Install Truffle - npm install -g truffle
Install Ganache
Install and configure Metamask (for the browser extension)

# Getting Started with Application

Clone the repository to your local
Open project under VScode editor or any other editor of choice

## Run below commands

In the project directory, you can run:

### `truffle compile` -> to compile your smart contract
### In order to connect to the blockchain we need to update the truffle-config.js file add the port number    and host from your ganache.
### make sure that the Ganache is up and running
### `truffle migrate` -> for the first time, deploy the smart contract to the blockchain
### `truffle migrate --reset` -> from next time onwards, deploy new copy of smart contract
### `truffle console` -> to open truffle console
### `todoList = await TodoList.deployed()` -> to make sure that the smart contract is deployed to the blockchain
### `todoList.address` -> to fetch the address of smart contract deployed to the blockchain
### copy the address returned in the above step and paste in the react repo file namely [config.js] address field
### run the UI repo now