//
//  GetFilmResponse.swift
//  FavoriteFilms
//
//  Created by Алексей Сафонов on 21.07.2020.
//  Copyright © 2020 Алексей Сафонов. All rights reserved.
//

import Foundation


struct GetFilmResponse {
    typealias JSON = [String: AnyObject]
    
    let film: [Film]
    
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternet }
        
        var films = [Film]()
        
        for dictionary in array {
            guard let film = Film(dict: dictionary) else { continue }
            films.append(film)
        }
        self.film = films
    }
}

