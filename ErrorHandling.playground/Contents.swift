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
    
    func getNumber() -> Int {
        var value = 0
        
        while let nextCharacter = peek () {
            switch nextCharacter {
                case "0" ... "9":
                //another digit - add it into value 
                let digitValue = Int(String(nextCharacter))!
                value = 10*value + digitValue
                advance()
                
            default:
                //a non-digit - go back to regular lexing
                return value
            }
        }
        return value
    }
    
    func lex() throws -> [Token] {
        var tokens = [Token]()
        
        while let nextCharacter = peek() {
            switch nextCharacter {
                
                case "0" ... "9":
                //start of a number - need to grab the rest 
                let value = getNumber()
                tokens.append(.Number(value))
                
                case "+":
                tokens.append( .Plus)
                advance()
                
                case " ":
                //just advance here to ignore spaces
                advance()
                
                default:
                //something unexpected - need to send back an error
                throw ErrorType.InvalidCharacter(nextCharacter)
                
            }
        }
        return tokens
    }
    
}

func evaluate(input: String) {
    print("evaluating: \(input)")
    let lexer = Lexer(input: input)
    
    do {
        let tokens = try lexer.lex()
        print("Lexer output: \(tokens)")
    } catch Lexer.ErrorType.InvalidCharacter(let character) {
            print("Input contained an invalid character: \(character)")
    } catch {
        print("an error occurred: \(error)")
    }
}


//evaluate(input: "10 + 3 + 5")

class Parser {
    let tokens: [Token]
    var position = 0
    
    init(tokens: [Token]) {
        self.tokens = tokens
    }
    
    func getNextToken() -> Token? {
        guard position < tokens.count else {
            return nil
        }
        position += 1
        return tokens[position]
    }
}

print(str)











