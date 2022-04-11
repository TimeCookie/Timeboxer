//
//  AddTimeboxView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 04/04/22.
//

import SwiftUI


struct AddTimeboxView: View {
    
    @Binding var isPresenting: Bool
//    @State var activityName = UserDefaults.standard.string(forKey: "ACTIVITY_NAME") ?? ""
    @State private var activityNameInput:String = ""
    @State private var additionalInfo:String = "Add a description"
    @State private var reminder:String = "5 minutes before"
    @State private var startTime:Date = Date()
    @State private var endTime:Date = Date()
    
    
    
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
                            timeWarning(startTime, endTime)
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
                        self.isPresenting.toggle()
                    }, label: {
                        Text("Cancel")
                            .padding()
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Save here
                        
                        let newTimebox: Timebox = Timebox(id:UUID(), activityName: activityNameInput, startTime: startTime, endTime: endTime, reminder: reminder, description: additionalInfo, isFinished: false)
                        
                        saveData(newTimebox)
                        self.isPresenting.toggle()
                        
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
    @State static var isPresenting:Bool = true
    
    static var previews: some View {
        AddTimeboxView(isPresenting: $isPresenting)
    }
}





/*
 
Save to userdefaults
 
 UserDefaults.standard.set(activityNameInput, forKey: "ACTIVITY_NAME")
 activityName = activityNameInput
 
 
 */
