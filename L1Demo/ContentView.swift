//
//  ContentView.swift
//  L1Demo
//
//  Created by Damon Wu on 24/3/2023.
//

import SwiftUI

struct ContentView: View {
    // constants
    let cpuText: String = "CPU"
    let playerText: String = "Player"
    
    // variables
    @State var playerCard: String = "back"
    @State var cpuCard: String = "back"
    
    @State var playerScore: Int = 0;
    @State var cpuScore: Int = 0;
    
    @State var playerScoreLabel: Int = 0;
    @State var cpuScoreLabel: Int = 0;

    var body: some View {
        ZStack {
            Color(.systemBlue).ignoresSafeArea()
            VStack {
                Image("logo")
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }.padding(20)
                
                Button {
                    deal()
                } label: {
                    Image("button").padding(20)
                }
                
                HStack {
                    Spacer()
                    VStack{
                        Text(playerText).font(.headline)
                        Text(String(playerScoreLabel)).font(.largeTitle)
                            .padding(8)
                    }
                    Spacer()
                    VStack{
                        Text(cpuText).font(.headline)
                        Text(String(cpuScoreLabel)).font(.largeTitle).padding(8)
                    }
                    Spacer()
                }.foregroundColor(.white)
            }
        }
    }
    
    func deal() {
        playerScore = Int.random(in: 1..<13)
        
        if (playerScore == 1) {
            playerCard = String("card14")
        } else {
            playerCard = String("card\(playerScore)")
        }
        
        cpuScore = Int.random(in: 1..<13)
        
        if (cpuScore == 1) {
            cpuCard = String("card14")
        } else {
            cpuCard = String("card\(cpuScore)")
        }
        
        if (playerScore > cpuScore) {
            playerScoreLabel += 1
        } else if (cpuScore > playerScore) {
            cpuScoreLabel += 1
        }
        
        print("Deal cards ...")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
