//
//  ViewController.swift
//  Quiz Quest
//
//  Created by Abdul Basit on 06/07/2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    //  Outlets
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var progressBar: UIProgressView!
    
    //  Create QuizLogic instance
    var quizLogic = QuizLogic()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //  Create rounded corners on main view window
        mainView.layer.cornerRadius = 20
        mainView.layer.masksToBounds = true
        
        //  Create default score and question label on initial view load
        scoreLabel.text = "Total score: \(quizLogic.score)"
        questionLabel.text = String(quizLogic.questions[quizLogic.questionNumber].question)
        quizLogic.trackProgress = Float(quizLogic.questionNumber + 1) / Float(quizLogic.questions.count)
        progressBar.progress = quizLogic.trackProgress
    }
    
    
    //  Check if answer is correct
    @IBAction func AnswerButton(_ sender: UIButton) {
        
        //  Get button title
        let answerSelected = sender.titleLabel
        
        //  Go to quizLogic and check answer
        quizLogic.CheckAnswer(answerSelected: answerSelected!.text!)
        
        //  Update the UI
        updateUI()

    }
    
    @objc func updateUI() {
//        Update question number
        
        //  Update progressBar
        progressBar.progress = quizLogic.updateProgressBar()
        
        //  Update questions and score label
        questionLabel.text = String(quizLogic.questions[quizLogic.questionNumber].question)
        scoreLabel.text = "Total score: \(quizLogic.score)"
    }
}

// TODO: DISPLAY A RESULT SCREEN
