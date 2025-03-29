//
//  Algorithm Merge Two Sorted Lists.swift
//  Algorithm Merge Two Sorted Lists Test
//
//  Created by Steinhauer, Jan on 29.03.25.
//

import Foundation

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let new_list = ListNode(0)
        var current = new_list

        var l1 = list1
        var l2 = list2

        while let node1 = l1, let node2 = l2 {
            if node1.val <= node2.val {
                current.next = node1
                l1 = node1.next
            } else {
                current.next = node2
                l2 = node2.next
            }

            current = current.next!
        }

        current.next = l1 ?? l2

        return new_list.next
        

    }


// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?

    public init() {
        self.val = 0
        self.next = nil
    }

    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}
