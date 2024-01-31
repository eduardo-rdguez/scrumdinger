//
//  scrumdingerApp.swift
//  scrumdinger
//
//  Created by Eduardo Peralta Rodríguez on 24/01/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
