import Foundation
import CoreData

extension ViewController
{
    @IBAction func fetchUser(_ sender: Any)
    {
        let request = NSFetchRequest <NSFetchRequestResult> (entityName: "User")
        
        //let predicate = NSPredicate(format: "name == %@", "Adam")
        
        //request.predicate = predicate
        
        do{
            let res = try context.fetch(request)
            
            for any in res as! [NSManagedObject]{
                let fetchedUser = any as! User
                print(fetchedUser.name)
            }
            //print("we found: \(res)")
            
        }catch{ }
    }
}
