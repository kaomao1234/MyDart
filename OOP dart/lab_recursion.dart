List fib(int num,result, [int start = 0]) {
  if (num < 0) {
    return [];
  } else if (result.length == num) {
    return result;
  } else if (result.length > 2) {
    result.add(result[result.length - 2] + result[result.length - 1]);
  }
  else{
    result.add(start);
  }
  return fib(num, result, start + 1);
}

void main() {
  print(fib(9, []));
}