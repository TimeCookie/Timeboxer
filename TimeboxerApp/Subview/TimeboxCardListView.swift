//
//  TimeboxCardListView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 07/04/22.
//

import SwiftUI

struct TimeboxCardListView: View {
    var body: some View {
        VStack {
            
            ForEach(activeTimebox) { item in
                NavigationLink(destination: EditTimeboxView()) {
                    List {
                        Text(item.activityName)
                    }
                }
            }
        }
    }
}

struct TimeboxCardListView_Previews: PreviewProvider {
    static var previews: some View {
        TimeboxCardListView()
    }
}

struct TimeboxCard: View {
    @Binding var activityName: String
    var body: some View {
        HStack {
            Text("Activity name")
        }
    }
}
