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
    
    @State var hourSelection: Int = 0
    @State var minuteSelection: Int = 0
    @State var secondSelection: Int = 0
    
    let hours = [Int](0..<24)
    let minutes = [Int](0..<60)
    let seconds = [Int](0..<60)
    
    var exercise: Exercise?
    
    var body: some View {
//        ZStack {
//            Color.pink
//                .ignoresSafeArea(.all)
//
//            VStack {
//                Text("Exercise Name")
//                TextField("Type the name here...", text: $exerciseName)
//                    .padding()
//                    .background(Color.gray.opacity(0.3).cornerRadius(10))
//                    .foregroundColor(.white)
//                    .font(.headline)
//
//                Text("Exercise Duration")
//                GeometryReader { geometry in
//                    HStack() {
//                        Spacer()
//
//                        Picker(selection: $hourSelection, label: Text("")){
//                            ForEach(0..<self.hours.count, id: \.self) { index in
//                                Text("\(self.hours[index]) h").tag(index)
//                            }
//                        }
//                        .pickerStyle(.inline)
//                        .frame(width: geometry.size.width / 3, height: 100)
//                        .clipped()
//
//                        Picker(selection: $minuteSelection, label: Text("")){
//                            ForEach(0..<self.minutes.count, id: \.self) { index in
//                                Text("\(self.minutes[index]) m").tag(index)
//                            }
//                        }
//                        .pickerStyle(.inline)
//                        .frame(width: geometry.size.width / 3, height: 100)
//                        .clipped()
//
//                        Picker(selection: $secondSelection, label: Text("")){
//                            ForEach(0..<self.seconds.count, id: \.self) { index in
//                                Text("\(self.seconds[index]) s").tag(index)
//                            }
//                        }
//                        .pickerStyle(.inline)
//                        .frame(width: geometry.size.width / 3, height: 100)
//                        .clipped()
//
//                        Spacer()
//                    }
//                }
//            }
//        }
        
        GeometryReader { geometry in
            HStack() {
                Spacer()
                Picker(selection: $hourSelection, label: Text("")){
                    ForEach(0..<self.hours.count, id: \.self) { index in
                        Text("\(self.hours[index]) h").tag(index)
                    }
                }
                .pickerStyle(.inline)
                .frame(width: geometry.size.width / 4, height: 100)
                .compositingGroup()
                .clipped(antialiased: true)
                
                Picker(selection: $minuteSelection, label: Text("")){
                    ForEach(0..<self.minutes.count, id: \.self) { index in
                        Text("\(self.minutes[index]) m").tag(index)
                    }
                }
                .pickerStyle(.inline)
                .frame(width: geometry.size.width / 4, height: 100)
                .compositingGroup()
                .clipped(antialiased: true)
                
                Picker(selection: $secondSelection, label: Text("")){
                    ForEach(0..<self.seconds.count, id: \.self) { index in
                        Text("\(self.seconds[index]) s").tag(index)
                    }
                }
                .pickerStyle(.inline)
                .frame(width: geometry.size.width / 4, height: 100)
                .compositingGroup()
                .clipped(antialiased: true)
                
                Spacer()
            }
        }
    }
}

struct CreateWorkout_Previews: PreviewProvider {
    static var previews: some View {
        //CreateWorkout()
        ExerciseDetail()
    }
}
