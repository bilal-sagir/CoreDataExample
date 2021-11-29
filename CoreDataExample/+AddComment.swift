import Foundation

extension ViewController
{
    @IBAction func addComment(_ sender: Any)
    {
        let comment = Comment(context: context)
        comment.body = "My comment"
        comment.title = "Great"
        
        comment.setValue(Date(), forKey: "date")
        
        self.curUser.addToComments(comment)
        
        AppData.shared.saveContext()
    }
}
