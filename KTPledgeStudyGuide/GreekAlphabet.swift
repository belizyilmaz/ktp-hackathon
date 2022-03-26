//
//  GreekAlphabet.swift
//  ktp-hackathon (iOS)
//
//  Created by Ethan Rayala on 3/26/22.
//

import Foundation
import SwiftUI

struct Alphabet {
    var id: Int
    var name: String
    var symbol: String
}

let fullAlphabet = [
    Alphabet(id: 1, name: "alpha", symbol: "A"),
    Alphabet(id: 2, name: "beta", symbol: "B"),
    Alphabet(id: 3, name: "gamma", symbol: "Γ"),
    Alphabet(id: 4, name: "delta", symbol: "Δ"),
    Alphabet(id: 5, name: "epsilon", symbol: "E"),
    Alphabet(id: 6, name: "zeta", symbol: "Z"),
    Alphabet(id: 7, name: "eta", symbol: "H"),
    Alphabet(id: 8, name: "theta", symbol: "Θ"),
    Alphabet(id: 9, name: "iota", symbol: "I"),
    Alphabet(id: 10, name: "kappa", symbol: "K"),
    Alphabet(id: 11, name: "lambda", symbol: "Λ"),
    Alphabet(id: 12, name: "mu", symbol: "M"),
    Alphabet(id: 13, name: "nu", symbol: "N"),
    Alphabet(id: 14, name: "xi", symbol: "Ξ"),
    Alphabet(id: 15, name: "omicron", symbol: "O"),
    Alphabet(id: 16, name: "pi", symbol: "Π"),
    Alphabet(id: 17, name: "rho", symbol: "P"),
    Alphabet(id: 18, name: "sigma", symbol: "Σ"),
    Alphabet(id: 19, name: "tau", symbol: "T"),
    Alphabet(id: 20, name: "upsilon", symbol: "Y"),
    Alphabet(id: 20, name: "phi", symbol: "Φ"),
    Alphabet(id: 22, name: "chi", symbol: "X"),
    Alphabet(id: 23, name: "psi", symbol: "Ψ"),
    Alphabet(id: 24, name: "omega", symbol: "Ω"),

]

struct GreekAlphabet: View {
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(babyBlue), Color(lightestBlue)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView {
                ForEach(fullAlphabet, id:\.id) { letter in
                    HStack {
                        Spacer()
                        Text(letter.name)
                            .padding()
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        Spacer()
                        Text(letter.symbol)
                            .padding()
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
            }
        }
        .navigationTitle("Greek Alphabet")
    }
}

struct GreekAlphabet_Previews: PreviewProvider {
    static var previews: some View {
        GreekAlphabet()
    }
}
