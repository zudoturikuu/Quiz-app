//
//  ResultsScreen.swift
//  Quiz
//
//  Created by Wong Jun Heng on 18/6/2022
//

import SwiftUI

struct ResultsScreen: View {
    
    var score: Int
    var totalQuestions: Int
    
    var body: some View {
        VStack {
            CircularProgressView(progress: CGFloat(score) / CGFloat(totalQuestions))
                .frame(width: 150.0, height: 150.0)

            Text("You got")
            Text("\(score)/\(totalQuestions)")
        }
    }
}

struct ResultsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ResultsScreen(score: 2, totalQuestions: 3)
    }
}
