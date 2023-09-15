//
//  DeptView.swift
//  InfoDay
//
//  Created by f1217351 on 15/9/2023.
//

import SwiftUI

struct DeptView: View {
    var body: some View {
        NavigationView {
            List(Dept.depts) { dept in
                NavigationLink(destination: EventView(dept_id: dept.id)) {
                    HStack {
                        Image(dept.logo)
                            .resizable()
                            .frame(width: 48.0, height: 48.0)
                        Text(dept.title)
                    }
                }
            }
            .navigationTitle("Departments")
        }
    }
}

struct DeptView_Previews: PreviewProvider {
    static var previews: some View {
        DeptView()
    }
}

struct Dept: Identifiable {
    let id: String
    let title: String
    let logo: String
}
extension Dept {
    static let depts: [Dept] = [
        Dept(id: "comp", title: "Computer Science", logo: "comp_logo"),
        Dept(id: "coms", title: "Communication Studies", logo: "coms_logo")
    ]
}
