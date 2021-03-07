//
//  ComposeNoteViewController.swift
//  WorldNotes
//
//  Created by Nikolaus Walton on 3/6/21.
//

import UIKit

class ComposeNoteViewController: UIViewController, UITextFieldDelegate {

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let inspirationNouns = ["Funny", "Loving", "Helpful", "Inspiring", "That made you laugh", "You got done today"]
   
    @IBOutlet weak var NoteBox: UITextView!
    @IBOutlet weak var InspirationPrompt: UILabel!
    @IBOutlet weak var TextInputField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomNum = Int.random(in: 0...5)
        // Do any additional setup after loading the view
        InspirationPrompt.text = inspirationNouns[randomNum]
        TextInputField.layer.borderWidth = 2.0
        TextInputField.layer.cornerRadius = 8.0
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
