class Node {
  int data;
  dynamic left;
  dynamic right;
  Node(this.data) {}
}

class BStree {
  dynamic root;
  BStree() {
  }
  void add(int data) {
    if (this.root == null) {
      this.root = Node(data);
    } else {
      this._add(this.root, data);
    }
  }

  dynamic _add(node, int data) {
    if (node == null) {
      return Node(data);
    } else if (data < node.data) {
      node.left = this._add(node.left, data);
    } else if (data > node.data) {
      node.right = this._add(node.right, data);
    }
    return node;
  }

  void printTree(node, [level = 0]) {
    if (node != null) {
      this.printTree(node.right, level + 1);
      String format_print = " " * 4 * level + '-->' + node.data.toString();
      print(format_print);
      this.printTree(node.left, level + 1);
    }
  }
}

void main() {
  List<int> array = [8, 9, 30, 56, 4];
  BStree bstree = BStree();
  for (var i in array) {
    bstree.add(i);
  }
  bstree.printTree(bstree.root);
}
