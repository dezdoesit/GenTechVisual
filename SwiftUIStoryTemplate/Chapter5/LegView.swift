//
//  LegView.swift
//  SwiftUIStoryTemplate
//
//  Created by Maya Caldwell on 11/16/23.
//

import SwiftUI

struct LegView: View {
    @Binding var customAndroid: Android
    var body: some View {
        VStack {
            Text("Human Legs")
                .bold()
                .font(.largeTitle)
            
                .padding()
            
            Text("With Human Legs,  I can customize my stength and physique by training in the gym. I am flixible and can run at a consistent speed. ")
            
            Image(systemName: "figure.walk.motion")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:200)
            
                .padding()
                .padding()
            
            Text("Robo Legs")
                .bold()
                .font(.largeTitle)
            
            Image("roboleg")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:200)
            
                .padding()
                .padding()
            
            NavigationLink {
                AndroidBuilder(customAndroid: customAndroid)
            } label: {
                Text("Next")
                    .bold()
            }
        }
    }
}

#Preview {
    LegView (customAndroid: .constant(Android()))
}
