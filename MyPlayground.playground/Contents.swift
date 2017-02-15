import UIKit

if true {

    for index in 1...5{
        print("\(index) times 5 is \(index * 5)")
    }
}
print("=================")

if true {

    for index in 1..<5{
        print("\(index) times 5 is \(index * 5)")
    }
}
print("=================")

if true {
    let base = 3
    let power  = 10
    var answer = 1
    for _ in 1...power{
        answer *= base
    }

    print("\(base) to the powert of \(power) is \(answer)")

}
print("=================")

if true{
    let names = ["Anna","Alex", "Brian","Jack"]
    for name in names {
        print("Hello, \(name)")
    }
}
print("=================")


if true{
    let numberOfLegs = ["spider": 8, "ant":6, "cat":4]

    for (animalName,legCount) in numberOfLegs{
        print("\(animalName)s have \(legCount) legs")
    }
}
print("=================")

if true{
    let finalSquare = 25
    var board = [Int](repeating: 0,count: finalSquare + 1)

    board[03] = +08
    board[06] = +11
    board[09] = +09
    board[10] = +02

    board[14] = -10;
    board[19] = -11
    board[22] = -02
    board[24] = -08

    var square = 0
    var diceRoll = 0
    repeat{
        square += diceRoll
        diceRoll += 1
        if diceRoll == 7{diceRoll = 1}
        square += diceRoll
    }while square < finalSquare
    print("gameover")
}
print("=================")

if true{
    let anotherCharacter: Character = "a"
    switch anotherCharacter {
        case "a","A":
        print("The letter a")
    default:
        print("not a")
    }
}
print("=================")

if true{
    let somePoint = (2,2)
    switch somePoint {
    case (0,0):
        print("0,0")
    case (_,0):
        print(" y = 0")
    case(0,_):
        print("x = 0")
    case (-2..<2,-2..<2):
        print("in -2 ~ 2")
    default:
        print("another")
    }
}
print("=================")

if true{
    let anotherPoint = (2,1)
    switch anotherPoint {
    case (let x, 0):
        print("on y,(x=\(x))")
    case (0,let y):
        print("on x,(y=\(y))")
    case let (x,y):
        print("somewhere:\(x),\(y)")
    }
}
print("=================")

if true{
    let yetAnotherPoint = (0, -1)
    switch yetAnotherPoint {
    case let (x,y) where (x == y) :
        print("some where x==y(\(x),\(y))")
    case let(x,y) where x == -y :
        print("some where x==-y(\(x),\(y))")
    case let (x,y) where (x == y+1 && x != y) :
        print("(\(x),\(y))")
    case let(x,y):
        print("(\(x),\(y))")
    }
}
print("=================")

if true{
    let stillAnotherPoint = (9,0)
    switch stillAnotherPoint {
    case (let distance,0),(0,let distance):
        print("distance is (\(distance))")
    default:
        print("hogehoge")
    }
}
print("=================")

if true{
    let puzzleInput = "great minds think alike"
    var puzzleOutput = ""
    let charactersToRemove: [Character] = ["a","e","i","o","u"," "]
    for character in puzzleInput.characters {
        if charactersToRemove.contains(character){
            continue
        }else{
            puzzleOutput.append(character)
        }
    }
    print(puzzleOutput)
}
print("=================")

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
