// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;


contract Decision {
    uint stakingWallet = 20;
    function airdrop() public view returns (uint) {

        if( stakingWallet == 20) {
            return stakingWallet + 20;
        } else {
            return stakingWallet + 1;
        }
    }

}