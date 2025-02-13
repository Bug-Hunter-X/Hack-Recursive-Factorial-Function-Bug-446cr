function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will produce unexpected output because the function doesn't handle negative integers properly.  For example, foo(-1) will lead to infinite recursion.  Furthermore, for very large input values of x, it may lead to stack overflow errors. 