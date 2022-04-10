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
    var userName: String = UserDefaults.standard.string(forKey: "USERNAME_KEY") == "" ? "Guest" : UserDefaults.standard.string(forKey: "USERNAME_KEY")!
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text(extractTime(extractMode:"dd", el:Date()))
                        .bold()
                        .padding(.leading)
                        .font(.largeTitle)
                        
                        
                    Text(monthChecker(Int(extractTime(extractMode: "MM", el: Date()))!))
                        .bold()
                        .padding(.leading)
                        
                }
                
    
                Spacer()
                
                VStack {
                    Text(greetingCheck(Int(extractTime(extractMode: "hh", el: Date()))!))
                        .bold()
                        .font(.title3)
                        .padding(.trailing)
                        
                    Text(userName)
                        .font(.title2)
                        .bold()
                        
                }
            }
            NavigationView {
                TimeboxCardListView()
                
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


