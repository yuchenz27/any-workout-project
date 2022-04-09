//
//  WorkoutList.swift
//  any-workout-project
//
//  Created by Yuchen Zhang on 2022/4/9.
//

import SwiftUI

struct WorkoutList: View {
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    CreateWorkout()
                } label: {
                    Label("Create Workout", systemImage: "plus.circle")
                        .labelStyle(.titleAndIcon)
                }
                
                List {
                    NavigationLink {
                        WorkoutDetail()
                    } label: {
                        WorkoutRow()
                    }
                    
                    NavigationLink {
                        WorkoutDetail()
                    } label: {
                        WorkoutRow()
                    }
                    
                    NavigationLink {
                        WorkoutDetail()
                    } label: {
                        WorkoutRow()
                    }
                }
            }
            .navigationTitle("Workouts")
        }
    }
}

struct WorkoutList_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutList()
    }
}
