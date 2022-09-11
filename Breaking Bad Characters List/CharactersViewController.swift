//
//  CharactersViewController.swift
//  Breaking Bad Characters List
//
//  Created by Olegio on 09.09.2022.
//

import UIKit
import Alamofire

class CharactersViewController: UIViewController {

    let cellId = "character"
    let urlString = "https://www.breakingbadapi.com/api/characters"
    var searchResponce: [SearchResponce] = []
    
    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
    
    private func setupTable() {
        table.delegate = self
        table.dataSource = self
        
        fetchData()
    }
    
    private func fetchData() {
        
        guard let url = URL(string: urlString) else { return }
        
        AF.request(url).validate().responseDecodable(of: [SearchResponce].self) { responce in
            switch responce.result {
            case .success(let characters):
                self.searchResponce = SearchResponce.getCharacters(from: characters)
                DispatchQueue.main.async {
                    self.table.reloadData()
                }
            case .failure(let error):
                print(error)
            }
        }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "moreInfo" else { return }
        guard let Vc = segue.destination as? DetailedViewController else { return }
        
        if let indexPath = table.indexPathForSelectedRow {
            let character = searchResponce[indexPath.row]
            Vc.characterInfo = character
        }
    }
}
