//
//  AndroidBuilder.swift
//  SwiftUIStoryTemplate
//
//  Created by Maya Caldwell on 11/16/23.
//

import SwiftUI

struct AndroidBuilder: View {
    var customAndroid: Android
    var body: some View {
        VStack {
            Image(customAndroid.brainImagePath)
                .resizable()
                .frame(width: 150)
            
            Image(customAndroid.armImagePath)
                .resizable()
                .frame(width: 150)
            
            Image("roboeye")
                .resizable()
                .frame(width: 150)

            Image(customAndroid.heartImagePath)
                .resizable()
                .frame(width: 150)
            
            Image("roboleg")
                .resizable()
                .frame(width: 150)
            
        }
        
    }
}
#Preview {
    AndroidBuilder(customAndroid: Android(Brain: .robot))
}
