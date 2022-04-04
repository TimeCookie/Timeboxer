//
//  AddTimeboxView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 04/04/22.
//

import SwiftUI


struct AddTimeboxView: View {
    
    @State var activityName = UserDefaults.standard.string(forKey: "ACTIVITY_NAME") ?? ""
    @State var activityNameInput = ""
    
    var body: some View {
        VStack {
            HStack {
                
                Button(action: {
                    
                }, label: {
                    Text("Cancel")
                })
                .padding(.leading)
                
                Spacer()
                
                Text("Add Timebox").bold()
                
                Spacer()
                
                Button(action: {
                    
                    // Save here
                    UserDefaults.standard.set(activityNameInput, forKey: "ACTIVITY_NAME")
                    activityName = activityNameInput
                    
                    
                }, label: {
                    Text("Save").bold()
                })
                .padding(.trailing)
                
                
            }
            Form {
                Section(header: Text("Timebox settings")) {
                    TextField("Activity name", text: $activityNameInput)
                }
                Section(header: Text("Saved data")) {
                    Text(activityName)
                }
            }
        }
        
    }
}
struct AddTimeboxView_Previews: PreviewProvider {
    static var previews: some View {
        AddTimeboxView()
    }
}
