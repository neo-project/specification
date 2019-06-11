# NeoContract


## Payable applications

Payable applications are all applications that are `payable` or pays any `network_fee` or `sys_fee`;

### Balances updates

#### Pre-balances

Pre-balances are updated when transactions enter in the `mempool`, throughout the `verification` process.
In this sense, `verification` updates pre-balances.

In this sense, when a transaction is relayed, we are ensured that all network fees can be correctly payed.

#### After blocks persists

In the meanwhile, while transaction are being executed, pre-balances are again updated for all `payable transactions` given a parameter defined as `maximum_gas_payable`.

In this sense, Invocation transaction should declare the intention to spend an amount of `X` GAS;

## Appendices

### Native Contracts

#### NEO Native

#### GAS Native

#### SimplePolicy

#### Voting
