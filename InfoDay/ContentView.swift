//
//  ContentView.swift
//  InfoDay
//
//  Created by f1217351 on 15/9/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NewsView().tabItem {
                Image(systemName: "newspaper.fill")
                Text("News")
            }
            InfoView().tabItem {
                Image(systemName: "info.circle.fill")
                Text("Info")
            }
            DeptView().tabItem {
                Image(systemName: "calendar.circle.fill")
                Text("Events")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

