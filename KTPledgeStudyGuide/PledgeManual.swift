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
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color(babyBlue), Color(lightestBlue)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                ScrollView {
                    Image("page 1")
                        .resizable()
                        .scaledToFit()
                    Image("page 2")
                        .resizable()
                        .scaledToFit()
                    Image("page 3")
                        .resizable()
                        .scaledToFit()
                    Image("page 4")
                        .resizable()
                        .scaledToFit()
                    Image("page 5")
                        .resizable()
                        .scaledToFit()
                    Image("page 6")
                        .resizable()
                        .scaledToFit()
                    Image("page 7")
                        .resizable()
                        .scaledToFit()
                    Image("page 8")
                        .resizable()
                        .scaledToFit()
                    Image("page 9")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
}

struct PledgeManual_Previews: PreviewProvider {
    static var previews: some View {
        PledgeManual()
    }
}
