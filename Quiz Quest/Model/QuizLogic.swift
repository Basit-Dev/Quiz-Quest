//
//  QuizLogic.swift
//  Quiz Quest
//
//  Created by Abdul Basit on 02/08/2023.
//

import Foundation
import SwiftUI
import UIKit

struct QuizLogic {
    
    //  Intial Variables
    var score = 0
    var questionNumber = 0
    var trackProgress = Float()
    var showView = true
    
    
    
    //  Questions array
    let questions = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    //  Check if correct answer function
    mutating func CheckAnswer(answerSelected: String) {
        if questions[questionNumber].answer == answerSelected {
            //  Update score when answer is correct
            score += 1
        }
        //  Then Update UI
        updateQuestionNumber()
        
        //  Check if we have reached the last question
        checkIfLastQuestion()
    }
    
    // Update question number function
   mutating func updateQuestionNumber()  {
        
        //  Update question number
        questionNumber += 1
    }
    
    //   Check If LastQuestion function
     mutating func checkIfLastQuestion()  {
        if questionNumber > questions.count - 1  {
            questionNumber = 0
            score = 0
        }
    }
    
    //  Update Progress Bar function
    mutating func updateProgressBar() -> Float {
        trackProgress = Float(questionNumber + 1) / Float(questions.count)
        return trackProgress
    }
}



