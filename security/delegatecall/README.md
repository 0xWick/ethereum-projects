# Delelgate Call :curly_loop:
> WAGMI, Keep Buidling! :hammer_and_wrench:

## Calling Target Contract for execution but storing on Original Contract :bar_chart:

![](https://i.imgur.com/78ty5XV.png)

## Wait, what?

The important thing to note when using .delegatecall() is that the context the original contract is passed to the target, and all state changes in the target contract reflect on the original contract's state and not on the target contract's state even though the function is being executed on the target contract.

![](https://i.imgur.com/oVhXQas.png)

## Actual Use Cases

- Proxy Contracts
- Upgrade Contracts (the logic can change, but the data is never fragmented.) 

## Attack using delegatecall :pirate_flag:

But, since .delegatecall() modifies the storage of the contract calling the function, there are some nasty attacks that can be designed if .delegatecall() is not properly implemented. We will now simulate an attack using .delegatecall().

## Prevention :white_check_mark:

Use stateless library contracts which means that the contracts to which you deletegate the call should only be used for execution of logic and should not maintain state.

<!-- Markdown link & img dfn's -->
[wiki]:  https://www.learnweb3.io/tracks/senior
