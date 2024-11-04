//
//  ContentView.swift
//  Challenger
//
//  Created by Nigorakhon Mamadalieva on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    
    var taskViewModel: TasksViewModel = TasksViewModel()
    @State var selectedTask: Task?
    @State var showingSheet: Bool = false
    
    var body: some View {
        NavigationStack{
            
            ZStack {
                Color.pink.opacity(0.04).ignoresSafeArea()
                
//                Form{
                    
                    list
//                }
            

        
                    
                VStack {
                    Spacer()
                    Button(action: {
                        print("Added")
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .foregroundStyle(.white)
                                .shadow(radius: 5)
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 25, height: 25)
                        }
                        
                    }
                    
                }
                
                
            }
            .navigationTitle("Challenger")
           
            .toolbar {
                ToolbarItem (placement: .topBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "line.horizontal.3.decrease.circle.fill")
                            .foregroundStyle(.gray)
                            .opacity(0.5)
                            .font(.system(size: 28))
                    }
                }
            }
        }
        
    }
    
    var list: some View {
        List {
            
            ForEach (taskViewModel.tasks) { task in
               
                Button {
                    selectedTask = task
                    showingSheet.toggle()
                } label: {
                    TaskComponent(task: task)
                }
                
            }
            .background(RoundedRectangle(cornerRadius: 12).fill(.white))
            .listRowBackground(Color.clear)
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
        }
        .sheet(isPresented: $showingSheet) {
            if let selectedTask {
                TaskView(task: selectedTask)
            }
        }
    }
}

#Preview {
    ContentView()
}


