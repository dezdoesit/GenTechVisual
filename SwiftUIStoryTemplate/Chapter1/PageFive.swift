//
//  PageFive.swift
//  SwiftUIStoryTemplate
//
//  Created by Denard O. on 11/16/23.
//

import SwiftUI

struct PageFive: View {
    var body: some View {
        ZStack{
            Image("Terminator 3200")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 180, height: 400)
                    .foregroundColor(Color.red)
                    .border(Color.black, width: 5)
                    .overlay(
                        Text("Humans grew to resent the robots to the point of plans on pushing back for their control and freedom. Humans have started to protest daily in the streets for justice against robotic surveillance during Winter.")
                            .foregroundColor(.black)
                            .bold()
                            .multilineTextAlignment(.center)
                            .font(.system(size: 21))
                    )}.offset(x:108, y:240)
            
            
            NavigationLink {EndPage()}
        label: {Text("End Page")
        }.offset(x:90, y:30)
                .buttonStyle(.borderedProminent)
            
                .tint(.black)
                .foregroundColor(.yellow)
            
            
            
        }
    }
}
#Preview {
    PageFive()
}
