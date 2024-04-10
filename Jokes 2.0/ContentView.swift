//
//  ContentView.swift
//  Jokes 2.0
//
//  Created by RGS on 10/4/24.
//

import SwiftUI

struct ContentView: View {
    
    var jokes =
    [Joke(setup: "Why couldn't the bicycle stand up?", punchline: "It was two tired!"),
     Joke(setup: "Why did the chicken cross the road?", punchline: "To get to the other side!"),
    ]
    
    var body: some View {
        VStack {
            Text(jokes[0].setup)
                .padding()
            
            Button {
                print("Button tapped!")
            } label: {
                Text("What?")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
            .padding()
            
            Text(jokes[0].punchline)
                .padding()
            
            Text("Tap to continue")
                .italic()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
