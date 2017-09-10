//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer:Bool = false
    var questionNumber:Int = 0
    var score:Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startOver()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswer = true
        }else{
            pickedAnswer = false
        }
        checkAnswer()
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        if questionNumber >= 13 {
            let alert = UIAlertController.init(title: "Quiz Complete", message: "Do you want to retake Quiz?", preferredStyle: .actionSheet)
            let restartAction = UIAlertAction.init(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }else{
            let question = allQuestions.list[questionNumber]
            questionLabel.text = question.questionText
            progressLabel.text = "\(questionNumber+1)/13"
            progressBar.frame.size.width = (view.frame.size.width/13) * CGFloat(questionNumber+1)
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            score += 1
            scoreLabel.text = "\(score)"
            ProgressHUD.showSuccess("Correct")
        }else{
            ProgressHUD.showError("Worng!")
        }
        questionNumber += 1
        nextQuestion()
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        scoreLabel.text = "\(score)"
        progressLabel.text = "\(questionNumber+1)/13"
        progressBar.frame.size.width = (view.frame.size.width/13) * CGFloat(questionNumber)
        nextQuestion()
    }
    

    
}
