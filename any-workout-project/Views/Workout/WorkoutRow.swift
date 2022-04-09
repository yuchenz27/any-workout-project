//
//  WorkoutRow.swift
//  any-workout-project
//
//  Created by Yuchen Zhang on 2022/4/9.
//

import SwiftUI

struct WorkoutRow: View {
    
    //var workout: Workout
    
    var body: some View {
        HStack {
            Text("Workout Name")
            
            Spacer()
            
            Text("Start")
        }
    }
}

struct WorkoutRow_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutRow()
    }
}
