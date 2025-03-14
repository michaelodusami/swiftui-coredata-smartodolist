//
//  SmartTodoApp.swift
//  SmartTodo
//
//  Created by Michael-Andre Odusami on 3/13/25.
//

import SwiftUI

@main
struct SmartTodoApp: App {
    let persistenceController = SmartTodoPersistence.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
