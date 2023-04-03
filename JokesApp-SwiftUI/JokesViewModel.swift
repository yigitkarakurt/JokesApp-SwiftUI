//
//  JokesViewModel.swift
//  JokesApp-SwiftUI
//
//  Created by Yigit Karakurt on 3.04.2023.
//

import Foundation
import Alamofire


class JokesViewModel : ObservableObject {
    
    @Published var jokes = [Welcome]()
    
    func getJokes(){
        
        AF.request("https://official-joke-api.appspot.com/random_joke", method: .get).responseDecodable(of:Welcome.self) { response in
                
            switch response.result {
                
            case .success(let data):
                
                self.jokes.removeAll()
                self.jokes.append(data)
                                
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
}
//https://official-joke-api.appspot.com/random_joke
