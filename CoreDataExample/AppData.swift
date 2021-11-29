import Foundation
import CoreData


class AppData
{
    
    private init (){ }
    static let shared = AppData()
    
    var container: NSPersistentContainer = {
        let c = NSPersistentContainer(name: "CoreDataExample")
        c.loadPersistentStores { (description, err) in
            if let error = err as NSError? { }
        }
        return c
    }()

    func saveContext(){
        let context = container.viewContext
        
        if context.hasChanges{
            do{
                try context.save()
            }
            catch{ }
        }
    }
    
}
