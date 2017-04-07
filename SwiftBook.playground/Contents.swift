print("=================")

let string = "abc"
let characters = string.characters
// 2番目の文字を取得
let bIndex = characters.index(characters.startIndex, offsetBy: 1)
let b = string[bIndex] // "b"
// 最後の文字を取得
let cIndex = characters.index(characters.endIndex, offsetBy: -1)
let c = string[cIndex] // "c"


print(("a"as Character))
print(string.characters)
//print(("a"as Character)+string.characters)


let range = 1.0..<4.0 // Range(1.0..<4.0)
print(range.lowerBound) // 1
print(range.upperBound) // 4


