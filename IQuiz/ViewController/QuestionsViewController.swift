//
//  QuestionsViewController.swift
//  IQuiz
//
//  Created by Danton Ponce on 14/08/24.
//

import UIKit

class QuestionsViewController: UIViewController {

    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    @IBAction func ClickAnswerButton(_ sender: UIButton) {
        
        let corretAnswer = questions[questionNumber].correctAnswer == sender.tag
        
        if corretAnswer {
                score += 1
            sender.backgroundColor = UIColor.backgroundGreen
        } else {
            sender.backgroundColor = UIColor.backgroundRed
        }
        
        if questionNumber < questions.count - 1{
            questionNumber += 1
            Timer.scheduledTimer(
                timeInterval: 0.7,
                target: self,
                selector: #selector(setupQuestion),
                userInfo: nil, repeats: false)
        } else {
            goToScoreView()
        }
        
        
    }
    
    var score = 0
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        setupQuestion()
    }
    
    func setupLayout(){
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
        
        for button in answerButtons {
            button.layer.cornerRadius = 12.0
        }
    }
    
    @objc func setupQuestion(){
        questionTitleLabel.text = questions[questionNumber].title
        
        for button in answerButtons {
            let buttonTitle = questions[questionNumber].answers[button.tag]
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    func goToScoreView(){
        performSegue(withIdentifier: "GoToScoreView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let scoreVC = segue.destination as? ScoreViewController else { return }
        
        scoreVC.score = score
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
