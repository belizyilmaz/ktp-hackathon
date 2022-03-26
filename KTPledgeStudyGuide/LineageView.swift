//
//  LineageView.swift
//  ktp-hackathon (iOS)
//
//  Created by Beliz Yılmaz on 3/26/22.
//

import SwiftUI


struct LineageView: View {
    let ktpNavy = UIColor(red: 62, green: 100, blue: 165)
    let ktpLightBlue = UIColor(red: 60, green: 223, blue: 255)
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(babyBlue), Color(lightestBlue)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Text("Ctrl+Alt+Elite")
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding(.vertical)
                    HStack {
                        VStack {
                            Text("Maya Agnihotri")
                                .foregroundColor(.white)
                                .font(.caption)
                            Text("Mia Uitz")
                                .foregroundColor(.white)
                                .font(.caption)
                            Text("Manisha Nallakatla")
                                .foregroundColor(.white)
                                .font(.caption)
                            Text("Srinidhi Ekkurthi")
                                .foregroundColor(.white)
                                .font(.caption)
                        }
                        .padding(.horizontal)
                        VStack {
                            Text("Rohitha Madduluri")
                                .foregroundColor(.white)
                                .font(.caption)
                            Text("Beliz Yilmaz")
                                .foregroundColor(.white)
                                .font(.caption)
                            HStack {
                                Text("Naman Kejriwal")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                Text("Raheel Qamar")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                            HStack {
                                Text("Alison Polito")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                Text("Ayush Garg")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .frame(width: 360, height: 200)
                .background(RoundedRectangle(cornerRadius: 20)
                                .fill(Color(ktpNavy))
                                .shadow(color: .blue, radius: 8, x: 0, y: 5)
                )
//                    Text("cachemoneymilli")
//                    Text("Runtime Terror")
//                    Text("Slackers")
//                    Text("Bit Mafia")
                    
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
