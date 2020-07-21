//
//  FavoritFilmNetworkService.swift
//  FavoriteFilms
//
//  Created by Алексей Сафонов on 21.07.2020.
//  Copyright © 2020 Алексей Сафонов. All rights reserved.
//

import Foundation

class FavoriteFilmNetworkService {
    private init(){}
    
    
    static func getFilm(completion: @escaping(GetFilmResponse) -> ()){
        guard let url = URL(string: "https://my-json-server.typicode.com/AlexSafonovOld/nowIs/film") else { return }
        NetwokService.shared.getData(url: url) { (json) in
            do {
                let response = try GetFilmResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
