//
//  QuizView.swift
//  AnimalQuiz
//
//  Created by 山本悠生 on 2026/07/06.
//

import SwiftUI

struct QuizView: View {
    @State var isShowingScoreView = false
    
    var body: some View {
        VStack {
            Text("問題番号：1/10")
            Text("次のうち、世界で最も早く走る動物はどれですか？")
            
            Button("ライオン") {
                isShowingScoreView = true
            }
            .fullScreenCover(isPresented: $isShowingScoreView) {
                ScoreView()
            }
            Button("ウサイン・ボルト") {
            }
            Button("チーター") {
            }
            Button("馬") {
            }
        }
    }
}

#Preview {
    QuizView()
}
