//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

enum Token {
    case Number(Int)
    case Plus
}

class Lexer {
    let input: String.CharacterView
    var position: String.CharacterView.Index
    
    init(input: String) {
        self.input = input.characters
        self.position = self.input.startIndex
    }
    
    func peek() -> Character? {
        guard position < input.endIndex else {
            return nil
        }
        return input[position]
    }
    
    func advance() {
//      input.formIndex(&position, limitedBy: input.endIndex)
        assert(position < input.endIndex, "cannot advnace past end!")
        input.formIndex(&position, offsetBy: 1)
    }
}

print(str)













