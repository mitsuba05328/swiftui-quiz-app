//
//  ScoreView.swift
//  AnimalQuiz
//
//  Created by 山本悠生 on 2026/07/06.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("5問中2問正解！")
                .font(.system(size: 40).bold())
                .foregroundStyle(.originalYellow)
                .Stroke(color: .originalGreen, width: 5)
            Spacer()
            Button(action: {}) {
                Image(.topButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundImage()
    }
}

#Preview {
    ScoreView()
}
