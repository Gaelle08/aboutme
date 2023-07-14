//
//  ContentView.swift
//  aboutme
//
//  Created by Gaelle Valmir on 7/13/23.
//

import SwiftUI

struct ContentView: View {
   
    @State private var name = "I'm a Potter Head!"
    @State private var textTitle = ""
    
    var body: some View {
        
        
        ZStack {
            Color(.systemTeal)
                .ignoresSafeArea()
        VStack {
            Spacer()
            Image("ravenclaw1")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .padding()
            
            Spacer()
            
            Text("Hi, my name is Gaelle!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding()

            Spacer()
            Text(textTitle)
                .font(.title)
                
            Spacer()
            Button("Reveal Fun fact") {
                textTitle = name
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
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
