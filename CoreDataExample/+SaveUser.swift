import Foundation

extension ViewController
{
    
    @IBAction func saveUser(_ sender: Any) {
        
        curUser = User(context: context)
        
        curUser.setValue("Adam", forKey: "name")
        
        let userAvatar = Image (context: context)
        userAvatar.name = "myImg.jpeg"
        userAvatar.setValue(Date(),
                            forKey: "date")
        
        curUser.image = userAvatar
        
        AppData.shared.saveContext()
        
    }
}
