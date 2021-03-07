//
//  ViewController.swift
//  WorldNotes
//
//  Created by Nikolaus Walton on 3/6/21.
//

import UIKit
import MapKit


class ViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    fileprivate let locationManager:CLLocationManager = CLLocationManager()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        MapView.showsUserLocation = true
    
    }
    

    // MARK: Unwind declarations
     

    @IBAction func unwindComposeCancel(sender: UIStoryboardSegue){
        
    }
    
    @IBAction func unwindComposeAdd(sender: UIStoryboardSegue){
        let vc = sender.source as! ComposeNoteViewController
        let newNote = Note(context: context)
        newNote.note = vc.NoteBox.text
        newNote.date_posted = Date()
        
        let currentLocation = locationManager.location
        newNote.latitude = currentLocation?.coordinate.latitude ?? 0.0
        newNote.longitude = currentLocation?.coordinate.longitude ?? 0.0
    }
    
    @IBAction func unwindViewNotes(sender: UIStoryboardSegue){
    }
    
    //MARK: Note Core Data Functions
    
    func getAllNotes(){
        do {
            let notes = try context.fetch(Note.fetchRequest())
        }
        catch {
            // error
        }
    }
    
    func createNote(text: String) {
        let newItem = Note(context: context)
        newItem.note = text
        newItem.date_posted = Date()
        let currentLocation = locationManager.location
        newItem.latitude = currentLocation?.coordinate.latitude ?? 0.0
        newItem.longitude = currentLocation?.coordinate.longitude ?? 0.0
        
        do {
            try context.save()
        }
        catch {
            
        }
    }
    
    func deleteNote(note: Note) {
        context.delete(note)
        
        do {
            try context.save()
        }
        catch {
            
        }
    }
    
    func updateItem(note: Note, newString: String) {
        note.note = newString
        do {
            try context.save()
        }
        catch {
            
        }
    }

}

