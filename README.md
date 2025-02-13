# Hack Recursive Factorial Function Bug

This repository demonstrates a common error in recursive functions: improper handling of negative input and the potential for stack overflow. The `foo` function calculates the factorial. However, it lacks error handling for negative input, which leads to infinite recursion.  For large positive inputs, the recursive calls consume significant stack space which could cause the program to crash.

The `bug.hack` file contains the buggy code, and `bugSolution.hack` provides a corrected version.

## Bug Description
The original `foo` function does not check if the input is non-negative. When given a negative number, it recursively calls itself indefinitely.  Also for very large numbers it may exceed the stack limit.  The `main` function calls the function with the value 5 which runs without issue.