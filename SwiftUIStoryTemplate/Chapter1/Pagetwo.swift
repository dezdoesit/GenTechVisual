//
//  Pagetwo.swift
//  SwiftUIStoryTemplate
//
//  Created by Denard O. on 11/16/23.
//

import SwiftUI

struct Pagetwo: View {
    var body: some View {
        ZStack {
            Image ("Cal")
                .offset( x:-40, y:-150)
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 270, height: 330)
                    .foregroundColor(Color.orange)
                    .border(Color.black, width: 3)
                
                    .overlay(
                        Text("Cal born in the year 2039 at the beginning of the technological integration period. After losing his family he joined the rebellion in the year 2079. He became one of the many captains in the rebellion against the robots. He is a carrier of the cyberlink chip & carries the military grade laser rifle for protection to defeat the robots and aid the rebellion.")
                            .bold()
                            .multilineTextAlignment(.center)
                            .font(.system(size: 19.5))
                    ).offset(x: 61, y: 248)
                
            }
            
            
            NavigationLink {PageThree()}
        label: {Text("Next Page")
        }
        .offset(x:-30, y:70)
        .buttonStyle(.borderedProminent)
        
                .tint(.black)
            .foregroundColor(.orange)}
                      
                        
                }
        }

#Preview {
    Pagetwo()
}
