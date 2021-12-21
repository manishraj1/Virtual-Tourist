//
//  DataController.swift
//  VirtualTourist1
//
//  Created by Manish raj(MR) on 20/12/21.
//

import Foundation
import CoreData

class PinController {
    
    //set container var
    let persistentContainer: NSPersistentContainer
    
    //property to acces context
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    var backgroundContext:NSManagedObjectContext!
    
    //initialize container var with given model name
    init(modelName: String) {
        persistentContainer = NSPersistentContainer(name: modelName)
    }
    
    func configureContexts(){
        backgroundContext = persistentContainer.newBackgroundContext()
        
        viewContext.automaticallyMergesChangesFromParent = true
        backgroundContext.automaticallyMergesChangesFromParent = true
        
        backgroundContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        viewContext.mergePolicy = NSMergePolicy.mergeByPropertyStoreTrump
        
    }
    
    //load function for persistent container
    func load(completion: (() -> Void)? = nil){
        persistentContainer.loadPersistentStores { storeDescription, error in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
            self.autoSaveViewContext()
            self.configureContexts()
            completion?()
        }
    }
}

//this extension / function saves the data every so often only if there have been changes made
extension PinController{
    
    func autoSaveViewContext(interval: TimeInterval = 30){
        print("autosave")
        guard interval > 0 else {
            print("No negetive intervals")
            return
        }
        if viewContext.hasChanges{
            try? viewContext.save()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + interval) {
            self.autoSaveViewContext(interval: interval)
        }
        
    }
}
