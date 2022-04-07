//
//  TimeboxCardListView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 07/04/22.
//

import SwiftUI

struct TimeboxCardListView: View {
    @ObservedObject var ActiveTimebox: TimeboxData = TimeboxData.shared
    var body: some View {
        if(ActiveTimebox.activeTimebox.count > 0) {
            List {
                ForEach(ActiveTimebox.activeTimebox) { item in
                    
                    let startTime = extractTime(extractMode: "hh:mm", el: item.startTime)
                    let endTime = extractTime(extractMode: "hh:mm", el: item.endTime)
                    
                    HStack {
                        Text("\(startTime) - \(endTime)")
                            .padding(.vertical)
                        Spacer()
                        Text(item.activityName)
                            .padding(.vertical)
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
