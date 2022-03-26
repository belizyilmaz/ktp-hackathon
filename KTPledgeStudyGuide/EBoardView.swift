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
    var position: String
    var class_: String
    var hometown: String
    var major: String
}

let eboards = [
    EBoard(id: 1, name: "Brendan O’Malley", image: "BrendanOmalley", position: "President", class_: "Junior", hometown: "Charlotte, NC", major: "CS"),
    EBoard(id: 2, name: "Ben Woodman", image: "BenWoodman", position: "Senior Vice President", class_: "Junior", hometown: "Cary, NC", major: "Computer Science"),
    EBoard(id: 3, name: "Yulim Kim", image: "YulimKim", position: "Secretary and Treasurer", class_: "Sophomore", hometown: "Superior, CO", major: "CS"),
    EBoard(id: 4, name: "Rohitha Madduluri", image: "RohithaMadduluri", position: "Senior Advisor", class_: "Junior", hometown: "Cary, NC", major: "Computer Science"),
    EBoard(id: 5, name: "Hannah Chisholm", image: "HannahChisholm", position: "Co-Director of Rush", class_: "Junior", hometown: "Chapel Hill, NC", major: "CS"),
    EBoard(id: 6, name: "Savitra Kulkarni", image: "SavitraKulkarni", position: "Co-Director of Rush", class_: "Junior", hometown: "Charlotte, NC", major: "Statistics"),
    EBoard(id: 7, name: "Josh Redman", image: "JoshRedman", position: "Director of Membership", class_: "Junior", hometown: "Cary, NC", major: "Statistics"),
    EBoard(id: 8, name: "John Poltorak", image: "JohnPoltorak", position: "Director of Pledging", class_: "Junior", hometown: "Apex, NC", major: "CS, Economics"),
    EBoard(id: 9, name: "Kavish Gandhi", image: "KavishGandhi", position: "Co-Director of Tech Enrichment", class_: "Junior", hometown: "Mumbai, India", major: "CS"),
    EBoard(id: 10, name: "Olivia Wen", image: "OliviaWen", position: "Co-Director of Tech Enrichment", class_: "Sophomore", hometown: "Weston, CT", major: "CS, Biology"),
    EBoard(id: 11, name: "Beliz Yilmaz", image: "BelizYilmaz", position: "Director of Marketing", class_: "Junior", hometown: "Eskisehir, Turkey", major: "CS"),
    EBoard(id: 12, name: "Simon Low", image: "SimonLow", position: "Director of Outreach", class_: "Junior", hometown: "Glen Ridge, NJ", major: "CS, Statistics"),
    EBoard(id: 13, name: "Cole Hoffman", image: "ColeHoffman", position: "Director of Social Engagement", class_: "Junior", hometown: "Cary, NC", major: "Business, CS")
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
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 2))
                            Text(eboard.name)
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .frame(width: 120, alignment: .center)
                                .foregroundColor(.white)
                        }
                        VStack(alignment: .leading) {
                            Text("**Position:** \(eboard.position)")
                                .font(.subheadline)
                                .foregroundColor(.white)
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
                .frame(width: 150, height: 200)
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

