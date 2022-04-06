//
//  AddTimeboxView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 04/04/22.
//

import SwiftUI


struct AddTimeboxView: View {
    
//    @Binding var isPresenting: Bool
    @State var activityName = UserDefaults.standard.string(forKey: "ACTIVITY_NAME") ?? ""
    @State var activityNameInput = ""
    @State var additionalInfo = "Add a description"
    
    @State private var startTime = Date()
    @State private var endTime = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                
                Form {
                    Section(header:Text("Timebox Setting")) {
                        List {
                            TextField("Activity name", text:$activityNameInput)
                            
                            DatePicker(
                                "Start time",
                                selection:$startTime,
                                displayedComponents: [.hourAndMinute]
                            )
                            DatePicker(
                                "End time",
                                selection:$endTime,
                                displayedComponents: [.hourAndMinute]
                            )
                            if(endTime < startTime) {
                                Text("End time earlier than start time!")
                                    .foregroundColor(Color.red)
                            }
                        }
                    }
                    Section(header:Text("Reminder Setting")) {
                        List {
                            Text("Reminder")
                        }
                    }
                    Section(header: Text("Additional Info")) {
                        List {
                            TextEditor(text: $additionalInfo)
                        }
                    }
                }
                
                
            }
            .navigationTitle("Add Timebox")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
//                        self.isPresenting.toggle()
                    }, label: {
                        Text("Cancel")
                            .padding()
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Save here
                        UserDefaults.standard.set(activityNameInput, forKey: "ACTIVITY_NAME")
                        activityName = activityNameInput


                    }, label: {
                        Text("Save").bold()
                    })
                    .padding(.trailing)
                }
            }
        }
        
        
    }
}

// Comment this when building


struct AddTimeboxView_Previews: PreviewProvider {
    static var previews: some View {

        AddTimeboxView()
    }
}



