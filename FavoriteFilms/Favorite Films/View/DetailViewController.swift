//
//  DetailViewController.swift
//  FavoriteFilms
//
//  Created by Алексей Сафонов on 16.07.2020.
//  Copyright © 2020 Алексей Сафонов. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {
    
    @IBOutlet weak var imageDetai: UIImageView!
    @IBOutlet weak var nameFilmLabel: UILabel!
    @IBOutlet weak var englishNameLabel: UILabel!
    @IBOutlet weak var janreLabel: UILabel!
    
    var currentInfo: Film?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCurrentInfo()
        tableView.tableFooterView = UIView()
        
    }
    
    private func setupCurrentInfo(){
        setNavigation()
        if currentInfo != nil {
            let url = URL(string: currentInfo!.imageName)
                 if let data = try? Data(contentsOf: url!) {
                     DispatchQueue.main.async {
                        self.imageDetai.image = UIImage(data: data)}
                 }
            nameFilmLabel.text = currentInfo?.nameFilm
            englishNameLabel.text = currentInfo?.actor
            janreLabel.text = currentInfo?.ganre
        }else {
            print ("Error")
        }
        
    }
    
    
    
    private func setNavigation(){
        guard let topItem = navigationController?.navigationBar.topItem else {return}
        topItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.leftBarButtonItem = nil
        title = currentInfo?.nameFilm
        
    }
    
    
    
}
