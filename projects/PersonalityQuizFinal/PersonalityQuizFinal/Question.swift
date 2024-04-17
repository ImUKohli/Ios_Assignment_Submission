//
//  Question.swift
//  PersonalityQuizFinal
//
//  Created by student on 06/03/24.
//

import Foundation


struct Question{
    var text: String
    var type: ResponseType
    var answer: [Answer]
}

enum ResponseType{
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}
enum AnimalType{
    case lion = "🦁" , cat = "🐱" , rabbit = "🐰" , turtle = "🐢"
    
    var definition: String {
        switch self{
            case .lion:
                return "You are incredibly outgoing. You Surround yourself with the people you love and enjoy activities with your friends."
            case .cat:
                return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
            case .rabbit:
                return "You Love everything that's soft. You are healthy and full of energy."
            case .turtle:
                return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
    
}


