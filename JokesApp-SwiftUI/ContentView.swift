//
//  ContentView.swift
//  JokesApp-SwiftUI
//
//  Created by Yigit Karakurt on 3.04.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var jokesViewModel = JokesViewModel()
    var body: some View {
        VStack {
            
            List(jokesViewModel.jokes) { element in
                
                
                Text(element.setup)
                
            }
            
        }.onAppear{
            jokesViewModel.getJokes()
        
        }.refreshable {
            jokesViewModel.getJokes()
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
