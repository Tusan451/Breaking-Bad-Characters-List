//
//  CharactersViewController.swift
//  Breaking Bad Characters List
//
//  Created by Olegio on 09.09.2022.
//

import UIKit

class CharactersViewController: UIViewController {

    let cellId = "character"
    let urlString = "https://www.breakingbadapi.com/api/characters"
    
    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
    
    private func setupTable() {
        table.delegate = self
        table.dataSource = self
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
