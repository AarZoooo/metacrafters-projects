# Error Handling

This project illustrates the use of error handling functions in solidity programming language.

## Description

In solidity programming language, we have three error handling functions, i.e. `require()`, `assert()` and `revert()`. To practice the use cases of these functions in real scenarios, this project is created. It contains a `.sol` file that contains some smart contracts illustrating the use of the functions.

The `require()` function is used when a condition is required to meet. Unsatisfaction of the condition causes termination of the contract while exhausting all gas. It takes two parameters, a condition and a string as a message to show in case of termination.

Let's see an example of a check whether variable `age` has value greater than or equal to 18 or not.

```solidity
require(age >= 18, "Age must be greater or equal to 18");
```

<br>

The `assert()` function is used to catch unexpected errors, which the developer thinks should not happen. This takes only one argument, i.e. the condition. Unsatisfaction of which causes termination of contract while saving gas and no error message.

Let's see an example of a check where a divisor must not be 0.

```solidity
assert(divisor != 0);
```
<br>

The `revert()` function is kind of in the middle of the other two functions. It takes one argument i.e. just a message string, and in case of failure it shows the message and saves remaining gas.

Let's see an example of a check where a user is not rewarded as they didn't complete all requirements.

```solidity
if (!allRequirementsMet) {
  revert("All requirements not met");
}
```

<br>

## Execution

You can execute this code locally or using [Remix Ethereum IDE](https://remix.ethereum.org/) online. In this case let's focus on the online method.

- Open the website, which opens up a Vscode-like interface
- Create a file with a `.sol` extension
- Copy-paste the code from the main.sol file in this repository
- Go to the Compilation menu (third in the left bar)
- Compile the contracts
- Go to the menu below the compilation menu, that is the Deployment menu
- Deploy your contracts
- Use them by passing values.
