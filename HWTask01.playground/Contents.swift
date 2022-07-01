import UIKit

protocol HomeworkService {
    func divideWithReminder(_ x:Int, by y:Int) -> (Int, Int)
    
    func fibonacci(n:Int) -> [Int]
    
    func sort(rawArray:[Int]) -> [Int]
    
    func firstLetter(strings: [String]) -> [Character]
    
    func filter(array: [Int], condition: (Int) -> Bool) -> [Int]
}
struct HW: HomeworkService {
    func divideWithReminder(_ x: Int, by y: Int) -> (Int, Int) {
        let result = x / y
        let reminder = x % y
        return(result, reminder)
            
        }
    func fibonacci(n: Int) -> [Int] {
        guard (n > 1) else { return [] }
                
                var array = [0,1]

                while array.count < n {
                    array.append(array[array.count-1] + array[array.count-2])
                }
                return array
    }
    
    func sort(rawArray: [Int]) -> [Int] {
        var bubbleSort = rawArray
                guard rawArray.count > 1 else {
                    return rawArray
                }
                
                for i in 0..<bubbleSort.count {
                    for j in 0..<bubbleSort.count-i-1 {
                        if bubbleSort[j] > bubbleSort[j + 1] {
                            bubbleSort.swapAt(j + 1, j)
                        }
                    }
                }
                return bubbleSort
    }
    func firstLetter(strings: [String]) -> [Character] {
        var chars = [Character]()
                
                for i in cars {
                    chars.append(i.first!)
                }
                return chars
    }
    func filter(array: [Int], condition: (Int) -> Bool) -> [Int] {
        var filteredArray = [Int]()
               
               for i in array {
                   if condition(i) {
                       filteredArray.append(i)
                   }
               }
               
               return filteredArray
    }
    
}



let test = HW()

print(test.divideWithReminder(10, by: 3))




print(test.fibonacci(n: 10))




var array: [Int] = [1, 4, 2, -20, 11, 101, 37, -2]
print(test.sort(rawArray: array))




var cars: Array<String> = ["Lamborghini", "Genesis", "Bugatti", "Tesla", "Mercedes-Benz"]
print(test.firstLetter(strings: cars))




var isGood: (Int) -> Bool = { num in
    return num > 0
}
print(test.filter(array: array, condition: isGood))
