//
//  ContentView.swift
//  JokesApp-SwiftUI
//
//  Created by Yigit Karakurt on 3.04.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var jokesViewModel = JokesViewModel()
    @State var answer : String = ""

    
    
    var body: some View {
        
        
            ScrollView {
                
                VStack{
                    
                    ForEach(jokesViewModel.jokes) { element in
                        
                        
                        Text(element.setup).padding(.horizontal,15)
                            .padding(.top,200)
                        
                        VStack{
                            
                            Button{
                                answer = element.punchline
                            }label: {
                                
                                Text("Get Answer!")
                                    .padding()
                                    .foregroundColor(.black)
                                    .background(.red)
                                    .cornerRadius(15)
                                
                            }.padding()
                            
                            Text(answer)
                                .font(.callout)
                            
                        }
                        
                    }
                }
                
                
                
                
                
            }.onAppear{
                jokesViewModel.getJokes()
                
            }.refreshable {
                jokesViewModel.getJokes()
                answer = ""
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
