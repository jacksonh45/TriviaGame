//
//  ContentView.swift
//  TriviaGame
//
//  Created by Jackson Harrison on 5/6/24.
//


import SwiftUI
 
//first view of the app
struct ContentView: View {

    //var for the score
    @State var score = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                
                Text("Welcome to the quiz game")
                
                //button to start the quiz
                NavigationLink(destination: Quiz1()) {
                    Text("START QUIZ")
                }
                HStack{
                    //display your score
                    Text("last score : \(self.score) / \(myQuiz1.count)")
                        .onAppear(){ //refresh score
                            self.score = LoadScore(quiz: "myQuiz1")
                    }
                }
            }
        }
    }
}




struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
