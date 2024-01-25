//
//  ContentView.swift
//  scrumdinger
//
//  Created by Eduardo Peralta Rodríguez on 24/01/24.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
        }
    }
}

#Preview {
    MeetingView()
}
