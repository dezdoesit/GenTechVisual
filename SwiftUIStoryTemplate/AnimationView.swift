//
//  AnimationView.swift
//  SwiftUIStoryTemplate
//
//  Created by Caleb Goode on 11/14/23.
//

import SwiftUI

struct AnimationView: View {
        @State var title: String = "The Aftermath..."
        @State var animateTitle: String = ""
        @State var indexValue = 0
        @State var timeInterval: TimeInterval = 0.2
              
        var body: some View {
            VStack {
                Text(animateTitle)
                    .font(.largeTitle)
                    .onAppear{
                        startAnimation()
                    }
            }
            
        }
        func startAnimation(){
            Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: true){ timer in if indexValue < title.count{
                animateTitle += String(title[title.index(title.startIndex, offsetBy: indexValue)])
                
                indexValue += 1
            }else{
                timer.invalidate()
            }
        }
        }
                
    }
#Preview {
    AnimationView()
}
