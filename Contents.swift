class Heap<T: Comparable> {
    var heap: [T] = []
    
    func insert(input: T) {
        heap.append(input)
        var currIndex = heap.count - 1
        
        while currIndex > 0 && heap[currIndex] > heap[(currIndex - 1) / 2] {
            heap.swapAt(currIndex, (currIndex - 1) / 2)
            currIndex = (currIndex - 1) / 2
        }
    }
    
    func maxHeapify(_ index: Int, _ size: Int) {
        let left = 2 * index + 1
        let right = 2 * index + 2
        var largest = index
        
        if left < size && heap[left] > heap[largest] {
            largest = left
        }
        if right < size && heap[right] > heap[largest] {
            largest = right
        }
        if largest != index {
            heap.swapAt(index, largest)
            maxHeapify(largest, size)
        }
    }
    
    func heapSort() {
        let n = heap.count
        
        for i in stride(from: n / 2 - 1, through: 0, by: -1) {
            maxHeapify(i, n)
        }
        
        for i in stride(from: n - 1, through: 1, by: -1) {
            heap.swapAt(0, i)
            maxHeapify(0, i)
        }
    }
}

// ------------------- TESTING -------------------

let heap2 = Heap<Int>()
heap2.heap = [30, 20, 15, 10, 5]
print("Original heap:", heap2.heap)

heap2.heap[0] = 1
print("Broken heap:", heap2.heap)

heap2.maxHeapify(0, heap2.heap.count)
print("After maxHeapify:", heap2.heap)

heap2.heap = [10, 30, 20, 5, 15]
print("\nOriginal broken heap:", heap2.heap)
heap2.maxHeapify(0, heap2.heap.count)
print("After maxHeapify at root:", heap2.heap)

let heap3 = Heap<Int>()
heap3.heap = [3, 1, 4, 1, 5, 9]
print("\nUnsorted array:", heap3.heap)
heap3.heapSort()
print("After heapSort:", heap3.heap)
