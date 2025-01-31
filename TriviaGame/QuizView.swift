//
//  QuizView.swift
//  TriviaGame
//
//  Created by Jackson Harrison on 5/6/24.
//


import SwiftUI


//view for the quiz game
struct Quiz1 : View {
    
    //number of question
    @State var i : Int = 0
    
    //var for the score
    @State var score = 0
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            
            //if i < of questions --> play question
            if(self.i < myQuiz1.count){
                
                
                //image of the question
//                Image(myQuiz1[self.i].img!)
//                    .resizable()
//                    .scaledToFit()
//                    .padding(.horizontal)
                
                //text of the question
                Text(myQuiz1[self.i].text!)
                    .multilineTextAlignment(.center)
                
                
                //answer 0
                Button(action:{
                    self.buttonAction(n: 0)
                },label: {
                    Text(myQuiz1[self.i].answer[0])
                })
                
                
                //answer 1
                Button(action:{
                    self.buttonAction(n: 1)
                },label: {
                    Text(myQuiz1[self.i].answer[1])
                })
                
                
                //answer 2
                Button(action:{
                    self.buttonAction(n: 2)
                },label: {
                    Text(myQuiz1[self.i].answer[2])
                })
                
                //answer 3
                Button(action:{
                    self.buttonAction(n: 3)
                },label: {
                    Text(myQuiz1[self.i].answer[3])
                })
            }
            else{
                FinalView(score : self.score)
            }
            
            
        }
    }
    func buttonAction( n : Int){
        if(myQuiz1[self.i].correct == n){
            self.score = self.score + 1
        }
        self.i = self.i + 1
    }
}
