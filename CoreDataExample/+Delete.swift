import Foundation
import CoreData

extension ViewController
{
    @IBAction func deleteSmthg(_ sender: Any)
    {
        deleteSpecificUser("Adam")
        /*
        deleteEntities (entityStr: "User") {  (res) in
            print("delete happened? \(res)")
        }
        
        deleteEntities (entityStr: "Image") {  (res) in
            print("delete happened? \(res)")
        }
        
        deleteEntities (entityStr: "Comment") {  (res) in
            print("delete happened? \(res)")
        }
         */
    }
    
    
    func deleteEntities(entityStr: String, completion: @escaping (_ returned: Bool) -> ())
    {
        let fetchReq = NSFetchRequest <NSFetchRequestResult> ()
        fetchReq.entity = NSEntityDescription.entity(forEntityName: entityStr, in: context)
        
        fetchReq.includesPropertyValues = false
        
        do{
            let results = try context.fetch(fetchReq) as! [NSManagedObject]
            for res in results
            {
                context.delete(res)
            }
            
            try context.save()
            completion(true)
        }catch
        {
            completion(false)
        }
    }
    
    func deleteSpecificUser (_ name: String){
        let req = NSFetchRequest <NSFetchRequestResult> (entityName: "User")
        
        let pred = NSPredicate(format: "name == %@", name)
        
        req.predicate = pred
        
        guard let moc = context else {return}
        
        do{
            let result = try moc.fetch(req)
            let resulData = result as! [User]
            
            for any in resulData
            {
                moc.delete(any)
            }
            try moc.save()
            
        }catch{ }
    }
}


