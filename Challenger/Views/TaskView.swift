//
//  TaskView.swift
//  Challenger
//
//  Created by Nigorakhon Mamadalieva on 25/10/24.
//

import SwiftUI

struct TaskView: View {
    @State var task : Task
    var body: some View {
        
        NavigationView {
            Label(task.title, systemImage: "bookmark")
        }
        .navigationTitle("Hello")
        
//        HStack {
//            Image(systemName: "bookmark")
//            Text(task.date.formatted)
//            Button(action: {
//                print("done")
//            }) {
//                Text("Done")
//            }
//            
//        }
//        .padding()
//        
//        Divider()
        
        
    }
}

#Preview {
    TaskView(task: Task(title: "htrtf", description: ""))
}
