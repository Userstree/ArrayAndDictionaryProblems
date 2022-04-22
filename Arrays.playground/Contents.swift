import Foundation

var array = [0, 3, 0, 2, 1, 4, 453, 45, 345, 3, 45, 63, 546, 3, 234, 0, -23, 0, 2, 3, 3, 3, 3]


extension Array where Element == Int
{
    // O(1)
    func checkForOneZero() -> Bool {
        var dict = self.reduce(into: [:]) { res, element in
            res[element, default: 0] = +1
        }
        return dict.keys.contains(0)
    }
    
    //O(n)
    func checkForTwoZeros() -> Bool {
        var count = 0
        
        if self.count < 2 {
            return false
        }
        
        for i in self {
            if i == 0 {
                count += 1
                if count == 2{
                    return true
                }
            }
        }
        return false
    }
    
    //O(n)
    func consecutiveThreeZeros() -> Bool {
        
        if self.count < 3 {
            return false
        }
        
        for i in 1..<self.count {
            if self[i] == 0 && self[i-1] == 0 && self[i+1] == 0{
                return true
            }
        }
        return false
    }
    
    //O(n)
    func sumOfElements() -> Int {
        var sum = 0
        for i in self {
            sum += i
        }
        return sum
    }
    
    //O(n) complexity
    func reverseArray() -> [Int] {
        var rev = [Int]()
        for i in (0..<self.count).reversed() {
            rev.append(self[i])
        }
        return rev
    }
    
    //O(n)
    func numberOfEvenAndOddNums() -> (Int, Int) {
        var evenCount = 0
        var oddCount = 0
        
        for i in self {
            if i%2 == 0 {
                evenCount += 1
            } else {
                oddCount += 1
            }
        }
        return (evenCount, oddCount)
    }
    
    //O(n)
    func findDifferenceBetweenMaxAndMin() -> Int {
        var max = 0
        var min = 0
        
        for i in self {
            if i > max {
                max = i
            }
            
            if i < min {
                min = i
            }
        }
        
        return (max - min)
    }
}

array.checkForOneZero()
array.checkForTwoZeros()
array.consecutiveThreeZeros()
array.sumOfElements()
array.reverseArray()
array.numberOfEvenAndOddNums().0
array.numberOfEvenAndOddNums().1
array.findDifferenceBetweenMaxAndMin()
