//
//  ContentView.swift
//  Shared
//
//  Created by Beliz Yılmaz on 3/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Welcome to the KTPledge Study Guide")
            .padding()
            .foregroundColor(Color.blue)
        
        VStack {
            HStack {
                Rectangle()
                    .foregroundColor(Color.blue)
                Rectangle()
                    .foregroundColor(Color.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
