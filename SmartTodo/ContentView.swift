//
//  ContentView.swift
//  SmartTodo
//
//  Created by Michael-Andre Odusami on 3/13/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext


    var body: some View {
        TabView {
            /**
             Displays a list of tasks.
             Supports completion, deletion, and syncing.
             */
            Tab("Tasks", systemImage: "checkmark.circle.fill")
            {
                Text("Hello, world")
            }
            
            /**
             Tracks habit streaks.
             Sends reminders for daily habits.
             */
            Tab("Habits", systemImage: "flame.fill")
            {
                Text("Hello, world")
            }
            
            /**
             Settings Tab (SettingsView.swift)
             Manages API integration and notifications.
             */
            Tab("Settings", systemImage: "gearshape.fill")
            {
                Settings()
            }
        }
        
    }

    
}


#Preview {
    ContentView().environment(\.managedObjectContext, SmartTodoPersistence.preview.container.viewContext)
}



//private func addItem() {
//    withAnimation {
//        let newItem = Item(context: viewContext)
//        newItem.timestamp = Date()
//
//        do {
//            try viewContext.save()
//        } catch {
//            // Replace this implementation with code to handle the error appropriately.
//            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//            let nsError = error as NSError
//            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//        }
//    }
//}

//private func deleteItems(offsets: IndexSet) {
//    withAnimation {
//        offsets.map { items[$0] }.forEach(viewContext.delete)
//
//        do {
//            try viewContext.save()
//        } catch {
//            // Replace this implementation with code to handle the error appropriately.
//            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//            let nsError = error as NSError
//            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//        }
//    }
//}
