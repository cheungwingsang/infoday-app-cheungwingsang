//
//  EventView.swift
//  InfoDay
//
//  Created by f1217351 on 15/9/2023.
//

import SwiftUI

struct EventView: View {
    var dept_id: String
    
    var body: some View {
        List(filterEvents()) { event in
            Text(event.title)
        }
        .navigationTitle(dept_id)
    }
    
    func filterEvents() -> [Event] {
        return Event.events.filter { event in
            return event.dept_id == dept_id
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EventView(dept_id: "comp")
        }
    }
}

struct Event: Identifiable {
    let id = UUID()
    let title: String
    let dept_id: String
    var saved: Bool
}

extension Event {
    static let events: [Event] = [
        Event(title: "Career Talks", dept_id: "coms", saved: false),
        Event(title: "Guided Tour", dept_id: "coms", saved: true),
        Event(title: "MindDrive Demo", dept_id: "comp", saved: false),
        Event(title: "Project Demo", dept_id: "comp", saved: false)
    ]
}
