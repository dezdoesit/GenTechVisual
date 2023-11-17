//
//  AndroidBuilder.swift
//  SwiftUIStoryTemplate
//
//  Created by Maya Caldwell on 11/16/23.
//

import SwiftUI

struct DragView: View {
    @Binding var customAndroid: Android
    private let circleSize: CGFloat = 100
    private let numberOfCustomImages = 5
    private let systemImageNames = ["mediastick", "mediastick", "square.fill", "triangle.fill", "circle.fill"]
    private let humanPartNames = ["bicycle", "eye", "hand.raised", "heart", "brain"]

    @State private var systemOffsets: [CGSize] = Array(repeating: .zero, count: 5)
    @State private var systemScales: [Double] = Array(repeating: 1.0, count: 5)
    @State private var systemBounceValue: Int = 0

    @State private var customOffsets: [CGSize] = Array(repeating: .zero, count: 5)
    @State private var customScales: [Double] = Array(repeating: 1.0, count: 5)
    @State private var customBounceValue: Int = 0

    @State private var humanPartOffsets: [CGSize] = Array(repeating: .zero, count: 5)
    @State private var humanPartScales: [Double] = Array(repeating: 1.0, count: 5)
    @State private var humanPartBounceValue: Int = 0

    func dragGesture(index: Int, isSystemImage: Bool) -> some Gesture {
        DragGesture()
            .onChanged { value in
                withAnimation {
                    if isSystemImage {
                        systemOffsets[index] = CGSize(
                            width: value.startLocation.x + value.translation.width - circleSize / 2,
                            height: value.startLocation.y + value.translation.height - circleSize / 2
                        )
                        systemScales[index] = 1.5
                    } else if index < numberOfCustomImages {
                        customOffsets[index] = CGSize(
                            width: value.startLocation.x + value.translation.width - circleSize / 2,
                            height: value.startLocation.y + value.translation.height - circleSize / 2
                        )
                        customScales[index] = 1.5
                    } else {
                        // It's a human part image
                        let humanPartIndex = index - numberOfCustomImages
                        humanPartOffsets[humanPartIndex] = CGSize(
                            width: value.startLocation.x + value.translation.width - circleSize / 2,
                            height: value.startLocation.y + value.translation.height - circleSize / 2
                        )
                        humanPartScales[humanPartIndex] = 1.5
                    }
                }
            }
            .onEnded { _ in
                withAnimation(.spring(response: 0.4, dampingFraction: 0.3, blendDuration: 1)) {
                    if isSystemImage {
                        systemScales[index] = 1
                    } else if index < numberOfCustomImages {
                        customScales[index] = 1
                    } else {
                        // It's a human part image
                        let humanPartIndex = index - numberOfCustomImages
                        humanPartScales[humanPartIndex] = 1
                    }
                }
            }
    }

    var body: some View {
        HStack {
            VStack {
                ForEach(0..<systemImageNames.count, id: \.self) { index in
                    Image(systemName: systemImageNames[index])
                        .resizable()
                        .foregroundColor(.gray)
//                        .symbolEffect(
//                            .bounce,
//                            options: .repeat(2),
//                            value: systemBounceValue
//                        )
//                        .onTapGesture {
//                            systemBounceValue += 1
//                        }
                        .frame(width: circleSize * systemScales[index], height: circleSize * systemScales[index])
                        .offset(systemOffsets[index])
                        .gesture(dragGesture(index: index, isSystemImage: true))
                }
            }

            VStack {
                ForEach(0..<numberOfCustomImages, id: \.self) { index in
                    Image("RoboPart\(index + 1)")
                        .resizable()
                        .symbolEffect(.variableColor.iterative.nonReversing)
                        .symbolRenderingMode(.multicolor)
                        .frame(width: circleSize * customScales[index], height: circleSize * customScales[index])
                        .offset(customOffsets[index])
                        .gesture(dragGesture(index: index, isSystemImage: false))
                }
            }

            VStack {
                ForEach(0..<humanPartNames.count, id: \.self) { index in
                    Image(systemName: humanPartNames[index])
                        .resizable()
                        .foregroundColor(.pink)
                        .symbolEffect(
                            .bounce,
                            options: .repeat(2),
                            value: humanPartBounceValue
                        )
                        .onTapGesture {
                            humanPartBounceValue += 1
                        }
                        .frame(width: circleSize * humanPartScales[index], height: circleSize * humanPartScales[index])
                        .offset(humanPartOffsets[index])
                        .gesture(dragGesture(index: index + numberOfCustomImages, isSystemImage: false))
                }
            }
        }
        Spacer(minLength: 200)
        Spacer()
    }
}


#Preview {
    DragView(customAndroid: .constant(Android()))

}
