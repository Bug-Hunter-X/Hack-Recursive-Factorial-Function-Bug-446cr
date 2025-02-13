function foo(x: int): int {
  if (x < 0) {
    return 0; // Or throw an exception: throw new Exception("Input must be non-negative");
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(-1);
  //echo foo(100000); //this can still cause issues with stack overflow
}

This improved version explicitly handles negative inputs by returning 0 (or alternatively, throwing an exception for better error reporting). This prevents infinite recursion.  It's also prudent to consider alternative approaches like iterative factorial calculations to mitigate stack overflow issues.