//
//  EditTimeboxView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 06/04/22.
//

import SwiftUI

// All of these states will become bindings later


struct EditTimeboxView: View {
    @State private var activityName: String = "Activity Name"
    @State private var startTime: Date = Date()
    @State private var endTime: Date = Date()
    @State private var reminder: String = ""
    @State private var additionalInfo: String = "Description"
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Timebox Setting")) {
                        List {
                            TextField("Activity Name",text:$activityName)
                            DatePicker(
                                "Start time",
                                selection:$startTime,
                                displayedComponents: [.hourAndMinute]
                            )
                            DatePicker(
                                "End time",
                                selection: $endTime,
                                displayedComponents: [.hourAndMinute]
                            )
                        }
                    }
                    Section(header: Text("Reminder Setting")) {
                        List {
                            Menu("Reminder") {
                                Button("5 minutes after", action: {
                                    self.reminder = "5 minutes after"
                                })
                                Button("5 minutes before", action: {
                                    self.reminder = "5 minutes before"
                                })
                                Button("Turn off reminder", action: {
                                    self.reminder = "off"
                                })
                            }
                        }
                    }
                    Section(header: Text("Additional Info")) {
                        List {
                            TextEditor(text:$additionalInfo)
                        }
                    }
                    Button(action:{
                    
                    }, label: {
                        HStack {
                            Spacer()
                            Text("Delete")
                                .foregroundColor(.red)
                                .multilineTextAlignment(.center)
                            Spacer()
                        }
                    })
                }
            }
            .navigationTitle("Edit Timebox")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        
                        // Cancel logic here
                        
                    }, label: {
                        Text("Cancel")
                    })
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                        // Save logic
                        
                    }, label: {
                        Text("Save")
                            .bold()
                    })
                }
            }
        }
    }
}

struct EditTimeboxView_Previews: PreviewProvider {
    static var previews: some View {
        EditTimeboxView()
    }
}
