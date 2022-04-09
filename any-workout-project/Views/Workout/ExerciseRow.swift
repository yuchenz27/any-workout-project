//
//  NewExerciseRow.swift
//  any-workout-project
//
//  Created by Yuchen Zhang on 2022/4/9.
//

import SwiftUI

struct ExerciseRow: View {
    var body: some View {
        HStack {
            Text("Exercise Name")
            Spacer()
            Text("Duration")
        }
    }
}

struct NewExerciseRow_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRow()
    }
}
