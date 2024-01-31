//
//  DailyScrum.swift
//  scrumdinger
//
//  Created by Eduardo Peralta Rodríguez on 25/01/24.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [String]
    var lentgthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lentgthInMinutes: Int, theme: Theme) {
        self.id =  id
        self.title = title
        self.attendees = attendees
        self.lentgthInMinutes = lentgthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(
            title: "Desing",
            attendees: ["Cathy", "Daisy"],
            lentgthInMinutes: 4,
            theme: .indigo
        ),
        DailyScrum(
            title: "Development",
            attendees: ["Edu", "Katie", "Gray", "Euna"],
            lentgthInMinutes: 4,
            theme: .teal
        ),
        DailyScrum(
            title: "Product",
            attendees: ["Chris", "Christina", "Eden", "Karla"],
            lentgthInMinutes: 8,
            theme: .purple
        ),
        DailyScrum(
            title: "QA",
            attendees: ["Darla", "Jenn"],
            lentgthInMinutes: 4,
            theme: .lavender
        ),
    ]
}
