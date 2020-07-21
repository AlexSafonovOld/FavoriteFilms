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
        self.englishName.text = film.actor
        let url = URL(string: film.imageName)
        if let data = try? Data(contentsOf: url!) {
            DispatchQueue.main.async {
                self.imageFilm.image = UIImage(data: data)}
        }
        self.ganreLabel.text = film.ganre
                
    }
    
    
    
}
