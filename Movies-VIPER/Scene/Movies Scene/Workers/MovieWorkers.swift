//
//  MovieWorkers.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/2/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import Foundation

class MovieWorker {
    
    private init (){}
  public static let shared = MovieWorker()
    
      private let networkLayer = NetworkLayer.shared
    
    func getMovies ( completionHandler:@escaping ([Movie]?) -> Void){
         let url = Constants.sharedObject.getMovieUrl()
    
        networkLayer.getMoviesList(moviesUrl: url, completionHandler: completionHandler)
    
    }
    
    
    
    

}
