//
//  TimeboxCardListView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 07/04/22.
//

import SwiftUI

struct TimeboxCardListView: View {
    @ObservedObject var ActiveTimebox: TimeboxData = TimeboxData.shared
    @State public var isOpen: Bool = false
    
    var body: some View {
        if(ActiveTimebox.activeTimebox.count > 0) {
            List {
                
                ForEach($ActiveTimebox.activeTimebox) { $tb in
                    
                    let startTime:String = extractTime(extractMode: "hh:mm", el: tb.startTime)
                    let endTime:String = extractTime(extractMode: "hh:mm", el: tb.endTime)
                    
                    Button(action: {
                        self.isOpen.toggle()
                    }, label: {
                        HStack {
                            Text("\(startTime) - \(endTime)")
                                .padding(.vertical)
                            Spacer()
                            Text(tb.activityName)
                                .padding(.vertical)
                        }
                        
                    })
                    .sheet(isPresented: $isOpen) {
                        EditTimeboxView(isEditing: $isOpen, editingTimebox: $tb)
                    }
                    .foregroundColor(.black)
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
