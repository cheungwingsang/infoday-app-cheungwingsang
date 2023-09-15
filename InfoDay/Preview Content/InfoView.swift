//
//  InfoView.swift
//  InfoDay
//
//  Created by f1217351 on 15/9/2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack{
            Image("hkbu_logo")
                .resizable()
                .frame(width: 160.0, height: 160.0)
            Text("HKBU InfoDay App")
                .fontWeight(.bold)
                .font(.title)
            List {
                Section(header: Text("Important Numbers")) {
                    ForEach(Contact.contacts) { contact in
                        HStack {
                            Image(systemName: "phone.fill.arrow.up.right")
                            Text(contact.name)
                            Spacer()
                            Text(contact.phoneNumber)
                        }
                    }
                }
                Section(header: Text("Settings")) {
                    Text("Dark Mode")
                    Text("Light Mode")
                }
            }
            .padding(.top, 32.0)
        }
        .padding(.top, 32.0)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct Contact: Identifiable {
    let id = UUID()
    let name: String
    let phoneNumber: String
}

extension Contact {
    
    static let contacts = [
        Contact(name: "Admission Office", phoneNumber: "3411-2200"),
        Contact(name: "Emergencies", phoneNumber: "3411-7777"),
        Contact(name: "Health Services Center", phoneNumber: "3411-7447")
    ]
}



