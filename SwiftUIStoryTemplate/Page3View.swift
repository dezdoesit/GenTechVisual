//
//  Page3View.swift
//  SwiftUIStoryTemplate
//
//  Created by Caleb Goode on 11/16/23.
//

import SwiftUI

struct Page3View: View {
    var body: some View {
        ZStack {
            Image("robot")
                .resizable()
                .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
            VStack {
                Text("But the robots have stronger weapons and durabilty")
                    .padding()
                    .background(.clear)
                    .foregroundStyle(.white)
                    .frame(width: 300)
                    .font(.system(size: 25, weight: .bold, design: .serif))
                    .bold()
                    .multilineTextAlignment(.center)
                    .frame(width: 600, height: 550, alignment: .bottom)
            }
        }
        
        NavigationLink {
            Page4View()
        } label: {
            Text("Flip Page")
            
        }
    }
}
#Preview {
    Page3View()
}
