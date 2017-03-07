//if true {
//
//    for index in 1...5{
//        print("\(index) times 5 is \(index * 5)")
//    }
//}
//print("=================")
//
//if true {
//
//    for index in 1..<5{
//        print("\(index) times 5 is \(index * 5)")
//    }
//}
//print("=================")
//
//if true {
//    let base = 3
//    let power  = 10
//    var answer = 1
//    for _ in 1...power{
//        answer *= base
//    }
//
//    print("\(base) to the powert of \(power) is \(answer)")
//
//}
//print("=================")
//
//if true{
//    let names = ["Anna","Alex", "Brian","Jack"]
//    for name in names {
//        print("Hello, \(name)")
//    }
//}
//print("=================")
//
//
//if true{
//    let numberOfLegs = ["spider": 8, "ant":6, "cat":4]
//
//    for (animalName,legCount) in numberOfLegs{
//        print("\(animalName)s have \(legCount) legs")
//    }
//}
//print("=================")
//
//if true{
//    let finalSquare = 25
//    var board = [Int](repeating: 0,count: finalSquare + 1)
//
//    board[03] = +08
//    board[06] = +11
//    board[09] = +09
//    board[10] = +02
//
//    board[14] = -10;
//    board[19] = -11
//    board[22] = -02
//    board[24] = -08
//
//    var square = 0
//    var diceRoll = 0
//    repeat{
//        square += diceRoll
//        diceRoll += 1
//        if diceRoll == 7{diceRoll = 1}
//        square += diceRoll
//    }while square < finalSquare
//    print("gameover")
//}
//print("=================")
//
//if true{
//    let anotherCharacter: Character = "a"
//    switch anotherCharacter {
//        case "a","A":
//        print("The letter a")
//    default:
//        print("not a")
//    }
//}
//print("=================")
//
//if true{
//    let somePoint = (2,2)
//    switch somePoint {
//    case (0,0):
//        print("0,0")
//    case (_,0):
//        print(" y = 0")
//    case(0,_):
//        print("x = 0")
//    case (-2..<2,-2..<2):
//        print("in -2 ~ 2")
//    default:
//        print("another")
//    }
//}
//print("=================")
//
//if true{
//    let anotherPoint = (2,1)
//    switch anotherPoint {
//    case (let x, 0):
//        print("on y,(x=\(x))")
//    case (0,let y):
//        print("on x,(y=\(y))")
//    case let (x,y):
//        print("somewhere:\(x),\(y)")
//    }
//}
//print("=================")
//
//if true{
//    let yetAnotherPoint = (0, -1)
//    switch yetAnotherPoint {
//    case let (x,y) where (x == y) :
//        print("some where x==y(\(x),\(y))")
//    case let(x,y) where x == -y :
//        print("some where x==-y(\(x),\(y))")
//    case let (x,y) where (x == y+1 && x != y) :
//        print("(\(x),\(y))")
//    case let(x,y):
//        print("(\(x),\(y))")
//    }
//}
//print("=================")
//
//if true{
//    let stillAnotherPoint = (9,0)
//    switch stillAnotherPoint {
//    case (let distance,0),(0,let distance):
//        print("distance is (\(distance))")
//    default:
//        print("hogehoge")
//    }
//}
//print("=================")
//
//if true{
//    let puzzleInput = "great minds think alike"
//    var puzzleOutput = ""
//    let charactersToRemove: [Character] = ["a","e","i","o","u"," "]
//    for character in puzzleInput.characters {
//        if charactersToRemove.contains(character){
//            continue
//        }else{
//            puzzleOutput.append(character)
//        }
//    }
//    print(puzzleOutput)
//}
//print("=================")
//
//if true{
//    let integerToDescribe = 5
//    var description = "The number \(integerToDescribe) is"
//    switch integerToDescribe {
//    case 2,3,5,7,11,13,17,19 :
//        description += " a prime number, and also"
//        fallthrough
//    case 444 :
//        description += " hogeeeee\n"
//        fallthrough
//    default:
//        description += " an integer"
//    }
//}
//print("=================")
//
//if true{
//    let finalSquare = 25
//    var board = [Int](repeating: 0,count: finalSquare + 1)
//    board[03] = +08;
//    board[06] = +11;
//    board[09] = +09;
//    board[10] = +02;
//    board[14] = -10;
//    board[19] = -11;
//    board[22] = -02;
//    board[24] = -08;
//    var square = 0
//    var diceRoll = 0
//
//    gameloop: while square != finalSquare {
//        diceRoll += 1
//        if diceRoll == 7 { diceRoll = 1 }
//        switch square + diceRoll {
//        case finalSquare:
//            break gameloop
//        case let newSquare where newSquare > finalSquare:
//            continue gameloop
//        default:
//            square += diceRoll
//            square += board[square]
//        }
//    }
//    print("Game over")
//
//}
//print("=================")
//
//if true{
//    func greet(person: [String:String]){
//        guard let name = person["name"] else {
//            return
//        }
//        print("Hello \(name)!")
//
//        guard let location = person["location"] else {
//            print("I hope the weather is nice near you")
//            return
//        }
//        print("I hope the weather is nice in \(location)")
//    }
//    greet(person: ["name":"John"])
//    greet(person: ["name":"John", "location":"Cuperion"])
//}
//print("=================")
//
//if true{
//    func minMax(array: [Int]) -> (min: Int,max: Int){
//        var currentMax = array[0]
//        var currentMin = array[0]
//        for value in array[1..<array.count]{
//            if value < currentMax{
//                currentMin = value
//            } else if value > currentMax {
//                currentMax = value
//            }
//        }
//        return (currentMin,currentMax)
//    }
//    let bounds = minMax(array: [1,2,3,4,5,-1,7,123])
//    print("min is \(bounds.min) and max is \(bounds.max)")
//
//}
//print("=================")
//
//if true{
//    func arithmeticMean(_ numbers: Double...) -> Double {
//        var total: Double = 0
//        for number in numbers {
//            total += number
//        }
//        return total / Double(numbers.count)
//    }
//
//    print(arithmeticMean(3.0,2.0,1.0,2.0,23.0,24.0,23.0))
//    print(arithmeticMean(3,8.25,13.24))
//
//}
//print("=================")
//
//if true{
//    
//    let names = ["Chris","hoge","Huga","Piyo"]
//    print(names.sorted(by: {s1,s2 in return s1 > s2}))
//}
//print("=================")
//
//if true{
//    
//}
//print("=================")
//
//if true{
//    let names = ["A","B","V","Y"]
//    print(names.sorted(by: {$0 > $1}))
//    print(names.sorted(by:  < ))
//    print(names.sorted(){$0 > $1})
//}
//print("=================")
//
//if true{
//    func makeIncrementer(forIncrement amount: Int) -> () -> Int{
//        var runningTotal = 0
//        func incrementer() -> Int {
//            runningTotal += amount
//            return runningTotal
//        }
//        return incrementer
//    }
//
//    let incrementByTen = makeIncrementer(forIncrement: 10)
//    incrementByTen()
//    incrementByTen()
//    incrementByTen()
//
//    let incrementBySeven = makeIncrementer(forIncrement: 7)
//    incrementBySeven()
//    incrementBySeven()
//    incrementBySeven()
//
//    incrementByTen()
//    incrementByTen()
//
//}
//print("=================")
//
//if true{
//    var completionHandlers: [() -> Void] = []
//
//    func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
//        completionHandlers.append(completionHandler)
//    }
//
//    func someFunctionWithNonescapingClosure(closure:() -> Void){
//        closure()
//    }
//
//    class SomeClass {
//        var x = 10
//        func doSomething() {
//            someFunctionWithEscapingClosure {self.x = 100 }
//            someFunctionWithNonescapingClosure { x = 200}
//        }
//    }
//    let instance = SomeClass()
//    instance.doSomething()
//    print(instance.x)
//
//    completionHandlers.first?()
//    print(instance.x)
//}
//print("=================")
//
//if true{
//    var customersInline = ["Ewa","Bery","Hoge"]
//    var customersProviders:[() -> String] = []
//    func collectCustomerProviders(_ customProvider: @autoclosure @escaping ()->String) {
//        customersProviders.append(customProvider)
//    }
//    collectCustomerProviders(customersInline.remove(at:0))
//    collectCustomerProviders(customersInline.remove(at:0))
//    print("collected \(customersProviders.count) closures")
//
//    for customerProvider in customersProviders {
//        print("Now serving \(customerProvider())!")
//    }
//}
//print("=================")
//
//if true{
//    enum Barcode {
//        case upc(Int,Int,Int,Int)
//        case qrCode(String)
//    }
//    var productBarcode = Barcode.upc(8,85909,51226,3)
//    
//    switch productBarcode {
//    case .upc(let numberSystem, let manufacture, let product, let check):
//        print("\(numberSystem),\(manufacture),\(product),\(check),")
//    case .qrCode(let productCode):
//        print(productCode)
//    }
//
//    productBarcode = .qrCode("QWWWWWWERTY")
//    
//    switch productBarcode {
//    case .upc(let numberSystem, let manufacture, let product, let check):
//        print("\(numberSystem),\(manufacture),\(product),\(check),")
//    case .qrCode(let productCode):
//        print(productCode)
//    }
//    
//}
//print("=================")
//
//if true{
//    enum ArithmeticExpression {
//        case number(Int)
//        indirect case addition(ArithmeticExpression,ArithmeticExpression)
//        indirect case multiplication(ArithmeticExpression,ArithmeticExpression)
//    }
//    let five = ArithmeticExpression.number(5)
//    let four = ArithmeticExpression.number(4)
//    let three = ArithmeticExpression.number(3)
//    let sum = ArithmeticExpression.addition(five, four)
//    let two = ArithmeticExpression.number(2)
//    let pro = ArithmeticExpression.multiplication(sum, two)
//    
//    func evaluate(_ expression: ArithmeticExpression)->Int{
//        switch expression {
//        case let .number(value):
//            return value
//        case let .addition(left, right):
//            return evaluate(left) + evaluate(right)
//        case let .multiplication(left, right):
//            return evaluate(left) * evaluate(right)
//        }
//    }
//    print("=")
//    print(evaluate(pro))
//    evaluate(pro)
//}
//print("=================")
//
//if true{
//    class StepCounter {
//        var totalSteps: Int = 0 {
//            willSet {
//                print(newValue)
//            }
//            didSet{
//                if totalSteps > oldValue{
//                    print(totalSteps - oldValue)
//                }
//            }
//        }
//    }
//    let stepCounter = StepCounter()
//    stepCounter.totalSteps = 200
//    stepCounter.totalSteps = 360
//    stepCounter.totalSteps = 660
//}
//print("=================")
//
if true{
    struct AudioChannel {
        static let thresholdLevel = 10
        static var maxInputLevelForAllChannels = 0
        var currentLevel: Int = 0 {
            didSet {
                if currentLevel > AudioChannel.thresholdLevel{
                    currentLevel = AudioChannel.thresholdLevel
                }
                if currentLevel > AudioChannel.maxInputLevelForAllChannels{
                    AudioChannel.maxInputLevelForAllChannels = currentLevel
                }
            }
        }
    }
    var rightCh = AudioChannel()
    var leftCh = AudioChannel()
    rightCh.currentLevel = 110
    print(rightCh.currentLevel)
    print(AudioChannel.maxInputLevelForAllChannels)
}
//print("=================")
//
//if true{
//    struct FixedLengthRange {
//        var firstValue: Int
//        let length: Int
//    }
//    var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
//    rangeOfThreeItems.firstValue = 6
//}
//print("=================")
//
if true{
    
    class Vehicle {
        var currentSpeed = 0.0
        func makeNoise(){
            print("nnn")
        }
    }
    
    class Bicycle: Vehicle {

        override func makeNoise() {
            super.makeNoise()
            print("noisy")
        }
        func hoge(){
            super.makeNoise()
        }
    }
    Bicycle().makeNoise()
    
    class Bicycle2: Vehicle {
        
        var huga:Int
        override init() {
            huga = 0// if you comment out this line compile get rage
        }
        
        
        override func makeNoise() {
            super.makeNoise()
            print("noisy")
        }
        func hoge(){
            super.makeNoise()
        }
    }

    
}
print("=================")
//
//if true{
//}
//print("=================")
//
//if true{
//}
//print("=================")
//
//if true{
//}
//print("=================")
//
//if true{
//}
//print("=================")
//
