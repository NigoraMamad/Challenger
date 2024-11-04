//
//  TaskComponent.swift
//  Challenger
//
//  Created by Nigorakhon Mamadalieva on 24/10/24.
//

import SwiftUI

struct TaskComponent: View {
    
    var task: Task
    
    var body: some View {
        VStack{
            Text(task.title)
                .frame(maxWidth: .infinity, alignment: .leading)
            Divider()
            HStack {
                Text(task.date.formatted)
                    .foregroundStyle(.gray)
                    .font(.system(size: 14))
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundStyle(.gray)
            }
        }
        .padding()
    }
}

#Preview {
    TaskComponent(task: Task(title: "htrtf", description: ""))
}

extension Date {
    
    var formatted: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter.string(from: self)
    }
    
}
