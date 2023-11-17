//
//  Page2View.swift
//  SwiftUIStoryTemplate
//
//  Created by Caleb Goode on 11/16/23.
//

import SwiftUI

struct Page2View: View {
    var body: some View {
        ZStack {
          Image("soldier")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack {
                Text("The humans band together to attack the robots")
                    .padding()
                    .background(.clear)
                    .foregroundStyle(.white)
                    .frame(width: 300)
                    .font(.system(size: 25, weight: .bold, design: .serif))
                    .bold()
                    .multilineTextAlignment(.center)
                    
                Spacer()
            }
        }
            NavigationLink {
                Page3View()
            } label: {
                Text("Flip Page")
            }
        }
    }
#Preview {
    Page2View()
}
