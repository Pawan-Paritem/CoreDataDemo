//
//  CoreDataHelper.swift
//  CoreDataDemo
//
//  Created by Pawan  on 18/10/2020.
//

import Foundation
import CoreData
import UIKit

class DataBaseHelper {
    
    static var shareClass = DataBaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func save(Object : [String: String]) {
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        
        student.aridNo = Object["aridNo"]
        student.name   = Object["name"]
        student.mobile = Object["mobile"]
        student.city   = Object["city"]
        
        print(student.aridNo)
      
            do {
                try context!.save()
                print("Data Saved")
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}
