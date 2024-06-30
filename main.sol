// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract calculation {

    // First

    function division(int dividend, int divisor) public pure returns (int) {
        require(divisor != 0, "Division by zero is not possible");

        return dividend / divisor;
    }

    //Second

    int[] private customArray;

    function add(int value) public {
        customArray.push(value);
    }

    function get(uint index) public view returns (int) {
        assert(index < customArray.length);

        return customArray[index];
    }

    // Third

    bool public isSubscribedOnYt = true;
    bool public isFollowedOnInsta = true;
    bool public isRepostedOnX = true;

    mapping(address => uint) balances;

    function rewardUserBy100(address _user) public {
        if (!(isSubscribedOnYt && isFollowedOnInsta && isRepostedOnX)) {
            revert("All three requirements not met");
        }

        balances[_user] += 100;
    }
}
