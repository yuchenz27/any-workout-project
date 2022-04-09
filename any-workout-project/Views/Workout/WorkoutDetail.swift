//
//  WorkoutDetail.swift
//  any-workout-project
//
//  Created by Yuchen Zhang on 2022/4/9.
//

import SwiftUI

struct WorkoutDetail: View {
    
    //var workout: Workout
    
    var body: some View {
        VStack {
            Text("Workout Name")
            Text("Workout Detail")
        }
        .navigationTitle("Workout Name")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct WorkoutDetail_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetail()
    }
}
