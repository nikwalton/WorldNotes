//
//  Note+CoreDataProperties.swift
//  WorldNotes
//
//  Created by Nikolaus Walton on 3/6/21.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var note: String?
    @NSManaged public var date_posted: Date?
    @NSManaged public var longitude: Double
    @NSManaged public var latitude: Double

}

extension Note : Identifiable {

}
