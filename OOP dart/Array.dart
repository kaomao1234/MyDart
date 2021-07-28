import 'dart:io';
class Array {
  dynamic get_array;
  Array(List array) {
    this.get_array = array;
  }
  void insert(int idx, ele) {
    List imp_array = this.get_array.sublist(idx);
    this.get_array = this.get_array.sublist(0, idx);
    this.get_array.add(ele);
    this.get_array = this.get_array + imp_array;
  }

  void del(ele) {
    this.get_array = [
      for (var i = 0; i < this.get_array.length; i += 1)
        (this.get_array[i] != ele) ? this.get_array[i] : null
    ];
    this.get_array.remove(null);
  }

  void bubbleSort() {
    for (var i = 0; i < this.get_array.length; i += 1) {
      int stop = 0;
      for (var j = 0; j < this.get_array.length - 1; j += 1) {
        if (this.get_array[j] > this.get_array[j + 1]) {
          int maxVal, minVal;
          maxVal = this.get_array[j];
          minVal = this.get_array[j + 1];
          this.get_array[j] = minVal;
          this.get_array[j + 1] = maxVal;
        } else {
          stop += 1;
        }
      }
      if (stop == this.get_array.length - 1) {
        break;
      }
    }
  }

  void insertionSort() {
    for (var i = 1; i < this.get_array.length; i += 1) {
      int cmp = this.get_array[i];
      for (var j in this.get_array.sublist(i, 0)) {
        if (j > cmp) {
          this.get_array[this.get_array.indexOf(cmp)] = j;
          this.get_array[this.get_array.indexOf(j)] = cmp;
        }
      }
    }
  }

  void selectionSort() {
    for (var i = 0; i < this.get_array.length; i += 1) {
      int least_idx = i;
      for (var j = i + 1; j < this.get_array.length; j += 1) {
        if (this.get_array[least_idx] > this.get_array[j]) {
          least_idx = j;
        }
      }
      int maxVal = this.get_array[i];
      int minVal = this.get_array[least_idx];
      this.get_array[i] = minVal;
      this.get_array[least_idx] = maxVal;
    }
  }

  dynamic search(ele) {
    int idx;
    for (var i = 0; i < this.get_array.length; i += 1) {
      if (this.get_array[i] == ele) {
        return idx = i;
      }
    }
  }
}

void main() {
  Array arrayObj = Array([100, 45, 6, 7, 6, 69]);
  arrayObj.selectionSort();
  print(arrayObj.get_array);
}