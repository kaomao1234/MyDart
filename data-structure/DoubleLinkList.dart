import "dart:io";

class Node {
  dynamic data;
  dynamic prev;
  dynamic next;
  Node(this.data) {
  }
}

class DoubleLL {
  dynamic head;
  DoubleLL() {}
  void add(data) {
    if (this.head == null) {
      this.head = Node(data);
    } else {
      this._add(this.head, data);
    }
  }

  void show() {
    this._show(this.head);
  }

  void _add(dynamic node, data) {
    if (node.next == null) {
      node.next = Node(data);
    } else {
      this._add(node.next, data);
    }
  }

  void _show(dynamic node) {
    if (node == null) {
      print("\n");
    } else {
      stdout.write("${node.data} <--> ");
      this._show(node.next);
    }
  }
}

main() {
  DoubleLL doubleLL = DoubleLL();
  // Node root = Node("P");
  // doubleLL.head = root;
  // print(doubleLL.head.data);
  doubleLL.add('L');
  doubleLL.add('M');
  doubleLL.add('L');
  doubleLL.show();
}