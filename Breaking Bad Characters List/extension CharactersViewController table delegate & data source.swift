//
//  extension CharactersViewController table delegate & data source.swift
//  Breaking Bad Characters List
//
//  Created by Olegio on 09.09.2022.
//

import Foundation
import UIKit

extension CharactersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CharacterTableViewCell
        
        cell.name.text = "123"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
