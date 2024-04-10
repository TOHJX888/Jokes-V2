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
    
    @State private var showPunchline = false
    @State private var currentJokeIndex = 0
    @State private var isFeedbackPresented = false
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .onTapGesture {
                    if showPunchline {
                        currentJokeIndex += 1
                        showPunchline = false
                        isFeedbackPresented = true
                    }
                }
            VStack {
                Text(jokes[currentJokeIndex % jokes.count].setup)
                    .padding()
                
                Button {
                    print("Button tapped!")
                    showPunchline = true
                } label: {
                    Text("What?")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
                .padding()
                
                if showPunchline {
                    Text(jokes[currentJokeIndex % jokes.count].punchline)
                        .padding()
                        .opacity(showPunchline ? 1 : 0)
                    
                    Text("Tap to continue")
                        .italic()
                        .padding()
                        .opacity(showPunchline ? 1 : 0)
                }
            }
        }
        .alert("Did you like the last joke?", isPresented: $isFeedbackPresented) {
            Button("😃") {
                print("good")
            }
            Button("😭") {
                print("you're a terrible person")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
