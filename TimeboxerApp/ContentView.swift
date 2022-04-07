//
//  ContentView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 04/04/22.
//

import SwiftUI


struct ContentView: View {
    @State public var isPresenting: Bool = false
    @State var selectedItem: Int = 1
    @State var oldSelectedItem: Int = 1
    
    var body: some View {
        
        TabView(selection: $selectedItem){
            NewTimeboxView()
                .tabItem {
                    Label("Timebox", systemImage: "rectangle.grid.1x2.fill")
                }.tag(1)
            .onAppear {
                self.oldSelectedItem = self.selectedItem
            }

            Text("")
                .tabItem { Label("Add",systemImage: "plus") }
                .tag(2)
            .onAppear {
                self.isPresenting = true
                self.selectedItem = self.oldSelectedItem

            }

            MuteReminderView()
                .tabItem {
                    Label("Reminders",systemImage: "bell.fill")
                }.tag(3)
            .onAppear {
                self.oldSelectedItem = self.selectedItem
            }
        }
        .sheet(isPresented: $isPresenting) {
            AddTimeboxView(isPresenting: $isPresenting)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

