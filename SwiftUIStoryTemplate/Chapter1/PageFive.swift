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
                        Text("The robots have requested backup to prepare for the humans protest. EVA now walk the streets for criminals, Bender guards Power Station, and Terminator 3200 monitor humans for potential protest.")
                            .foregroundColor(.black)
                            .bold()
                            .multilineTextAlignment(.center)
                            .font(.system(size: 21))
                    )}.offset(x:108, y:240)
            
            
            NavigationLink {EndPage()}
        label: {Text("End")
        }.offset(x:60, y:30)
                .buttonStyle(.borderedProminent)
            
                .tint(.black)
                .foregroundColor(.yellow)
            
        }
    }
}
#Preview {
    PageFive()
}
