//
//  TrekrApp.swift
//  Trekr
//
//  Created by Tugs Khaliunbat on 5/31/23.
//

import SwiftUI

@main
struct TrekrApp: App {
    
    @StateObject var locations = Locations()        // create and keep it, Locations() has to be Observable
    
    var body: some Scene {
        
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
                
            }
            .environmentObject(locations)           // anyone who wants to read it can read it
        }
    }
}
