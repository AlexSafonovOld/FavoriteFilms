//
//  FilmTableViewCell.swift
//  FavoriteFilms
//
//  Created by Алексей Сафонов on 15.07.2020.
//  Copyright © 2020 Алексей Сафонов. All rights reserved.
//

import UIKit

class FilmTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageFilm: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var englishName: UILabel!
    @IBOutlet weak var ganreLabel: UILabel!
    
    
    func setInfo(film: Film) {
        self.nameLabel.text = film.nameFilm
        self.englishName.text = film.englishName
        self.ganreLabel.text = film.ganre
        self.imageFilm.image = UIImage(named: film.imageName)
                
    }
    
    
    
}
