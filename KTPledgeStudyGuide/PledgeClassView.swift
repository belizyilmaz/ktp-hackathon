//
//  PledgeClassView.swift
//  ktp-hackathon
//
//  Created by Beliz Yılmaz on 3/26/22.
//

import SwiftUI

struct Pledge {
    var id: Int
    var name: String
    var image: String
    var class_: String
    var hometown: String
    var major: String
}

let pledges = [
    Pledge(id: 1, name: "Andrew Knotts", image: "andrew", class_: "Sophomore", hometown: "Charlotte, NC", major: "CS and Studio Art"),
    Pledge(id: 2, name: "Kirsten Allen", image: "kirsten", class_: "Freshman", hometown: "Durham, NC", major: "CS and Stats"),
    Pledge(id: 3, name: "Davis Atwell", image: "davis", class_: "Sophomore", hometown: "Raleigh, NC", major: "CS"),
    Pledge(id: 4, name: "Jackson Reed", image: "jackson", class_: "Sophomore", hometown: "Wake Forest, NC", major: "CS and Mathematics"),
    Pledge(id: 5, name: "Arvind Veerelli", image: "arvind", class_: "Sophomore", hometown: "New Delhi, India", major: "CS"),
    Pledge(id: 6, name: "Sarayu Yenumula", image: "sarayu", class_: "Freshman", hometown: "Morrisville, NC", major: "CS"),
    Pledge(id: 7, name: "Tanvi Pulipaka", image: "tanvi", class_: "Freshman", hometown: "Royersford, PA", major: "Pharmacy"),
    Pledge(id: 8, name: "Ashwin Senthil", image: "ashwin", class_: "Sophomore", hometown: "Cary, NC", major: "CS"),
    Pledge(id: 9, name: "Lam Ngo", image: "lam", class_: "Junior", hometown: "Cary, NC", major: "CS"),
    Pledge(id: 10, name: "Ayush Garg", image: "ayush", class_: "Sophomore", hometown: "Denver, CO", major: "CS"),
    Pledge(id: 11, name: "Milen Patel", image: "milen", class_: "Junior", hometown: "Cary, NC", major: "CS and Statistics"),
    Pledge(id: 12, name: "Srinidhi Ekkurthi", image: "srinidhi", class_: "Freshman", hometown: "Morrisville, NC", major: "Pre-Biostatistics"),
    Pledge(id: 13, name: "Tara Ghorpadkar", image: "tara", class_: "Sophomore", hometown: "Charlotte, NC", major: "CS and Statistics"),
    Pledge(id: 14, name: "Arya Rao", image: "arya", class_: "Freshman", hometown: "Cary, NC", major: "CS"),
    Pledge(id: 15, name: "Alison Polito", image: "alison", class_: "Freshman", hometown: "Apex, NC", major: "Information Science")
]

struct PledgeClassView: View {
    let ktpNavy = UIColor(red: 62, green: 100, blue: 165)
    let ktpLightBlue = UIColor(red: 60, green: 223, blue: 255)
    
    let columns = [GridItem(.fixed(180)),
                   GridItem(.fixed(180))]
    
    var body: some View {
        ScrollView {
            Text("Pledges: Gamma Class")
                .font(.title)
                .foregroundColor(Color(ktpNavy))
                .fontWeight(.bold)
            LazyVGrid(columns: columns) {
                ForEach(pledges, id:\.id) { pledge in
                    VStack {
                        HStack(alignment: .center) {
                            Image(pledge.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                                .clipped()
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 2))
                            Text(pledge.name)
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .frame(width: 120)
                                .foregroundColor(.white)
                        }
                        VStack(alignment: .leading) {
                            Text("**Class:** \(pledge.class_)")
                                .font(.subheadline)
                                .foregroundColor(.white)
                            Text("**Hometown:** \(pledge.hometown)")
                                .font(.subheadline)
                                .foregroundColor(.white)
                            Text("**Major:** \(pledge.major)")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(20)
                    .frame(width: 180)
                    .background(Color(ktpLightBlue))
                    .cornerRadius(18)
                }
                .frame(width: 150, height: 200)
            }
            Spacer()
        }
    }
}

struct PledgeClassView_Previews: PreviewProvider {
    static var previews: some View {
        PledgeClassView()
    }
}

