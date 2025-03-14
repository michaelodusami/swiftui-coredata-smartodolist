//
//  TasksMainView.swift
//  SmartTodo
//
//  Created by Michael-Andre Odusami on 3/13/25.
//  Copyright © 2025 Michael-Andre Odusami. All rights reserved.
//

import SwiftUI
import CoreData

struct TasksMainView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
       Text("Hola")
    }
}

#Preview {
    TasksMainView()
        .environment(\.managedObjectContext, SmartTodoPersistence.preview.container.viewContext)
}



