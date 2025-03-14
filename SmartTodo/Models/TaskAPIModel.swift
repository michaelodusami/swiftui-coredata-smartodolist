//
//  TaskAPIModel.swift
//  SmartTodo
//
//  Created by Michael-Andre Odusami on 3/13/25.
//  Copyright © 2025 Michael-Andre Odusami. All rights reserved.
//

import Foundation

struct TaskAPIModel {
    let id: UUID
    let title: String
    let notes: String?
    let dueDate: Date?
    let isCompleted: Bool
    let syncedWithAPI: Bool
    let createdAt: Date
}
