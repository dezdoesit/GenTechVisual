//
//  EndPage.swift
//  SwiftUIStoryTemplate
//
//  Created by Denard O. on 11/16/23.
//

import SwiftUI

struct EndPage: View {
    var body: some View {
        ZStack{ Image("Bookshelf")
                .ignoresSafeArea()
            NavigationLink {PageOne()}
        label: {Text("Read again???")
        }.offset(x:50, y:-330)
                .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .foregroundColor(.yellow)
            
            
        }
    }
}

#Preview {
    EndPage()
}
