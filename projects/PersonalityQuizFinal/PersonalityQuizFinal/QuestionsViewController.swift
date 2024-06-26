//
//  QuestionsViewController.swift
//  PersonalityQuizFinal
//
//  Created by student on 05/03/24.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var rangedStackView: UIStackView!
    var questions: [Question] = [
          
        Question (
            text: "Which food do you like the most?",
            type: .single,
            answers: [
                Answer (text: "Steak", type: .lion),
                Answer (text: "Fish", type: .cat),
                Answer (text: "Carrots", type: .rabbit),
                Answer (text: "Corn", type: .turtle)
            ]
        ),
        
        Question (
            text: "Which activities do you enjoy?",
            type: multiple,
            answers: [
                Answer (text: "Swimming", type: .turtle),
                Answer (text: "Sleeping", type: .cat),
                Answer (text: "Cuddling", type: .rabbit),
                Answer (text: "Eating", type: .lion)
            ]
        ),
        
        Question (
            text: "How much do you enjoy car rides?",
            type: .ranged,
            answers: [
                Answer (text: "I dislike them", type: .cat),
                Answer(text: "I get a little nervous", type: rabbit),
                Answer (text: "I barely notice them", type: turtle),
                Answer (text: "I love them", type: .lion)
                ]
            )
    ]
    var questionIndex = 0
    var answersChosen: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex+1)"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
