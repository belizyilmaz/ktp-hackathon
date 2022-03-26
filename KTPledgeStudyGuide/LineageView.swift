//
//  LineageView.swift
//  ktp-hackathon (iOS)
//
//  Created by Beliz Yılmaz on 3/26/22.
//

import SwiftUI


struct LineageView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(babyBlue), Color(lightestBlue)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    Text("Ctrl+Alt+Elite")
                    Text("cachemoneymilli")
                    Text("Runtime Terror")
                    Text("Slackers")
                    Text("Bit Mafia")
                }
            }
        }
        .navigationTitle("KTPhamilies")
    }
}

struct LineageView_Previews: PreviewProvider {
    static var previews: some View {
        LineageView()
    }
}
