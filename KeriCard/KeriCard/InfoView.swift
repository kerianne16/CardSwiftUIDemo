//
//  InfoView.swift
//  KeriCard
//
//  Created by Keri Levesque on 9/11/20.
//  Copyright © 2020 Keri Levesque. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white) // instead of foreground color
            .frame(height: 50) // no need for width will adjust to parent
            .overlay(HStack {
                Image(systemName: imageName)
                Text(text)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits) // allow to preview as its correct shape not on entire phone
    }
}
