//
//  FileManager.swift
//  BucketList
//
//  Created by Justin Wells on 11/10/22.
//

import Foundation

extension FileManager {
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for the user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        // just send back the first one, which ought to be hte only one
        return paths[0]
    }
}
