//
//  Page4View.swift
//  SwiftUIStoryTemplate
//
//  Created by Caleb Goode on 11/16/23.
//

import SwiftUI

struct Page4View: View {
    var body: some View {
        ZStack {
            Image("car")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack {
                Text("They know the battle is lost and now they are barely holding their own so suddenly the team makes the quick decision to flee in the floatamobile going 500 miles per hour")
                    .padding()
                    .background(.clear)
                    .foregroundStyle(.white)
                    .frame(width: 300)
                    .font(.system(size: 25, weight: .bold, design: .serif))
                    .bold()
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 800, alignment: .bottom)
                
                Spacer()
            }
            
            
        }
    }
}
#Preview {
    Page4View()
}
