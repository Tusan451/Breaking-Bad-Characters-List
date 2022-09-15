//
//  CharacterTableViewCell.swift
//  Breaking Bad Characters List
//
//  Created by Olegio on 09.09.2022.
//

import UIKit
import Alamofire

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet var CharacterImage: ImageView!
    @IBOutlet var name: UILabel!
    
    func configure(for character: SearchResponce) {
        
        name.text = character.name
        CharacterImage.fetchImage(with: character.img)
        
//        DispatchQueue.global().async {
//            AF.download(character.img).validate().responseData { responce in
//                guard let data = responce.value else { return }
//                self.CharacterImage.image = UIImage(data: data)
//            }
//        }
    }
}
