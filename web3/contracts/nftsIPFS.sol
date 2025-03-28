// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract nftsIPFS {

    address payable contractOwner = payable(0xb309098bcB51E5C687a16FA41bD6055f47c9eBb0);
    uint public listingPrice = 0.025 ether;


    struct NFTs{
        string title;
        string description;
        string email;
        string category;
        uint256 fundraised;
        address creator;
        string image;
        uint256 timestamp;
        uint256 id;
    }

    mapping(uint256 => NFTs) public nftImages;


    uint256 public images = 0;


    function uploadIPFS(address _creator, string memory _image. string memory _title,
    string memory _description, string memory _email, string memory _category) public
    payable returns(
        string memory,
        string memory.
        string memory,
        address,
        string memory

        ){

            imageCount++;
            NFTs storage nft = nftImages[imagesCount];

            nft. title = _title;
            nft.creator = _creator;
            nft.description = _description;
            nft.email = _email;
            nft.category = _category;
            nft.image = _image;
            nft.timestamp = block.timestamp;
            nft.id = imageCount;

            return(
                _title,
                _description,
                _category,
                _creator,
                _image

            );
        }
    

    function getAllNFTs() public view returns(Nfts[] memory) {
        uint256 itemCount = imageCount;
        uint256 currentIndex = 0;

        NFTs[] memory items = new NFTS[](itemCount);
        for (uint256 i =0; i< itemCount; i++){
            uint256 currentId = i + 1;
            NFTs storage currentItem = nftImages[currentId];
            items[currentIndex] = currentItem;
            currentIndex += 1;
        }
        return items;
    }
}