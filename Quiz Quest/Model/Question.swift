//
//  Questions.swift
//  Quiz Quest
//
//  Created by Abdul Basit on 02/08/2023.
//

import Foundation


struct Question {
    
    let question: String
    let answer: String
    
//    Change constant names to q and a by using a initilizer
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}


