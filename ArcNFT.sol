// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

// Импортируем готовые стандарты OpenZeppelin прямо из GitHub
import "@openzeppelin/contracts@5.0.0/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts@5.0.0/access/Ownable.sol";

contract ArcNFT is ERC721URIStorage, Ownable {
    uint256 private _currentTokenId;

    // В конструктор передаем название коллекции и ее тикер
    constructor() ERC721("Arc Pioneer Collection", "ARCNFT") Ownable(msg.sender) {}

    /**
     * @dev Функция для минта (создания) нового NFT
     * @param to Адрес получателя токена
     * @param tokenURI Ссылка на метаданные (например, ipfs://...)
     */
    function mintNFT(address to, string memory tokenURI) public onlyOwner returns (uint256) {
        _currentTokenId++;
        uint256 newItemId = _currentTokenId;

        _safeMint(to, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}
