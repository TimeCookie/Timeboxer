//
//  SplashScreenView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 08/04/22.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        
        VStack {
            if self.isActive {
                ContentView()
            }
            else {
                
                // Logo here
                
                Text(quotePicker())
                    .padding()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
            
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
