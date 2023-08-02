//
//  ViewController.swift
//  Quiz Quest
//
//  Created by Abdul Basit on 06/07/2023.
//

import UIKit
@IBDesignable
class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var score = 0
    var questionNumber = 0
    var trackProgress = Float()
        
    let questions = [
        ["A slug's blood is green.", "True"],
        ["Approximately one quarter of human bones are in the feet.","False"],
        [ "The total surface area of two human lungs is approximately 70 square metres.", "True"]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        Create rounded corners on main view window
        mainView.layer.cornerRadius = 20
        mainView.layer.masksToBounds = true
        
//        Create default score and question label on initial view load
        scoreLabel.text = "Total score: \(score)"
        questionLabel.text = String(questions[questionNumber][0])
        trackProgress = Float(questionNumber + 1) / Float(questions.count)
        progressBar.progress = trackProgress
    }
    
    func checkIfLastQuestion()  {
        if questionNumber > questions.count - 1  {
            questionNumber = 0
            score = 0
        }
    }
    
    func updateProgressBar() {
       trackProgress = Float(questionNumber + 1) / Float(questions.count)
        progressBar.progress = trackProgress
    }
    
    func updateUI()  {
        
        //        Update question number
        questionNumber += 1
        
        //        Check if we have reached the last question
        checkIfLastQuestion()
        
        //        Update progress bar
        updateProgressBar()
        
        //        Update questions and score label
        questionLabel.text = String(questions[questionNumber][0])
        scoreLabel.text = "Total score: \(score)"
    }
    
    //    Check if answer is correct
    @IBAction func AnswerButton(_ sender: UIButton) {
        
        //        Get button title
        let answerSelected = sender.titleLabel
        
        if questions[questionNumber][1] == answerSelected!.text! {
            
        //        Update score when answer is correct
            score += 1
        }
        
        //        Update UI
        updateUI()
    }
}


