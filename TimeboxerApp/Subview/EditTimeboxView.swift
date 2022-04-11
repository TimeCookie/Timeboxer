//
//  EditTimeboxView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 06/04/22.
//

import SwiftUI

// All of these states will become bindings later


struct EditTimeboxView: View {
    @Binding var isEditing: Bool
    @Binding var editingTimebox: Timebox
    @State private var showAlert: Bool = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Timebox Setting")) {
                        List {
                            TextField("Activity Name",text:$editingTimebox.activityName)
                            DatePicker(
                                "Start time",
                                selection: $editingTimebox.startTime,
                                displayedComponents: [.hourAndMinute]
                            )
                            DatePicker(
                                "End time",
                                selection: $editingTimebox.endTime,
                                displayedComponents: [.hourAndMinute]
                            )
                        }
                    }
                    
                    Section(header: Text("Additional Info")) {
                        List {
                            TextEditor(text:$editingTimebox.description)
                        }
                    }
                    Button(role: .destructive) {
                        // Delete logic here
                        showAlert = true
                        
                    } label: {
                        HStack {
                            Spacer()
                            Text("Delete")
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(title: Text("Delete Timebox"),
                              message: Text("This action cannot be undone. Are you sure?"),
                              primaryButton: Alert.Button.destructive(Text("Delete")) {
                                    self.isEditing = false
                                    self.showAlert = false
                                    deleteData(editingTimebox)
                                },
                              secondaryButton: Alert.Button.cancel()
                        )
                    }
                }
            }
            .navigationTitle("Edit Timebox")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        
                        // Cancel logic here
                        self.isEditing = false
                        
                    }, label: {
                        Text("Cancel")
                    })
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                        // Save logic
                        self.isEditing = false
                        editData(editingTimebox)
                        
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
    
    @State static var isEditing: Bool = true
    @State static var currentTimebox: Timebox = TimeboxData.shared.activeTimebox[0]
    
    static var previews: some View {
        EditTimeboxView(isEditing: $isEditing, editingTimebox: $currentTimebox)
    }
}
