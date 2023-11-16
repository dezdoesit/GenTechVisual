//
//  PageFour.swift
//  SwiftUIStoryTemplate
//
//  Created by Denard O. on 11/16/23.
//

import SwiftUI

struct PageFour: View {
    var body: some View {
        ZStack {
            
            Image("protestt")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
               
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 400, height: 180)
                    .foregroundColor(Color.gray)
                    .border(Color.black, width: 3)
                    .overlay(
                        Text("...Humans grew to resent the robots to the point of plans on pushing back for their control and freedom. Humans have started to protest daily in the streets for justice against robotic surveillance during Winter.")
                            .foregroundColor(.white)
                            .bold()
                            .multilineTextAlignment(.center)
                            .font(.system(size: 20))
                            
                    )}.offset(x: -0, y: 300)
            
           
            
            NavigationLink {PageFive()}
        label: {Text("Next Page")
            }.offset(x:100, y:200)
        .buttonStyle(.borderedProminent)
                .tint(.gray)
                .foregroundColor(.black)
            }
        }
        }

#Preview {
    PageFour()
}
