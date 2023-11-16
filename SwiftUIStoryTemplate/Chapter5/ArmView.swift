//
//  ArmView.swift
//  SwiftUIStoryTemplate
//
//  Created by Maya Caldwell on 11/16/23.
//

import SwiftUI

struct ArmView: View {
    @Binding var customAndroid: Android
    var body: some View {
        VStack {
            Text("Human Arms")
                .bold()
                .font(.largeTitle)
                .padding()
            
            Text(" With Human Arms, I can customize my stength and physique by training in the gym. I also give great hugs. Pro: Can handle small objects. Capable of physical connection.")
               
                
            Image("humanarm")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:75)
            
                .padding()
            
            Text("Robo Arms")
                .bold()
                .font(.largeTitle)
                .padding()
            
            Text(" With Robo Arms, I have the strength to punch and slice through steel. Pro: Capable of heavy lifts like machenary. Great for combat. Con: Unable to experience the sense of touch. ")
            
            Image("roboarm")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:150)
            
                .padding()
            
            NavigationLink {
                LegView(customAndroid: $customAndroid)
            } label: {
                Text("Next")
                    .bold()
            }
        }
    }
}

#Preview {
    ArmView (customAndroid: .constant(Android()))}
