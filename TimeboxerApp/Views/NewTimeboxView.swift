//
//  NewTimeboxView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 05/04/22.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct NewTimeboxView: View {
    @State var navigateLink: Bool = false
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("01")
                        .bold()
                        .padding(.leading)
                        
                        
                    Text("January")
                        .bold()
                        .padding(.leading)
                        
                }
                
                
                Spacer()
                
                VStack {
                    Text("Good Morning,")
                        .bold()
                        .padding(.trailing)
                        
                    Text("Marvin")
                        .bold()
                        
                }
            }
            NavigationView {
                List {
                    NavigationLink(destination: MuteReminderView()) {
                        TimeboxCard()
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Timeboxes")
            }
            
            
        }
    }
}

struct NewTimeboxView_Previews: PreviewProvider {
    static var previews: some View {
        NewTimeboxView()
    }
}

struct TimeboxCard: View {
    var body: some View {
        HStack {
            Text("09.00 - 12.00")
            Spacer()
            Text("Activity name")
        }
    }
}
