//
//  Posts.swift
//  Selfigram
//
//  Created by Andy Li on 4/27/17.
//  Copyright © 2017 Andy Li. All rights reserved.
//

import Foundation
import UIKit

class Post{
    
    var selfieImage: UIImage
    var user: User
    var comment: String
    
    init(selfieImage: UIImage, user: User, comment: String){
        self.selfieImage = selfieImage
        self.user = user
        self.comment = comment
    }
    
}
