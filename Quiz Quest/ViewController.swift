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
    
    var score  = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainView.layer.cornerRadius = 20
        mainView.layer.masksToBounds = true
        scoreLabel.text = "Total score: \(score)"
    }
}


