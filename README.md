# TaxTokenExample
Basic sample code for ERC20 tax token in Solidity

# Deploy with Remix
Go to [Remix](https://remix.ethereum.org), create a new file in the `contracts` folder, and paste the contents of `TaxToken.sol`.

Compile the contract with `Ctrl+S` or `Cmd+S`.

Go to the `DEPLOY & RUN TRANSACTIONS` tab on the left, select `Injected Web3` in the `ENVIRONMENT` drop down. Metamask should ask you for approval.

Deploy the contract using the button, and make sure to enter arguments for `_NAME` and `_SYMBOL`

Metamask will ask you to confirm. After deploy, copy the token address. Go to Metamask and add the token to your assets. You should see it in your wallet!

To test the full functionality, add this token to another address, and transfer the token between addresses. You should see that some of it stays behind.

# Bonus
What flaws can you see with the contract?