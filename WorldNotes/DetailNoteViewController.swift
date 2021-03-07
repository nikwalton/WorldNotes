//
//  DetailNoteViewController.swift
//  WorldNotes
//
//  Created by Nikolaus Walton on 3/7/21.
//

import UIKit
import MapKit

class DetailNoteViewController: UIViewController {
    var note: Note?
    @IBOutlet weak var NoteText: UITextView!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var MapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NoteText.text = note?.note
        
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM y"
        DateLabel.text = formatter.string(from: note!.date_posted!)
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
