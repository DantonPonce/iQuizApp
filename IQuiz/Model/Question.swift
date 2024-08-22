//
//  Question.swift
//  IQuiz
//
//  Created by Danton Ponce on 14/08/24.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(
        title: "What spell is used to disarm your opponent in Harry Potter?",
        answers: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"],
        correctAnswer: 2),
    
    Question(
        title: "Who is the creator of the One Ring in The Lord of the Rings?",
        answers: ["Gandalf", "Sauron", "Saruman"],
        correctAnswer: 1),
    
    Question(
        title: "What is the motto of House Stark in Game of Thrones?",
        answers: ["Winter is Coming", "Hear Me Roar", "Fire and Blood"],
        correctAnswer: 0),
    
    Question(
        title: "What is the name of Luke Skywalker's home planet in Star Wars?",
        answers: ["Naboo", "Tatooine", "Alderaan"],
        correctAnswer: 1),
    
    Question(
        title: "What is the name of the theoretical physicist played by Jim Parsons in The Big Bang Theory?",
        answers: ["Leonard Hofstadter", "Howard Wolowitz", "Sheldon Cooper"],
        correctAnswer: 2),
    
    Question(
        title: "What is the name of Thor's hammer in the Marvel universe?",
        answers: ["Stormbreaker", "Gungnir", "Mjolnir"],
        correctAnswer: 2),
    
    Question(
        title: "What is the name of Batman's hometown in the DC universe?",
        answers: ["Metropolis", "Gotham City", "Star City"],
        correctAnswer: 1),
    
    Question(
        title: "In Harry Potter, what is the name of the monster guarding the Chamber of Secrets?",
        answers: ["Basilisk", "Dragon", "Acromantula"],
        correctAnswer: 0),
    
    Question(
        title: "Who was the first Avenger recruited by S.H.I.E.L.D. in Marvel?",
        answers: ["Iron Man", "Captain America", "Black Widow"],
        correctAnswer: 1),
    
    Question(
        title: "Which Star Wars character is known for saying 'May the Force be with you'?",
        answers: ["Darth Vader", "Obi-Wan Kenobi", "Han Solo"],
        correctAnswer: 1)
]
