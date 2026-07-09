//
//  QuizView.swift
//  AnimalQuiz
//
//  Created by 山本悠生 on 2026/07/06.
//

import SwiftUI

struct QuizItem {
    let question: String
    var choices: [String]
    let correctAnswer: String
}


struct QuizView: View {
    @State var isShowingScoreView = false
    let choices = ["ライオン", "ウサイン・ボルト", "チーター", "馬"]
    
    let quizItems = [
        QuizItem(
            question: "次のうち、世界で最も速く走る動物はどれですか？",
            choices: ["チーター", "ライオン", "ウサイン・ボルト", "馬"],
            correctAnswer: "チーター"
        ),
        QuizItem(
            question: "次のうち、飛ぶことができない鳥はどれですか？",
            choices: ["ペンギン", "フクロウ", "ハト", "スズメ"],
            correctAnswer: "ペンギン"
        ),
        QuizItem(
            question: "次のうち、哺乳類でない動物はどれですか？",
            choices: ["イルカ", "カメ", "コウモリ", "ヒト"],
            correctAnswer: "カメ"
        ),
        QuizItem(
            question: "次のうち、夜行性でない動物はどれですか？",
            choices: ["ライオン", "コアラ", "ゾウ", "フクロウ"],
            correctAnswer: "ゾウ"
        ),
        QuizItem(
            question: "次のうち、最も長い首を持つ動物はどれですか？",
            choices: ["キリン", "アルパカ", "象", "馬"],
            correctAnswer: "キリン"
        )
    ]
    
    var body: some View {
        VStack {
            Text("問題番号：1/5")
                .font(.headline)
                .padding(10)
                .background(Color.originalGreen)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(quizItems[1].question)
                .font(.title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.originalLightGreen)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.originalGreen, lineWidth: 5)
                )
                .frame(maxHeight: .infinity)
            ForEach(quizItems[1].choices, id: \.self) { choice in
                Button {
                    isShowingScoreView = true
                } label: {
                    Text(choice)
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.originalSkin)
                        .foregroundStyle(.originalBrown)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .fullScreenCover(isPresented: $isShowingScoreView) {
                    ScoreView()
                }
            }
        }
        .padding()
        .backgroundImage()
    }
}
#Preview {
    QuizView()
}
