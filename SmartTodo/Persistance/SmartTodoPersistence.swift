//
//  SmartTodoPersistence.swift
//  SmartTodo
//
//  Created by Michael-Andre Odusami on 3/13/25.
//  Copyright © 2025 Michael-Andre Odusami. All rights reserved.
//

import CoreData
import Foundation

struct SmartTodoPersistence {
    static let shared = SmartTodoPersistence()

    @MainActor
    static let preview: SmartTodoPersistence = {
        let result = SmartTodoPersistence(true)
        let viewContext = result.container.viewContext
        let task1 = Task(context: viewContext)
        task1.id = UUID()
        task1.title = "Finish SwiftUI Project"
        task1.notes = "Complete the UI and add animations"
        task1.dueDate = Calendar.current.date(
            byAdding: .day, value: 2, to: Date())
        task1.isCompleted = false
        task1.recurrence = "None"
        task1.syncedWithAPI = false
        task1.createdAt = Date()

        let task2 = Task(context: viewContext)
        task2.id = UUID()
        task2.title = "Read 10 pages of a book"
        task2.notes = "Focus on productivity and self-improvement"
        task2.dueDate = Calendar.current.date(
            byAdding: .day, value: 1, to: Date())
        task2.isCompleted = false
        task2.recurrence = "Daily"
        task2.syncedWithAPI = true
        task2.createdAt = Date()


        // Save Context
        do {
            try viewContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }

        return result
    }()

    let container: NSPersistentContainer

    init(_ inMemory: Bool = false) {
        container = NSPersistentContainer(name: "SmartTodo")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(
                fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: {
            (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.

                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
