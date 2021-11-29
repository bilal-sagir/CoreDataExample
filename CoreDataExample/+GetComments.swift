import Foundation
import CoreData

extension ViewController
{
    @IBAction func getComments(_ sender: Any)
    {
        let request = NSFetchRequest <NSFetchRequestResult> (entityName: "Comment")
        
        
        do{
        let res = try context.fetch(request)
            for data in res as! [NSManagedObject]{
                let fetchComment = data as! Comment
                
                print("these are comments")
                
                print(fetchComment.title)
            }
            print("we found: \(res)")
            
        }catch{ }
    }
}

