//
//  ContentView.swift
//  MEMORIZE
//
//  Created by Mauricio Mendonça on 14/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
        }
        .foregroundColor(.red)
   
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View{
        return ZStack {
            if isFaceUp
            {
                RoundedRectangle(cornerRadius: 20.0)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20.0)
                    .stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 20.0)
                    .fill()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
