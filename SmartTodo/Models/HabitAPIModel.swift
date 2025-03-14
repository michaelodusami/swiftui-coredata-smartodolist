//
//  HabitAPIModel.swift
//  SmartTodo
//
//  Created by Michael-Andre Odusami on 3/13/25.
//  Copyright © 2025 Michael-Andre Odusami. All rights reserved.
//


struct HabitAPIModel: Codable {
    let id: String
    let name: String
    let frequency: String
    let streak: Int
}
