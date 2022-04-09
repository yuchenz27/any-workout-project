//
//  CreateWorkout.swift
//  any-workout-project
//
//  Created by Yuchen Zhang on 2022/4/9.
//

import SwiftUI

// Inputfield https://www.youtube.com/watch?v=-_-BNwUZrrc
struct CreateWorkout: View {
    
    @State private var showingPopover = false
    @State private var newExerciseName: String = "New Exercise"
    
    var exercises: [Exercise]?
    
    var body: some View {
        List{
            ExerciseRow()
            ExerciseRow()
            ExerciseRow()
            ExerciseRow()
            
            Button {
                showingPopover = true
            } label: {
                Label("Add Exercise", systemImage: "plus.circle")
                    .labelStyle(.iconOnly)
            }
            .popover(isPresented: $showingPopover) {
                VStack {
                    Text("New Exercise")
                    TextField("New Exercise Name", text: $newExerciseName)
                }
            }
        }
        .navigationTitle("Create Workout")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CreateWorkout_Previews: PreviewProvider {
    static var previews: some View {
        CreateWorkout()
    }
}
