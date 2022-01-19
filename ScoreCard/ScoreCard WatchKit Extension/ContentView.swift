//
//  ContentView.swift
//  ScoreCard WatchKit Extension
//
//  Created by Gavin Back on 1/14/22.
//

import SwiftUI


struct ContentView: View {
    @State  var score = 0
    @State  var hole = 1
    @State var total = 0
    var body: some View {
        ScrollView{
            VStack {
                Text("Hole: " + String(hole))
                HStack{
                    Text("Current Score:")
                        .bold()
                    Text(String(score))
                    
                }
                HStack{
                    Text("Round Total: ")
                    Text (String(total))
                }
                HStack{
                    Button("Plus") {
                        if (score < 9){
                            score += 1
                        }
                    }
                    Button("Minus"){
                        if (score >= 1){
                            score -= 1
                        }
                    }
                }
                Button("Save Hole"){
                    if (hole < 18){
                        hole += 1
                        total += score
                        score = 0
                    }else if (hole == 18){
                        total += score
                        score = 0
                    }
                    
                }
                .background(.green).cornerRadius(8.0)
                Button("Reset Round"){
                    hole = 1
                    total = 0
                    score = 0
                }.background(.red).cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
