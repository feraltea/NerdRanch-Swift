//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

enum Token {
    case Number(Int)
    case Plus
}

class Lexer {
    
    enum ErrorType: Error {
        case InvalidCharacter(Character)
    }
    
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
    
    func lex() throws -> [Token] {
        var tokens = [Token]()
        
        while let nextCharacter = peek() {
            switch nextCharacter {
                
                case "0" ... "9":
                //start of a number - need to grab the rest 
                
                case "+":
                tokens.append( .Plus)
                advance()
                
                case " ":
                //just advance here to ignore spaces
                advance()
                
                default:
                //something unexpected - need to send back an error
                throw ErrorType.InvalidCharacter(Character)
                
            }
        }
        return tokens
    }
}












