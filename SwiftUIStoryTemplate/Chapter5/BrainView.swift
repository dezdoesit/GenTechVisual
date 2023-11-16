//
//  BrainView.swift
//  SwiftUIStoryTemplate
//
//  Created by Maya Caldwell on 11/16/23.
//

import SwiftUI

struct BrainView: View {
    @Binding var customAndroid: Android
    var body: some View {
        VStack { //insert human and robo brain capabilites here
            Text("Human Brain")
                .bold()
                .font(.largeTitle)
            
                .padding()
            
            Text("With a Human Brain, I can utlize both logic and emotion. Pro: Approaches tense situations with empathy and minumal bias. Emotional intelligence. Easily relates to the Human race. Con: Easily damaged.")
               
                .padding()
            
            Image(systemName: "brain.head.profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture {
                    customAndroid.Brain = Species.human
                }
            
            Text("Robo Brain")
                .bold()
                .font(.largeTitle)
            
                .padding()
            
            Text("With a Robo Brain, I am highly intelligent. I can process and recall information at the speed of light. Pro: I am solution oriented. Hard to destroy. I will always find a solution. Con: Difficulty understanding to the human race. Bias in favor or tech and robots.")
            
                .padding()
            
            Image("robobrain")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture {
                    customAndroid.Brain = Species.robot
                }
            
                .padding()
            
            NavigationLink {
                HeartView(customAndroid: $customAndroid)
            } label: {
                Text("Next")
                    .bold()
            }
        }
    }
}

#Preview {
    BrainView(customAndroid: .constant(Android()))
    
}
