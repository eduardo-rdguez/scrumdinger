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
    var attendees: [Attendee]
    var lentgthInMinutes: Int
    var lentgthInMinutesDouble: Double {
        get {
            Double(lentgthInMinutes)
        }
        set {
            lentgthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lentgthInMinutes: Int, theme: Theme) {
        self.id =  id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lentgthInMinutes = lentgthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
    
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lentgthInMinutes: 5, theme: .sky)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(
            title: "Desing",
            attendees: ["Cathy", "Daisy"],
            lentgthInMinutes: 4,
            theme: .seafoam
        ),
        DailyScrum(
            title: "Development",
            attendees: ["Edu", "Katie", "Gray", "Euna"],
            lentgthInMinutes: 4,
            theme: .custom_teal
        ),
        DailyScrum(
            title: "Product",
            attendees: ["Chris", "Christina", "Eden", "Karla"],
            lentgthInMinutes: 8,
            theme: .periwinkle
        ),
        DailyScrum(
            title: "QA",
            attendees: ["Darla", "Jenn"],
            lentgthInMinutes: 4,
            theme: .lavender
        ),
    ]
}
