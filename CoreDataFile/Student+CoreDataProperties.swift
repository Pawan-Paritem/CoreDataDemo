//
//  Student+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Pawan  on 18/10/2020.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var aridNo: String?
    @NSManaged public var name: String?
    @NSManaged public var mobile: String?
    @NSManaged public var city: String?

}

extension Student : Identifiable {

}
