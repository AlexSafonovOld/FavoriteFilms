//
//  NetworkService.swift
//  FavoriteFilms
//
//  Created by Алексей Сафонов on 21.07.2020.
//  Copyright © 2020 Алексей Сафонов. All rights reserved.
//

import Foundation

class NetwokService {
    
    
    private init(){}
    static let shared = NetwokService()
    
    
    public func getData(url: URL, complition: @escaping(Any) -> ()){
        //create session
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response,error) in
            
            //check info
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    complition(json)
                }
            } catch {
                print(error)
            }
            
        }.resume()
    }
    
    
}
