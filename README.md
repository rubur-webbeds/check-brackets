# check-brackets
Given an expression, check if brackets are balanced

An expression is balanced if for each *opened bracket* there is a *closed one*. In addition, brackets must be in the *correct order*.

For example:

* **(()())** -- this expression is well balanced.
* **())(** -- this isn't.

In order to check the correctness of the brackets we will use a *stack* as data structure.
Every time an **opened bracket** is found, it will be *pushed*.
Otherwise, if a **closed bracket** is founf, it will be *popped*

Once processed every element in the expression the status of the stack will tell us if it was correct.

* ***Empty** stack*: brackets are *well balanced*.
* ***Not empty** stack*: there are more *opened brackets* than closed.
* *If **bad_use exception***: there are more *closed brackets*.
