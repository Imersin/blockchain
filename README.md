Title
Blockchain NFT Project.

Installation/How to Deploy
Deploy contracts (Tazamat.sol and Cringe.sol) from REMIX IDE
Edit index.js and fill Cringe_Contract_Address, Cringe_Contract_ABI, Tazamat_Contract_Address, Tazamat_Contract_ABI with data you can get from REMIX.
Edit storeAddress to account that is going to be the "storage" of your shop.
Create ipfs links to json. Example: https://ipfs.filebase.io/ipfs/QmaNfH93CNokUC1VQo9oYPqVK8DG9AwpQnuXsifcHHXcA5
Call safeMint function of your Tazamat contract with to(storeAddress) and uri(example: 'ipfs://QmY5MFK47d6MpmW2StkK9ZupSSw6uRKA34nP16vTSqKdhH') to add NFT-s (up to 4)
Run Apache or other program to create your server. Then use it to run index.html

Description/Usage
This site is made to buy ERC20 Tokens, then using this tokens buy NFT-s (ERC721)
You can check total tokens, your balance, buy and sell NFT-s. To add NFT-s to the site you should firstly safeMint to your contract.

Technologies
SOLIDITY
HTML/CSS
Ether.js
Jquery
Metamask
