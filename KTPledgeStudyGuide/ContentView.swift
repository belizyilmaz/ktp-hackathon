//
//  ContentView.swift
//  Shared
//
//  Created by Beliz Yılmaz on 3/26/22.
//

import SwiftUI


let lightestBlue = UIColor(red: 181, green: 229, blue: 247)
let babyBlue = UIColor(red: 105, green: 193, blue: 237)
let navy = UIColor(red: 47, green: 100, blue: 147)

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [Color(babyBlue), Color(lightestBlue)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Text("Welcome to the KTPledge Study Guide")
                    .padding()
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200, alignment: .center)
                
                Spacer()
                
                HStack {
                    NavButtonView(buttonName: "Pledge Manual")
                    NavButtonView(buttonName: "Pledge Class")
                }
                
                HStack {
                    NavButtonView(buttonName: "KTP E-Board")
                    NavButtonView(buttonName: "Brotherhood")
                }
                
                HStack {
                    NavButtonView(buttonName: "Greek Alphabet")
                    NavButtonView(buttonName: "Task Checklist")
                }
                
                HStack {
                    NavButtonView(buttonName: "Lineages")
                    NavButtonView(buttonName: "Calendar")
                }
                
                Spacer()
                
            }
        }
    }
}

struct NavButtonView: View {
    
    var buttonName: String
    
    var body: some View {
        Text(buttonName)
            .foregroundColor(.white)
            .frame(width: 170, height: 80)
            .background(Color(navy))
            .font(.title2)
            .cornerRadius(15)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
