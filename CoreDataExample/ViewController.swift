import UIKit
import CoreData

class ViewController: UIViewController
{
    var context: NSManagedObjectContext!
    
    var curUser: User!
    var comments: [Comment] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        context = AppData.shared.container.viewContext
        
    }
}





