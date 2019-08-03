//
//  MovieDTO.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/2/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import Foundation

class MovieDTO {
    let name:String
    let imageURL:String
    let rate:Double
    
    init(movie:Movie) {
        name = movie.title
        imageURL = movie.image
        rate = movie.rating
    }
    
}
