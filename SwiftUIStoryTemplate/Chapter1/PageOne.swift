//
//  PageOne.swift
//  SwiftUIStoryTemplate
//
//  Created by Denard O. on 11/16/23.
//

import SwiftUI

struct PageOne: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                
                Image ("GT part 1")
                    .ignoresSafeArea()
                HStack {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width:230, height: 60)
                        .foregroundColor(Color.purple)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                        .overlay(
                            Text("Generation Tech")
                                .offset(x:-30, y:-16)
                                .bold())
                        .multilineTextAlignment(.center)
                        .font(.system(size: 22))
                        .overlay(Text("Chapter 1 : New Future")
                            .offset(x:-5, y:16))
                        .multilineTextAlignment(.center)
                        .font(.system(size: 22))
                }.offset(x: -80, y: -270)
                HStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 280, height: 300)
                        .foregroundColor(Color.purple)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                    
                        .overlay(
                            Text("...In the year 2079, technology has advanced beyond belief and a dystopian world in which humans are now being out numbered by Robots. The landscape of the New America has transformed with the advancement of technology.")
                                .bold()
                                .multilineTextAlignment(.center)
                                .font(.system(size: 22))
                        ).offset(x: 50, y: 250)
                }
                NavigationLink {Pagetwo()}
            label: {Text("Next Page")
            }
            .offset(x:-50, y:100)
            .buttonStyle(.borderedProminent)
                
            .tint(.black)
                .foregroundColor(.yellow)}
        }
        }
    }

#Preview {
    PageOne()
}
