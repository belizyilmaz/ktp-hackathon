//
//  EBoard.swift
//  ktp-hackathon (iOS)
//
//  Created by Beliz Yılmaz on 3/26/22.
//

import SwiftUI

struct EBoard {
    var id: Int
    var name: String
    var image: String
    var class_: String
    var hometown: String
    var major: String
}

let eboards = [
    EBoard(id: 1, name: "Brendan O’Malley", image: "BrendanOmalley", class_: "Junior", hometown: "Charlotte, NC", major: "CS"),
    EBoard(id: 2, name: "Ben Woodman", image: "BenWoodman", class_: "Junior", hometown: "Cary, NC", major: "Computer Science"),
    EBoard(id: 3, name: "Yulim Kim", image: "YulimKim", class_: "Sophomore", hometown: "Superior, CO", major: "CS"),
    EBoard(id: 4, name: "Rohitha Madduluri", image: "RohithaMadduluri", class_: "Junior", hometown: "Cary, NC", major: "Computer Science"),
    EBoard(id: 5, name: "Hannah Chisholm", image: "HannahChisholm", class_: "Junior", hometown: "Chapel Hill, NC", major: "CS"),
    EBoard(id: 6, name: "Savitra Kulkarni", image: "SavitraKulkarni", class_: "Junior", hometown: "Charlotte, NC", major: "Statistics"),
    EBoard(id: 7, name: "Josh Redman", image: "JoshRedman", class_: "Junior", hometown: "Cary, NC", major: "Statistics"),
    EBoard(id: 8, name: "John Poltorak", image: "JohnPoltorak", class_: "Junior", hometown: "Apex, NC", major: "CS, Economics"),
    EBoard(id: 9, name: "Kavish Gandhi", image: "KavishGandhi", class_: "Junior", hometown: "Mumbai, India", major: "CS"),
    EBoard(id: 10, name: "Olivia Wen", image: "OliviaWen", class_: "Sophomore", hometown: "Weston, CT", major: "CS, Biology"),
    EBoard(id: 11, name: "Beliz Yilmaz", image: "BelizYilmaz", class_: "Junior", hometown: "Eskisehir, Turkey", major: "CS"),
    EBoard(id: 12, name: "Simon Low", image: "SimonLow", class_: "Junior", hometown: "Glen Ridge, NJ", major: "CS, Statistics"),
    EBoard(id: 13, name: "Cole Hoffman", image: "ColeHoffman", class_: "Junior", hometown: "Cary, NC", major: "Business, CS")
]

struct EBoardView: View {
    let ktpNavy = UIColor(red: 62, green: 100, blue: 165)
    let ktpLightBlue = UIColor(red: 60, green: 223, blue: 255)
    
    let columns = [GridItem(.fixed(180)),
                   GridItem(.fixed(180))]
    
    var body: some View {
        ScrollView {
            Text("Executive Board")
                .font(.title)
                .foregroundColor(Color(ktpNavy))
                .fontWeight(.bold)
            LazyVGrid(columns: columns) {
                ForEach(eboards, id:\.id) { eboard in
                    VStack {
                        HStack(alignment: .center) {
                            Image(eboard.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                                .clipped()
                                .cornerRadius(10)
                            Text(eboard.name)
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .frame(width: 120)
                                .foregroundColor(.white)
                        }
                        VStack(alignment: .leading) {
                            Text("**Class:** \(eboard.class_)")
                                .font(.subheadline)
                                .foregroundColor(.white)
                            Text("**Hometown:** \(eboard.hometown)")
                                .font(.subheadline)
                                .foregroundColor(.white)
                            Text("**Major:** \(eboard.major)")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(20)
                    .frame(width: 180)
                    .background(Color(ktpNavy))
                    .cornerRadius(18)
                }
            }
            Spacer()
        }
    }
}

struct EBoardView_Previews: PreviewProvider {
    static var previews: some View {
        EBoardView()
    }
}

