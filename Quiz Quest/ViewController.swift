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
    
    
    var score = 0
    var questionNumber = 0
    
    let questions = [
        ["A slug's blood is green.", "True"],
        ["Approximately one quarter of human bones are in the feet.","True"],
        [ "The total surface area of two human lungs is approximately 70 square metres.", "True"],
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainView.layer.cornerRadius = 20
        mainView.layer.masksToBounds = true
        scoreLabel.text = "Total score: \(score)"
        questionLabel.text = String(questions[questionNumber][0])
    }
    
    
//    Check if answer is correct
    @IBAction func trueBtn(_ sender: UIButton) {
        if questions[questionNumber][1] == "True" {
            score += 1
            questionNumber += 1
            scoreLabel.text = "Total score: \(score)"
            questionLabel.text = String(questions[questionNumber][0])
        }
    }
}


