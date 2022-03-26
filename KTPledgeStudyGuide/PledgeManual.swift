//
//  PledgeManual.swift
//  ktp-hackathon (iOS)
//
//  Created by Ethan Rayala on 3/26/22.
//

import Foundation
import SwiftUI

struct PledgeManual: View {
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [Color(babyBlue), Color(lightestBlue)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView {
                ForEach(1..<9) { i in
                    Image("page \(i)")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .navigationTitle("Pledge Manual")
    }
}

struct PledgeManual_Previews: PreviewProvider {
    static var previews: some View {
        PledgeManual()
    }
}
