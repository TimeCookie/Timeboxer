//
//  ContentView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 04/04/22.
//

import SwiftUI


extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct ContentView: View {
    @State var navigateLink = false
    var body: some View {
        NavigationView {
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
                VStack{
                    Button(action: {
                        navigateLink = true
                    }, label: {
                        Text("Label").padding([ .trailing],UIScreen.screenWidth/2)
                    })
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    NavigationLink("", destination:AddTimeboxView(),isActive: $navigateLink)
                }
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

