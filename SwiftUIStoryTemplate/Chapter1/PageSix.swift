//
//  PageSix.swift
//  SwiftUIStoryTemplate
//
//  Created by Denard O. on 11/16/23.
//

import SwiftUI

struct PageSix: View {
    var body: some View {
        ZStack{
            Image("R2D2")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 200, height: 300)
                    .foregroundColor(Color.red)
                    .border(Color.black, width: 3)
                    .overlay(
                        Text("The robots have requested backup to prepare for the humans protest. EVA now walk the streets for criminals, Bender guards Power Station, and Terminator 3200 monitor humans for potential protest.")
                            .foregroundColor(.black)
                            .bold()
                            .multilineTextAlignment(.center)
                            .font(.system(size: 20))
                    )}.offset(x:101, y:230)
            
            NavigationLink {EndPage()}
        label: {Text("End")
        }.offset(x:120, y:380)
            
                .buttonStyle(.borderedProminent)
            
                .tint(.gray)
                .foregroundColor(.black)
            
        }
        }
    }

#Preview {
    PageSix()
}
