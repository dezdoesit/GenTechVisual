//
//  HeartView.swift
//  SwiftUIStoryTemplate
//
//  Created by Maya Caldwell on 11/16/23.
//

import SwiftUI

struct HeartView: View {
    @Binding var customAndroid: Android
    var body: some View {
        VStack {
            Text("Human heart")
                .bold()
                .font(.largeTitle)
            
                .padding()
            
            Text("With a Human Heart I have the utmost empathy. Pro: Expert at understanding needs and caring for others. Con: Easily heartbroken ")
               
                .padding()
            
            Image(systemName: "heart.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:150)
            
                .padding()
            
            Text("Robo Heart")
                .bold()
                .font(.largeTitle)
        
            
            Text("With a Robo Heart I have a heart made of steel. I am emotionally uneffected. Pro: not easily distracted nor destroyed. Good for combat. Con: Poor quality of life. Made for war.")
               
                .padding()
            
            Image("RoboPart4")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .symbolEffect(.variableColor.iterative.nonReversing)
                .symbolRenderingMode(.multicolor)
                .frame(width:200)
            
                .padding()
            
            NavigationLink {
                EyeView(customAndroid: $customAndroid)
            } label: {
                Text("Next")
                    .bold()
            }
        }
    }
}
#Preview {
    HeartView (customAndroid: .constant(Android()))
}
