# Msg.Sender Object

**This contract returns who interacted with the contract last**

One very important object is the globally available msg-object. The msg-object is a special variables which always exist in the global namespace and is used to provide information about the blockchain or the transaction. It is a public object that contains a bunch of properties. One of the properties, `sender`, has the address of the person interacting with the smart contract. If an account is calling the contract, then it will contain the address of the account. If an account is interacting with a contract, and that contract is interacting with another contract, then the `msg.sender` will contain the address of the intermediate contract. A lot of issues have happened in the past with DAO’s interacting with the contract in the wrong way – with access lists for example.
