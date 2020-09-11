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
            Text("Kerianne")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .foregroundColor(.white) // text color
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
