//
//  EmptyView.swift
//  Challenger
//
//  Created by Nigorakhon Mamadalieva on 24/10/24.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
        VStack {
            Image(systemName: "figure.cooldown.circle.fill")
                .resizable()
                .foregroundStyle(.blue)
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text("Start Challenging")
                .font(.title)
                .bold()
            Text("Create your personal challenges. \nTap the plus button to get started.")
                .foregroundStyle(.gray)
           
            
        }
    }
}

#Preview {
    EmptyView()
}
