//
//  ScoreViewController.swift
//  IQuiz
//
//  Created by Danton Ponce on 15/08/24.
//

import UIKit

class ScoreViewController: UIViewController {
    
    var score: Int?

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var restartQuizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupScore()
    }
    
    func setupLayout(){
        navigationItem.hidesBackButton = true
        restartQuizButton.layer.cornerRadius = 12.0
    }
    
    func setupScore(){
        guard let score = score else { return }
        scoreLabel.text = "You got \(score) out of \(questions.count) questions right"
        
        let percent = (score * 100) / questions.count
        percentLabel.text = "Final score: \(percent)%"
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
