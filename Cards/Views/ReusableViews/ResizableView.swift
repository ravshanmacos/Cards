//
//  ResizableView.swift
//  Cards
//
//  Created by Ravshanbek Tursunbaev on 2023/05/17.
//

import SwiftUI

struct ResizableView: View {
    @State private var transform = Transform()
    @State private var previousOffset: CGSize = .zero
    @State private var previousRotation: Angle = .zero
    
    private let content = RoundedRectangle(cornerRadius: 30)
    private let color = Color.red
    
    var body: some View {
        content
            .frame(width: transform.size.width,
                   height: transform.size.height)
            .foregroundColor(color)
            .offset(transform.offset)
            .rotationEffect(transform.rotation)
            .gesture(dragGesture)
            .gesture(rotationGesture)
    }
    
    var dragGesture: some Gesture{
        DragGesture()
            .onChanged { value in
                transform.offset = value.translation + previousOffset
            }
            .onEnded { _ in
                previousOffset = transform.offset
            }
    }
    
    var rotationGesture: some Gesture{
        RotationGesture()
            .onChanged { rotation in
                transform.rotation += rotation - previousRotation
                previousRotation = rotation
            }
            .onEnded { _ in
                previousRotation = .zero
            }
    }
}

struct ResizableView_Previews: PreviewProvider {
    static var previews: some View {
        ResizableView()
    }
}
