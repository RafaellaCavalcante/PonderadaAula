// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
// Inicia um contrato
contract anac {
        // Variável de estado para armazenar a idade, com valor predefinido de 18 anos.
        uint public idade = 18;
        // Variável de estado para armazenar o endereço do dono do contrato
        address public dono;

        // Função que começa o contrato e atribui o endereço do remetente como dono
        constructor() {
            dono = msg.sender;
        }

        // Função para atribuir um novo valor à variável de idade, apenas o dono pode chamar
        function setIdade (uint256 novaIdade) public {
            // Garante que apenas o dono pode chamar esta função
            require(dono == msg.sender);
            idade = novaIdade;
        }
        // Função para obter o valor atual da idade
        function getIdade() public view returns (uint256){
            return idade;
        }
}