class BagelShop {
    var numberOfBagels: Int
    var totalAmountMade: Double
    
    init(numberOfBagels: Int) {
        self.numberOfBagels = numberOfBagels
        self.totalAmountMade = 0
    }
    
    convenience init() {
        self.init(numberOfBagels: 5)
    }
    
    func isClosed() -> Bool {
        return numberOfBagels == 0
    }
    
    func processOrder(order: Order) {
        if !isClosed() && !order.isCompleted && order.numberOfBagels() <= self.numberOfBagels {
            numberOfBagels = numberOfBagels - order.numberOfBagels()
            totalAmountMade += order.totalPrice()
            order.isCompleted = true
            if isClosed() {
                print("totalAmountMade is \(totalAmountMade)")
            }
        }
    }
}

class Customer {
    var order: Order
    
    init(order: Order) {
        self.order = order
    }
}

class Order {
    var isCompleted: Bool
    var bagels: [Bagel]
    
    init(bagels: [Bagel]) {
        self.isCompleted = false
        self.bagels = bagels
    }
    
    convenience init() {
        self.init(bagels: [])
    }
    
    func numberOfBagels() -> Int {
        return bagels.count
    }
    
    func totalPrice() -> Double {
        var totalPrice:Double = 0
        for bagel in bagels {
            totalPrice += bagel.price
        }
        return totalPrice
    }
    
}

class Bagel {
    let price = 1.5
}

let bagelShop = BagelShop(numberOfBagels: 5)
var bagels = [Bagel]()
for i in 0..<5 {
    bagels.append(Bagel())
}
let order1 = Order(bagels: bagels)
let customer = Customer(order: order1)
bagelShop.processOrder(customer.order)
print(customer.order.numberOfBagels())

//
//func sum(externalA internalA:Int, externalB internalB: Int) -> Int {
//    return internalA + internalB
//}
//
//sum(externalA: 1, externalB: 2)
//

// create a bagel model
//  price of each bagel is 1.50
// orders should have multiple bagels
//  have a totalPrice for order
// print out a sum of total money made after the bagelShop is closed

//func isPalindrome(word: String) -> Bool {
//    let wordLength = word.characters.count
//    for i in 0...wordLength/2 {
//        if(Array(word.characters)[i] != Array(word.characters)[wordLength - i - 1]) {
//            return false
//        }
//    }
//    return true
//}

//func isPalindrome(word: String) -> Bool {
//    return String(word.characters.reverse()) == word
//}

struct Stack<T> {
    private var items:[T]
    var count: Int {
        get {
            return items.count
        }
    }
    
    mutating func push(element: T) {
        items.append(element)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
}

func isPalindrome(word: String) -> Bool {
    var stack = Stack<Character>(items: Array(word.characters))
    var reverseStack = Stack<Character>(items: Array(word.characters).reverse())
    
    for _ in 0..<stack.count {
        if stack.pop() != reverseStack.pop() {
            return false
        }
    }
    return true
}

//print(isPalindrome("racecar"))
//print(isPalindrome("not"))

//func findMissingNumber(N: Int, list: [Int]) -> Int {
//    var totalSumOfNArray = 0
//    var totalSumOfList = 0
//    for i in 1...N {
//        totalSumOfNArray += i
//    }
//    for i in list {
//        totalSumOfList += i
//    }
//    return totalSumOfNArray - totalSumOfList
//}

//func findMissingNumber(N: Int, list: [Int]) -> Int {
//    list.sort({$0 < $1})
//    var j = 0
//    var missingNum = 0
//    
//    for i in (0..<list.count) {
//        j = i + 1
//        if(j-1 != 1) {
//            missingNum = i+1
//        }
//    }
//    return missingNum
//}

//func findMissingNumber(N: Int, list: [Int]) -> Int {
//    let totalSum = N * (N + 1) / 2
//    var totalSumOfList = 0
//    for i in list {
//        totalSumOfList += i
//    }
//    return totalSum - totalSumOfList
//}

func findMissingNumber(list: [Int]) -> Int {
    let complete = Set<Int>(Range(start: 1, end: list.count+1))
    let incomplete = Set<Int>(list)
    return Array(complete.subtract(incomplete)).first!
}
    
    
let arr = [1,5,6,3,2]
let N = arr.count + 1

//findMissingNumber(N, list: arr)
//findMissingNumber(arr)

//Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not
func hasDuplicates(arr: [Int]) -> Bool {
    return true
}

//Given two lists, find the smallest value that exists in both lists.
func getSmallestCommonValue(list1: [Int], list2: [Int]) -> Int? {
    return nil
}

//Check to see if an integer is a palindrome don’t use casting
func isPalindrome(num: Int) -> Bool {
    return true
}












