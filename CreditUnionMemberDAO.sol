pragma Solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.7/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";
import "https://docs.openzeppelin.com/contracts/4.x/api/token/erc721#IERC721-balanceOf-address-";
import "https://docs.openzeppelin.com/contracts/4.x/api/token/erc721#ERC721Burnable";


contract CreditUnionMemberDAO is ERC721PresetMinterPauserAutoId, Ownable {
    bytes32 MembershipIDs[];
    bytes32 MemberAddressess[];


    //Override mint and burn so that only owner can call. This way they can decide who is in the group and who isn't.
    function mintNFTDID(address to, bool) public view virtual override {
        require(hasRole(MINTER_ROLE, _msgSender()), "ERC721PresetMinterPauserAutoId: must have minter role to mint");
        _mint(to, _tokenIdTracker.current());
        _tokenIdTracker.increment();
        if(
            _onlyOwner(address [msg.sender])= true;
        emit "succesful Membership NFTDID address addition to list";
        )
        else revert;
    }

    // To check if someone is a member, just take a look at balanceOf. If the owner owns any tokens, they're part of the group.
    function checkBalanceOf(address, bool) public view vitual override return (uint256) {
        require(owner != address(0), "ERC721: address zero is not a valid owner");
            //balanceOf(address owner) → uint256 balance xternal
             require(_isApprovedOrOwner(_msgSender(), MembershipTokenId), "ERC721: caller is not a NFTDID Membership token owner ");
        _check(MembershipTokenId);
        return _balances[owner];


    }

 
}
