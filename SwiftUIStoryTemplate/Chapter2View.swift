//
//  Chapter2View.swift
//  SwiftUIStoryTemplate
//
//  Created by Caleb Goode on 11/16/23.
//

import SwiftUI

struct Chapter2View: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                //Text("Chapter 2")
                ZStack {
                    Image("city")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    VStack {
                        AnimationView()
                            .padding()
                            .background(.clear)
                            .foregroundStyle(.white)
                            .frame(width: 300)
                            .font(.system(size: 25, weight: .bold, design: .serif))
                            .bold()
                            
                        
                  
                    }
                }
                
                NavigationLink {
                    Page2View()
                } label: {
                    Text("Flip Page")
                        .ignoresSafeArea()
                    
                }
            }
        }}}
    #Preview {
        Chapter2View()
    }
