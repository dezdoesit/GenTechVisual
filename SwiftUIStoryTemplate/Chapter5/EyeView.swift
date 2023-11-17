//
//  EyeView.swift
//  SwiftUIStoryTemplate
//
//  Created by Maya Caldwell on 11/16/23.
//

import SwiftUI

struct EyeView: View {
    @Binding var customAndroid: Android
    var body: some View {
        VStack {
            Text("Human Eyes")
                .bold()
                .font(.largeTitle)
            
                .padding()
            
            Text("With Human Eyes, I have the gift of beauty. My beauty is in the eye of all beholders. Pro: Liked by eveyrone. Con: Often underestimated.")
               
            
            Image(systemName: "eye")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:150)
            
                .padding()
            
            Text("Robo Eyes")
                .bold()
                .font(.largeTitle)
               
                .padding()
            
            Text("With Robo Eyes, I have the ability of x-ray vision. I can see through most materials. Pro: Super vision. Lack of eye fatigue. Con: Highly sensitive. Does not pair well with Human Brain. ")
            
            Image("RoboPart1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .symbolEffect(.variableColor.iterative.nonReversing)
                .symbolRenderingMode(.multicolor)
                .frame(width:150)
            
                .padding()
            
            NavigationLink {
                ArmView(customAndroid: $customAndroid)
            } label: {
                Text("Next")
                    .bold()
            }
            
            
        }
    }
}

#Preview {
    EyeView (customAndroid: .constant(Android()))
}
