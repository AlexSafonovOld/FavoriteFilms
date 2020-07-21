//
//  FilmTableViewController.swift
//  FavoriteFilms
//
//  Created by Алексей Сафонов on 15.07.2020.
//  Copyright © 2020 Алексей Сафонов. All rights reserved.
//

import UIKit

class FilmTableViewController: UITableViewController {
    var film = [Film]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //get film
        FavoriteFilmNetworkService.getFilm { (response) in
            self.film = response.film
            self.tableView.reloadData()
        }
        tableView.tableFooterView = UIView()
        tableView.reloadData()
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return film.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell", for: indexPath) as! FilmTableViewCell
        let allFilm = film[indexPath.row]
        cell.setInfo(film: allFilm)
      
        

        return cell
    }
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailId" {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let films = film[indexPath.row]
            let dVc = segue.destination as! DetailViewController
            dVc.currentInfo = films
        }
    }


}
