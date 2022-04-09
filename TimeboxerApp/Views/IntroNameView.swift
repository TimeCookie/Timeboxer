//
//  IntroNameView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 07/04/22.
//

import SwiftUI

struct IntroNameView: View {
    @State public var userName:String = ""
    @State public var pass:Bool = false
    var body: some View {
        VStack {
            if self.pass {
                ContentView()
            }
            else {
                Text("What should we call you?")
                TextField("", text:$userName)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding()
                Divider()
                 .frame(height: 1)
                 .background(Color.black)
                Button(action: {
                    withAnimation {
                        self.pass = true
                    }
                    
                }, label: {
                    Text("Continue")
                        .bold()
                        .padding(.vertical)
                })
                .padding(.vertical)
            }
            
        }
        .padding(.horizontal, 50)
    }
}

struct IntroNameView_Previews: PreviewProvider {
    static var previews: some View {
        IntroNameView()
    }
}
