//
//  View+.swift
//  AnimalQuiz
//
//  Created by 山本悠生 on 2026/07/06.
//

import SwiftUI

extension View {
    @ViewBuilder
    func Stroke(color: Color, width: CGFloat = 1) -> some View {
        modifier(StrokeBackground(strokeSize: width, strokeColor: color))
    }
    
    @ViewBuilder
    func backgroundImage(_ image: Image = Image(.background)) -> some View {
        self
            .background(
                image
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .padding(-3)
            )
    }
    
}
