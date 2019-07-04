//
//  Character.swift
//  simpsonsviewer
//
//  Created by Gregory Jones on 7/2/19.
//  Copyright © 2019 Gregory Jones. All rights reserved.
//

import UIKit
 

struct Initial: Decodable {
    var RelatedTopics: [CharacterDetails]
    
    init(RelatedTopics: [CharacterDetails]) {
        self.RelatedTopics = RelatedTopics
    }
}

struct CharacterDetails: Decodable {
    var Result: String?
    var Text: String?
    var Icon: CharacterIcons
    
    
    
    init(Result: String, Text: String, Icon: CharacterIcons) {
        self.Result = Result
        self.Text = Text
        self.Icon = Icon
        
    }
}

struct CharacterIcons: Decodable {
    var URL: String?
    
    init(URL: String) {
       self.URL = URL
    }
}
