//
//  FinalView.swift
//  TriviaGame
//
//  Created by Jackson Harrison on 5/6/24.
//


import SwiftUI


struct FinalView : View {
    
    var score : Int
    var body: some View {
        
        VStack{
            
            Text("Final Score : \(score)/6")
            .onAppear(){
                SaveScore(quiz: "myQuiz1", score: self.score)
            }
        }
    }
}
