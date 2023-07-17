//
//  ContentView.swift
//  MEMORIZE
//
//  Created by Mauricio Mendonça on 14/07/23.
//

import SwiftUI

struct ContentView: View {
    var emojis: Array<String> = ["🚎","🚂", "🚢", "🚀",  "🛸",  "🚘",  "🚍",  "🚚",  "🚖",  "🏎️",  "🚛",  "✈️",  "🚠"]
    @State var emojiCount = 6
    
    var body: some View {
        VStack{
            HStack{
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            HStack {
                Button(action: {
                    emojiCount += 1
                }, label: { VStack{
                    Text("Add")
                    Text("Card")
                }})
                Spacer()
                Button(action: {
                    emojiCount -= 1
                }, label: {VStack{
                    Text("Remove")
                    Text("Card")
                }})
            }
            .padding(.horizontal)
        }
            .foregroundColor(.red)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    var body: some View{
        return ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp
            {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
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
