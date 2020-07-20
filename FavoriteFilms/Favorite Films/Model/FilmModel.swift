//
//  FilmModel.swift
//  FavoriteFilms
//
//  Created by Алексей Сафонов on 15.07.2020.
//  Copyright © 2020 Алексей Сафонов. All rights reserved.
//

import Foundation



struct Film {
    let nameFilm: String
    let englishName: String
    let imageName: String
    let ganre: String
    
    
    
    init?(dict:[String: AnyObject]) {
        guard let nameFilm = dict["nameFilm"] as? String,
        let englishName = dict["englishName"] as? String,
        let imageName = dict["image"] as? String,
            let ganre = dict["ganre"] as? String else { return nil }
        self.nameFilm = nameFilm
        self.englishName = englishName
        self.imageName = imageName
        self.ganre = ganre
    }
    
    //[
    //  {
    //    "nameFilm": "Безумный макс",
    //    "englishName": "Mad Max",
    //    "image": "https://fs.kinomania.ru/file/film/7/84/784b217f31e7568abfd3b4e870ccbee0.jpeg",
    //    "ganre": "Боевик"
    //  }
    //]
}
