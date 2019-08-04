//
//  MovieDetailsRouter.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/4/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import UIKit

class MovieDetailsRouter {
    
    class func createMovieDetailsViewController(movie: Movie) -> UIViewController {
        
        let movieDetailsVC = mainStoryboard.instantiateViewController(withIdentifier: "MovieDetailsVC") as! MovieDetailsVC
        if let movieDetailsView = movieDetailsVC as? MovieDetailsViewProtocol {
            let presnter = MovieDetailsPresenter(view: movieDetailsView, movie: movie)
            movieDetailsView.presenter = presnter
        }
        
        //print(movieDetailsVC.imageMovie.text)
        
        return movieDetailsVC
    }
    
    class var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
