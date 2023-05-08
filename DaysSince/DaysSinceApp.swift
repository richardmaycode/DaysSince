//
//  DaysSinceApp.swift
//  DaysSince
//
//  Created by Richard Wise on 5/8/23.
//

import SwiftUI

@main
struct DaysSinceApp: App {
    
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
