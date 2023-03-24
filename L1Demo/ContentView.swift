//
//  ContentView.swift
//  L1Demo
//
//  Created by Damon Wu on 22/3/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.white).ignoresSafeArea()
            VStack (alignment: .leading, spacing: 20.0) {
                Image("lofi_2023_damon")
                    .resizable()
                    .cornerRadius(15)
                    .aspectRatio(contentMode: .fit)
//                    .padding(.all)
                HStack {
                    Text("Lofi 2023 Damon Image").font(.title2).fontWeight(.bold).foregroundColor(Color.black)
                    
                    Spacer()
                    
                    VStack{
                        HStack {
                            Image(systemName: "star.fill").foregroundColor(.orange)
                                .font(.caption)
                            Image(systemName: "star.fill")
                                .foregroundColor(.orange)
                                    .font(.caption)
                            Image(systemName: "star.fill")
                                .foregroundColor(.orange)
                                    .font(.caption)
                            Image(systemName: "star.fill")
                                .foregroundColor(.orange)
                                    .font(.caption)
                            Image(systemName: "star.leadinghalf.filled")
                                .foregroundColor(.orange)
                                    .font(.caption)
                            
                        }
                        Text("(Reviews 361)")
                    }
                    // SF symbols: Apple free icons
                }
                
                Text("The description text for demo only ...")
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.yellow)
                .font(.caption)
            }.padding().background(Rectangle().foregroundColor(.teal))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
