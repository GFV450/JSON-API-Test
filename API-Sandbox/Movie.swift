//
//  Movie.swift
//  API-Sandbox
//
//  Created by Dion Larson on 6/24/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Movie {
    let name: String
    let rightsOwner: String
    let price: Double
    let link: String
    let releaseDate: String
    
    init(json: JSON) {
        self.name = ""
        self.rightsOwner = ""
        self.price = 0
        self.link = ""
        self.releaseDate = ""
        
        let moviesData = JSON(data: jsonData)
        
        
        let topMovieData = moviesData["feed"]["entry"][0]
        let topMovie = Movie(json: topMovieData)
    }
    
    
}
