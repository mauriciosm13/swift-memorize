//
//  ContentView.swift
//  MEMORIZE
//
//  Created by Mauricio Mendonça on 14/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20.0)
                .stroke(lineWidth: 3)
                .padding(.horizontal)
                .foregroundColor(.red)
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world").foregroundColor(Color.blue)
            }
        }
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
