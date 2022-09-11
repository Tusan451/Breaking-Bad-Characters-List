//
//  DetailedViewController.swift
//  Breaking Bad Characters List
//
//  Created by Olegio on 09.09.2022.
//

import UIKit
import Alamofire

class DetailedViewController: UIViewController {

    @IBOutlet var characterImage: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var nickname: UILabel!
    @IBOutlet var occupation: UILabel!
    @IBOutlet var status: UILabel!
    
    var characterInfo: SearchResponce? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        
        guard let character = characterInfo else { return }
        
        name.text = character.name
        nickname.text = character.nickname
        status.text = character.status
        occupation.text = ""
        
        if character.occupation != [] {
            for occupationLabel in character.occupation {
                occupation.text! += "\(occupationLabel.description)\n"
            }
        } else {
            occupation.text = "No occupation"
        }
        
        DispatchQueue.global().async {
            AF.download(character.img).validate().responseData { responce in
                guard let data = responce.value else { return }
                self.characterImage.image = UIImage(data: data)
            }
        }
    }
}
