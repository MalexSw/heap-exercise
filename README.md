# Heap Implementation in Swift

This project demonstrates a simple **Max Heap** data structure in Swift with the following features:
- `insert`: Insert an element while maintaining the heap property.
- `maxHeapify`: Restore the max-heap property at a given index.
- `heapSort`: Sort an array in ascending order using the heap sort algorithm.

---

## Features

- Generic heap implementation (`Heap<T: Comparable>`).
- Supports insertion with bubbling up.
- Supports restoring heap order using `maxHeapify`.
- Provides in-place `heapSort`.

---

## How It Works

- **Insert**: Adds the new element at the end of the array and bubbles it up until the heap property is satisfied.
- **MaxHeapify**: Compares the node with its children and swaps with the larger child if needed, recursively.
- **HeapSort**:
  1. Builds a max heap.
  2. Repeatedly swaps the root with the last element.
  3. Reduces the heap size and calls `maxHeapify` until sorted.

---

## Notes

- This is a **max-heap** implementation (largest element at the root).
- The `heapSort` algorithm sorts the array **in-place** into ascending order.
- Generic implementation allows usage with any `Comparable` type (`Int`, `String`, `Double`, etc.).

---

## Future Improvements

- Add `extractMax` function.
- Add `peekMax` function to view the maximum element without removing it.
- Implement a **Min Heap** version.
