const provider = new ethers.providers.Web3Provider(web3.currentProvider);
provider.send("eth_requestAccounts", []).then(() => {
  provider.listAccounts().then((accounts) => {
    const signer = provider.getSigner(accounts[0]);
Tazamat = new ethers.Contract(
      Tazamat_Contract_Address,
      Tazamat_Contract_ABI,
      signer
    );
    Cringe = new ethers.Contract(
      Cringe_Contract_Address,
      Cringe_Contract_ABI,
      signer
    );
  });
});
