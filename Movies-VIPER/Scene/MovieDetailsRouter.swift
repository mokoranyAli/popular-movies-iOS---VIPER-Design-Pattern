//
//  MovieDetailsRouter.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/4/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import UIKit

class MovieDetailsRouter {
     weak var viewController: UIViewController?
    class func createMovieDetailsViewController(movie: Movie) -> UIViewController {
       
        let router = MovieDetailsRouter()
        let movieDetailsVC = mainStoryboard.instantiateViewController(withIdentifier: "MovieDetailsVC") as! MovieDetailsVC
        if let movieDetailsView = movieDetailsVC as? MovieDetailsViewProtocol {
            let presnter = MovieDetailsPresenter(view: movieDetailsView,router:router, movie: movie)
            movieDetailsView.presenter = presnter
            
            router.viewController = movieDetailsVC
            
        }
        print("inside create movie details vc")
        
        return movieDetailsVC
    }
    
    
    
    
//    class func createMovieDetailsViewController(movie: Movie) -> UIViewController {
//
//        let router = MovieDetailsRouter()
//        let movieDetailsVC = mainStoryboard.instantiateViewController(withIdentifier: "MovieDetailsVC") as! MovieDetailsVC
//        let presnter = MovieDetailsPresenter(view: movieDetailsVC,router:router, movie: movie)
//        movieDetailsVC.presenter = presnter
//        router.viewController = movieDetailsVC
//
//
//
//        return movieDetailsVC
//    }
    
    class var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
