# Smart Contract Bank

A simple Smart Contract Bank Snippet in Solidity where addresses can deposit and withdraw their own funds.

It uses the "Checks-Effects-Interaction" Pattern; we check all the prerequisites before executing a feature in a certain function, used here to avoid re-entrancy attacks, such as calling the function again before the first instance of the function containing the call is finished i.e. what happened with the DAO exploit in 2016 that led to the Ethereum / Ethereum Classic split.

So even if both or all parties are having access to the same smart contract and can run the same functions, inherently due to the data structure used for the smart contract, you can only withdraw your own funds and not someone else's.
