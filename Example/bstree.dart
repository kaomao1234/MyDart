class BStree {
  dynamic array, root;
  late List output;
  BStree(List array) {
    this.array = array;
    this.root = this.array[0];
    this.output = [[this.root]];
  }
  dynamic chkNode([int idx = 1]) {
    List m = [];
    for (var i in this.array) {
      if (m.length == 2) {
        this.output.add(m);
        break;
      } else if (this.root > i) {
        m.add(i);
      } else {
        m.add(i);
      }
    }
  }
}

main() {
  List array = [4, 6, 3, 1, 5];
  BStree BArray = BStree(array);
}
