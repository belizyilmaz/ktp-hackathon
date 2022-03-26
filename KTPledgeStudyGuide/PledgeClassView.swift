//
//  PledgeClassView.swift
//  ktp-hackathon
//
//  Created by Beliz Yılmaz on 3/26/22.
//

import SwiftUI

struct PledgeClassView: View {
    
    let ktpNavy = UIColor(red: 62, green: 100, blue: 165)
    let ktpLightBlue = UIColor(red: 60, green: 223, blue: 255)

    
    var body: some View {
        VStack {
            ForEach((1...8), id: \.self) {_ in
                HStack {
                    PledgeView
                    PledgeView
                }
            }
        }
    }
    
    
    var PledgeView: some View {
        Button(action: {}) {
            HStack(spacing: 20) {
                Image(systemName: "andrew")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .foregroundColor(.white)
                Text("Andrew Knotts")
                    .font(.subheadline)
                    .frame(width: 140)
                    .foregroundColor(.white)
            }
            .padding(20)
            .frame(width: 180)
            .background(Color(ktpLightBlue))
            .cornerRadius(18)
        }
    }
}

struct PledgeClassView_Previews: PreviewProvider {
    static var previews: some View {
        PledgeClassView()
    }
}

