//
//  DataController.swift
//  DaysSince
//
//  Created by Richard Wise on 5/8/23.
//

import CoreData

class DataController: ObservableObject {
    let container: NSPersistentContainer
    
    static var preview: DataController = {
        let dataController = DataController(inMemory: true)
        return dataController
    }()
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "Main")
        
        if inMemory {
            container.persistentStoreDescriptions.first?.url = URL(filePath: "/dev/null")
        }
    }
}
