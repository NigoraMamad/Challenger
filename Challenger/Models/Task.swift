//
//  Task.swift
//  Challenger
//
//  Created by Nigorakhon Mamadalieva on 24/10/24.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let date = Date()
}
