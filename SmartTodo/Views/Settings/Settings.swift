//
//  Settings.swift
//  SmartTodo
//
//  Created by Michael-Andre Odusami on 3/13/25.
//  Copyright © 2025 Michael-Andre Odusami. All rights reserved.
//

import SwiftUI

struct Settings: View {
    
    @AppStorage("notificationsEnabled") private var notificationsEnabled = false
    @AppStorage("darkModeEnabled") private var darkModeEnabled = false
    @AppStorage("syncEnabled") private var syncEnabled = false
    
    
    var body: some View {
        NavigationStack {
            Form {
                
                Group {
                    Section(header: Text("Set Notifications On/Off"))
                    {
                        Toggle("Enable Notifications", isOn: $notificationsEnabled)
                    }
                    
                    Section(header: Text("Set Syncing On/OFF"))
                    {
                        Toggle("Sync with API", isOn: $syncEnabled)
                    }
                    
                    Section(header: Text("Toggle Dark Mode"))
                    {
                        Toggle("Dark Mode", isOn: $darkModeEnabled)
                    }
                }
                
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    Settings()
}
