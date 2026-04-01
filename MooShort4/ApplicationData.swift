//
//  Untitled 2.swift
//  SiriExample
//
//  Created by Quanpeng Yang on 3/31/26.
//

import SwiftUI
import Observation

@Observable
class ApplicationData {
    var message: String = "No Message"
    
    // Singleton instance for app-wide access
    static let shared: ApplicationData = ApplicationData()
    
    // Private initializer ensures only the shared instance is used
    private init() { }
}
