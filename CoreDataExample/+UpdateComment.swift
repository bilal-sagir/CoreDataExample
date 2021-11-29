import Foundation
import CoreData

extension ViewController
{
    @IBAction func updateComment(_ sender: Any)
    {
        let req = NSFetchRequest <NSFetchRequestResult>(entityName: "User")
        
        req.predicate = NSPredicate(format: "name == %@", "John")
        
        do{
            let res = try context.fetch(req)
            
            for data in res as! [NSManagedObject]{
                let usr = data  as! User
                
                usr.name = "A very different name"
                AppData.shared.saveContext()
            }
            
        }catch{
            
        }
        
    }
}
