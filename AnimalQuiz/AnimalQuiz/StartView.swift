//
//  StartView.swift
//  AnimalQuiz
//
//  Created by 山本悠生 on 2026/07/06.
//

import SwiftUI

struct StartView: View {
    @State var isShowingQuizView = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("どうぶつ\nクイズ！")
                .font(.system(size: 70).bold())
                .foregroundStyle(.originalYellow)
                .Stroke(color: .originalGreen, width: 5)
            Spacer()
            Button {
                isShowingQuizView = true
            } label: {
                Image(.startButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            }
            .fullScreenCover(isPresented: $isShowingQuizView) {
                QuizView()
            }
        }
        .padding()
        .backgroundImage()
    }
}

#Preview {
    StartView()
}
