//
//  DetailViewController.swift
//  simpsonsviewer
//
//  Created by Gregory Jones on 7/3/19.
//  Copyright © 2019 Gregory Jones. All rights reserved.
//

import UIKit
import SDWebImage



class DetailViewController: UIViewController {
    
    @IBOutlet var characterImage: UIImageView!
    @IBOutlet var descriptionView: UITextView!
    @IBOutlet var titleLabel: UILabel!
    
    
  var detailCharacter: CharacterDetails? {
        didSet {
            configureView()
            
        }
    }
    /**
     Displays the Character's title, image, and description
     
     */
    func configureView() {
        if let detailCharacter = detailCharacter {
            if let descriptionView = descriptionView, let titleLabel = titleLabel {
               descriptionView.text = detailCharacter.Text // Seems the value Result is very similar to Text. 
                titleLabel.text = detailCharacter.Text
                
                let imageUrl = detailCharacter.Icon.URL
                characterImage.sd_setImage(with: URL(string: imageUrl!), placeholderImage: UIImage(named: "placeholder.png"))
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
    



