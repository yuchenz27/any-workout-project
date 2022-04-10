//
//  CreateWorkout.swift
//  any-workout-project
//
//  Created by Yuchen Zhang on 2022/4/9.
//

import SwiftUI

// Inputfield https://www.youtube.com/watch?v=-_-BNwUZrrc
struct CreateWorkout: View {
    
    @State private var showingSheet = false
    
    var exercises: [Exercise]?
    
    var body: some View {
        List{
            ExerciseRow()
            ExerciseRow()
            ExerciseRow()
            ExerciseRow()
            
            Button {
                showingSheet = true
            } label: {
                Label("Add Exercise", systemImage: "plus.circle")
                    .labelStyle(.iconOnly)
            }
            .sheet(isPresented: $showingSheet) {
                ExerciseDetail()
            }
        }
        .navigationTitle("Create Workout")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExerciseDetail: View {
    
    @Environment(\.presentationMode) var presentationMode
    // presentationMode.wrappedValue.dismiss()
    
    @State var exerciseName: String = ""
    @State var hours: Int = 0
    @State var minutes: Int = 0
    @State var seconds: Int = 0
    var exercise: Exercise?
    
    var body: some View {
        ZStack {
            Color.pink
            
            VStack {
                Text("Exercise Name")
                TextField("Type the name here...", text: $exerciseName)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.white)
                    .font(.headline)
                
                Text("Exercise Duration")
                HStack {
                    // Hours
                    Picker(selection: $hours, label: Text("Hours")) {
                        ForEach(0..<25) { num in
                            Text("\(num)").tag(num)
                        }
                    }
                    .pickerStyle(.wheel)
//                    // Minutes
//                    Picker(selection: $minutes, label: Text("Minutes")) {
//                        ForEach(0..<60) { num in
//                            Text("\(num)").tag(num)
//                        }
//                    }
//                    .pickerStyle(.wheel)
//                    // Seconds
//                    Picker(selection: $seconds, label: Text("Seconds")) {
//                        ForEach(0..<60) { num in
//                            Text("\(num)").tag(num)
//                        }
//                    }
//                    .pickerStyle(.wheel)
                }
                
                

            }
            .padding()
        }
    }
}

struct CreateWorkout_Previews: PreviewProvider {
    static var previews: some View {
        //CreateWorkout()
        ExerciseDetail()
    }
}
