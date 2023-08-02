import unittest
from solution import Solution

class TestHeapSort(unittest.TestCase):
    def test_heap_sort(self):
        sol = Solution()

        # Test case 1
        arr1 = [4, 10, 3, 5, 1]
        expected_output1 = [1, 3, 4, 5, 10]
        sol.HeapSort(arr1, len(arr1))
        self.assertEqual(arr1, expected_output1)

        # Test case 2
        arr2 = [2, 7, 1, 3, 9, 5, 6, 4, 8]
        expected_output2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        sol.HeapSort(arr2, len(arr2))
        self.assertEqual(arr2, expected_output2)

if __name__ == '__main__':
    unittest.main()