//
//  ViewController.swift
//  IQuiz
//
//  Created by Danton Ponce on 14/08/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var buttonStartQuiz: UIButton!
    @IBAction func clickStartQuiz(_ sender: Any) {
        print("Button has clicked")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }

    func setupLayout(){
        navigationItem.hidesBackButton = true
        buttonStartQuiz.layer.cornerRadius = 12.0
    }

}
