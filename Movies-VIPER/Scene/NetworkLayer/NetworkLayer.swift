//
//  NetworkLayer.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/2/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import SwiftyJSON
import Alamofire

class NetworkLayer{
    
    private init(){}
    public static let shared = NetworkLayer()
    
    
    func getMoviesList(moviesUrl: String, completionHandler:@escaping ([Movie]?) -> Void){
        
        var listMovies = [Movie]()        
        Alamofire.request(moviesUrl, method: .get).responseJSON{ (response) in
            // print(response)
            
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                guard let Movies = json["results"].arrayObject else {return}
                
                for i in stride(from: 0, to: Movies.count, by: 1) {
                    if let img =  json["results"][i]["poster_path"].string {
                        
                        let movie:Movie = Movie()
                        movie.title = json["results"][i]["title"].string!
                        movie.image =  Constants.poster_URL + img
                        movie.rating = json["results"][i]["vote_average"].double!
                        movie.releaseYear = json["results"][i]["release_date"].string!
                        
                        print(movie.image)
                        listMovies.append(movie)
                    }
                    
                    
                }
                completionHandler(listMovies)
                
            case .failure(let error):
                print(error)
                completionHandler(nil)
            }
        }
    }
    
    
}
