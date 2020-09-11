//
//  ContentView.swift
//  KeriCard
//
//  Created by Keri Levesque on 9/11/20.
//  Copyright © 2020 Keri Levesque. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack { // for overlapping content
            Color(red:0.09, green:0.63, blue:0.52) // set background color
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // set color to all edges
            VStack {
                Image("blank-profile-picture")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5)) // creates white outline circle for profile pic
                Text("Kerianne")
                    .font(Font.custom("Pacifico-Regular", size: 40)) //adding custom font
                    .bold()
                    .foregroundColor(.white) // text color
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "781 999 9999", imageName: "phone.fill")
                InfoView(text: "myemail@email.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//imbedded round rectangle into subview to make it reusable and moved it into separate file

