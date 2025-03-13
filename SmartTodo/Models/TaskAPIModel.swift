//
//  TaskAPIModel.swift
//  SmartTodo
//
//  Created by Michael-Andre Odusami on 3/13/25.
//  Copyright © 2025 Michael-Andre Odusami. All rights reserved.
//

import Foundation

struct TaskAPIModel: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: String?
    let isCompleted: Bool
    let recurrence: String?
}
