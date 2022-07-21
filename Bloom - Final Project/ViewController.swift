//
//  ViewController.swift
//  Bloom - Final Project
//
//  Created by Anaisha Das on 7/19/22.
//

import UIKit

var quizAnswers = [false, false, false, false]
var quizScore = 0



class ViewController: UIViewController {
    
    // QUIZ BUTTONS
    @IBOutlet weak var rightButton1: UIButton!
    @IBOutlet weak var q1wrongButton1: UIButton!
    @IBOutlet weak var q1wrongButton2: UIButton!
    
    @IBOutlet weak var rightButton2: UIButton!
    @IBOutlet weak var q2wrongButton1: UIButton!
    @IBOutlet weak var q2wrongButton2: UIButton!
    
    @IBOutlet weak var rightButton3: UIButton!
    @IBOutlet weak var q3wrongButton1: UIButton!
    @IBOutlet weak var q3wrongButton2: UIButton!
    
    @IBOutlet weak var rightButton4: UIButton!
    @IBOutlet weak var q4wrongButton1: UIButton!
    @IBOutlet weak var q4wrongButton2: UIButton!
    
    // QUIZ SCORE LABEL
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // QUIZ FUNCTIONS
    @IBAction func whenQ1A1ButtonPressed(_ sender: Any) {
        quizAnswers[0] = true
    }
    @IBAction func whenQ1A2ButtonPressed(_ sender: Any) {
        quizAnswers[0] = false
    }
    @IBAction func whenQ1A3ButtonPressed(_ sender: Any) {
        quizAnswers[0] = false
    }
    @IBAction func whenQ2A1ButtonPressed(_ sender: Any) {
        quizAnswers[1] = false
    }
    @IBAction func whenQ2A2ButtonPressed(_ sender: Any) {
        quizAnswers[1] = true
    }
    @IBAction func whenQ2A3ButtonPressed(_ sender: Any) {
        quizAnswers[1] = false
    }
    @IBAction func whenQ3A1ButtonPressed(_ sender: Any) {
        quizAnswers[2] = true
    }
    @IBAction func whenQ3A2ButtonPressed(_ sender: Any) {
        quizAnswers[2] = false
    }
    @IBAction func whenQ3A3ButtonPressed(_ sender: Any) {
        quizAnswers[2] = false
    }
    @IBAction func whenQ4A1ButtonPressed(_ sender: Any) {
        quizAnswers[3] = false
    }
    @IBAction func whenQ4A2ButtonPressed(_ sender: Any) {
        quizAnswers[3] = false
    }
    @IBAction func whenQ4A3ButtonPressed(_ sender: Any) {
        quizAnswers[3] = true
    }
    @IBAction func scoreButtonClicked(_ sender: Any) {
        var countTrue = 0
        for ans in quizAnswers {
            if ans == true {
                countTrue += 1
            }
        }
        print(countTrue)
        if totalLabel.text != nil {
            totalLabel.isHidden = false
            totalLabel.text! = "\(countTrue)/4"
        }
        
    
    }
    
    }
    
