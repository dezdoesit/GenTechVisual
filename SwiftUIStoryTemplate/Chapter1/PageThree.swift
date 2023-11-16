//
//  PageThree.swift
//  SwiftUIStoryTemplate
//
//  Created by Denard O. on 11/16/23.
//

import SwiftUI

struct PageThree: View {
    var body: some View {
        ZStack {
            Image("Cyberpunk")
                .ignoresSafeArea()
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 210, height: 300)
                    .foregroundColor(Color.cyan)
                    .border(Color.black, width: 3)
                
                    .overlay(
                        Text("Fiber optic data cable wires  now cover the skyline connecting the data to various corporations and homes.")
                            .bold()
                            .multilineTextAlignment(.center)
                            .font(.system(size: 26))
                    ).offset(x: -95, y: 230)
                
            }
            
            
            NavigationLink {PageFour()}
        label: {Text("Next Page")
        } .offset(x:-40, y:70)
        .buttonStyle(.borderedProminent)
                
                .tint(.cyan)
                .foregroundColor(.black)
               
                
                }
        }
}

#Preview {
    PageThree()
}
