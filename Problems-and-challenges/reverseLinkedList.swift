#!/usr/bin/env xcrun swift

class Node {
    let value: Int
    var next: Node?

    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

func printList(head: Node?) {
    var current = head
    while current != nil {
        print(current?.value ?? -1)
        current = current?.next
    }
}

func reverseList(head: Node?) -> Node? {
    var currentNode = head
    var prev: Node?
    var next: Node?

    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        currentNode = next
    }
    return prev
}

let nodeThree = Node(value: 3, next: nil)
let nodeTwo = Node(value: 2, next: nodeThree)
let nodeOne = Node(value: 1, next: nodeTwo)

// 1->2->3->nil
// nil<-1->2->3->nil
// nil<-1<-2->3->nil
// nil<-1<-2<-3->nil
// nil<-1<-2<-3

printList(head: reverseList(head: nodeOne))