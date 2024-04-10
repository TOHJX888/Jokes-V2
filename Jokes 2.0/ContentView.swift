//
//  ContentView.swift
//  Jokes 2.0
//
//  Created by RGS on 10/4/24.
//

import SwiftUI

struct ContentView: View {
    
    var jokes = [Joke(setup: "Why couldn't the bicycle stand up?", punchline: "It was two tired!"), Joke(setup: <#T##String#>, punchline: <#T##String#>)]
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
