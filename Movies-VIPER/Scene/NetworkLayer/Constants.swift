//
//  Constants.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/2/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//


class Constants {
    private  let movieUrl = "https://api.themoviedb.org/3/discover/movie?sort_by=vote_average.desc&api_key="
    private  let keyUrl = "f9fff5cdf61663858e62cf2282fbf0f2"
    static let poster_URL = "https://image.tmdb.org/t/p/w500"
    
    
    static let sharedObject = Constants()
    private init() {
        
    }
    
    
    func getMovieUrl () -> String{
        return movieUrl + keyUrl
    }
}
