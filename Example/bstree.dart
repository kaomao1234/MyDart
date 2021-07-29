class BStree {
  dynamic array;
  BStree(List array) {
    this.array = array;
  }

  List splitLeft(int root) {
    List temp = this.array.where((s) => s < root == true).toList();
    return temp;
  }

  List splitRight(int root) {
    List temp = this.array.where((s) => s > root == true).toList();
    return temp;
  }

  dynamic c() {
  }
}

main() {
  List array = [4, 6, 3, 1, 5];
  BStree BArray = BStree(array);
}
