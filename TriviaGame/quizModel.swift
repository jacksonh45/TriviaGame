//
//  quizModel.swift
//  TriviaGame
//
//  Created by Jackson Harrison on 5/6/24.
//

import Foundation


//structure of single quiz
struct QuizModel  {
    var img : String?
    var text : String?
    var answer : [String]
    //specify what is the correct answer
    var correct : Int?
}
//final quiz is an array of quizmodel
var myQuiz1 : [QuizModel] = [

    QuizModel(img: "img",
    text: "Paul Di'Anno was the lead singer of which band?",
    answer: ["Metallica","Iron Maiden","Dream Theatre","Mushroomhead"],
    correct: 1),
    
    QuizModel(img: "img",
    text: "After leaving Metallica, Dave Mustaine became lead vocalist for which band?",
    answer: ["He never left Metallica","AC/DC","Megadeath","Foo Fighters"],
    correct: 2),
    
    QuizModel(img: "img",
    text: "Which one of these is/was the longest-serving band?",
    answer: ["The Rolling Stones","Metallica","Guns `n` Roses","Avenged Sevenfold"],
    correct: 0),
    
    QuizModel(img: "img",
    text: "Which Metallica album sold the most copies?",
    answer: ["Ride the Lightning","...And Justice For All","The Black Album(Metallica)","Reload"],
    correct: 2),
    
    QuizModel(img: "img",
    text: "Which one of these bands performs wearing masks?",
    answer: ["Korn","Dope","Lamb of God","Slipknot"],
    correct: 3),
    
    QuizModel(img: "img",
    text: "Who is the singer of 'System of a Down'?",
    answer: ["Serj Tankian","Bob Dylan","James Taylor","Lars Ulrich"],
    correct: 0),

]



func SaveScore(quiz : String , score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore (quiz : String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
