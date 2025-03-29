//
//  Algorithm_Merge_Two_Sorted_Lists_Test.swift
//  Algorithm Merge Two Sorted Lists Test
//
//  Created by Steinhauer, Jan on 29.03.25.
//

import Testing

struct Algorithm_Merge_Two_Sorted_Lists_Test {

    // Helper to build a linked list from an array
    func buildList(_ values: [Int]) -> ListNode? {
        let dummy = ListNode(0)
        var current = dummy
        for value in values {
            current.next = ListNode(value)
            current = current.next!
        }
        return dummy.next
    }

    // Helper to convert linked list back to array
    func toArray(_ head: ListNode?) -> [Int] {
        var result: [Int] = []
        var current = head
        while let node = current {
            result.append(node.val)
            current = node.next
        }
        return result
    }

    @Test func mergeTwoEmptyLists() async throws {
        let result = mergeTwoLists(nil, nil)
        #expect(result == nil)
    }

    @Test func mergeOneEmptyOneNonEmpty() async throws {
        let list1 = buildList([])
        let list2 = buildList([1, 3, 5])
        let result = mergeTwoLists(list1, list2)
        #expect(toArray(result) == [1, 3, 5])
    }

    @Test func mergeSortedListsSameLength() async throws {
        let list1 = buildList([1, 4, 6])
        let list2 = buildList([2, 3, 5])
        let result = mergeTwoLists(list1, list2)
        #expect(toArray(result) == [1, 2, 3, 4, 5, 6])
    }

    @Test func mergeSortedListsDifferentLengths() async throws {
        let list1 = buildList([1, 2])
        let list2 = buildList([3, 4, 5, 6])
        let result = mergeTwoLists(list1, list2)
        #expect(toArray(result) == [1, 2, 3, 4, 5, 6])
    }

    @Test func mergeWithDuplicates() async throws {
        let list1 = buildList([1, 3, 5])
        let list2 = buildList([1, 2, 3])
        let result = mergeTwoLists(list1, list2)
        #expect(toArray(result) == [1, 1, 2, 3, 3, 5])
    }

    @Test func mergeNegativeNumbers() async throws {
        let list1 = buildList([-10, -5, 0])
        let list2 = buildList([-6, -3, 2])
        let result = mergeTwoLists(list1, list2)
        #expect(toArray(result) == [-10, -6, -5, -3, 0, 2])
    }
}
