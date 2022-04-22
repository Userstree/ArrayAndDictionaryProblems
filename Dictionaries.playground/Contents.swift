import Foundation

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]


extension String
{
    func hashMessage() -> String {
        var str: String = ""
        
        for char in self {
            if char == " " {
                str = str + " "
            }
            if let char = code[String(char)] {
                str = str + char
            }
        }
        return str
    }

    func mapToDictionary() -> [String : Int] {
        var res = [String : Int]()
        let elements = self.components(separatedBy: .whitespacesAndNewlines)
        
        for element in elements {
            res[element, default: 0] += 1
        }
        return res
    }
}

extension Array
{
    func toDictionaryOfNumbers() -> [Element : Int] where Element: Hashable {
        var map = [Element : Int]()
        for i in self {
            map[i, default: 0] += 1
        }
        return map
    }
}


// Sub 1
var hello = "hello programmer"
hello.hashMessage()

// Sub 2
var nums = [2234, 34, 24, 23, 4, 23, 423, 2, 34, 23, 2, 3, 4, 3, 4, 234]
nums.toDictionaryOfNumbers()

// Sub 3
var students = [
                "Kim Li" : 3.1,
                "Leo Dio" : 2.3,
                "Trusteen Smith" : 3.4,
                "Kfc Mac" : 3.02,
                "Leo Jack" : 2.3,
                "Tru Story" : 3.5
]

func gpaHigherThanThree(of map: [String : Double]) -> [String : Double] {
    var sorted = [String : Double]()
    
    for (key, value) in map {
        if value > 3.0 {
            sorted[key] = value
        }
    }
    return sorted
}

gpaHigherThanThree(of: students)

var toTest = "hi hey rect rect evbiue hey jafv"
toTest.mapToDictionary()




