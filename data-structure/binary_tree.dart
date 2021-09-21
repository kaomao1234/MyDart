import "dart:io";

class Node {
  dynamic data;
  dynamic prev = 0;
  dynamic next = 0;
  Node(this.data) {}
}

class DoubleLL {
  dynamic head;
  DoubleLL() {}
  void add(data) {
    if (this.head == Null) {
      this.head = Node(data);
    } else {
      this._add(this.head, data);
    }
  }

  void show() {
    this._show(this.head);
  }

  void _add(dynamic node, data) {
    if (node.next == 0) {
      node.next = Node(data);
    } else {
      this._add(node.next, data);
    }
  }

  void _show(dynamic node) {
    if (node == 0) {
      print("\n");
    } else {
      stdout.write("${node.data} <--> ");
      this._show(node.next);
    }
  }
}

main() {
  DoubleLL doubleLL = DoubleLL();
  Node root = Node("P");
  doubleLL.head = root;
  print(doubleLL.head.data);
  doubleLL.add('L');
  doubleLL.add('M');
  doubleLL.add('L');
  doubleLL.show();
}
