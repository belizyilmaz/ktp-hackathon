//
//  GreekAlphabet.swift
//  ktp-hackathon (iOS)
//
//  Created by Ethan Rayala on 3/26/22.
//

import Foundation
import SwiftUI

struct GreekAlphabet: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color(babyBlue), Color(lightestBlue)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                Text("Greek Alphabet")
            }
        }
    }
}

struct GreekAlphabet_Previews: PreviewProvider {
    static var previews: some View {
        GreekAlphabet()
    }
}
