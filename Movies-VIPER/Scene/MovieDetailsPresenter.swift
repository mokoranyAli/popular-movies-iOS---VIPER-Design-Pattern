//
//  MovieDetailsPresenter.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/4/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import Foundation
class MovieDetailsPresenter:MovieDetailsPresenterProtocol {
   
    
    func viewDidLoad() {
        view?.showLoading()
        if let selectedMovie = movie{
            view?.showMovieDetails(movie: selectedMovie)
        }
        view?.hideLoading()
        
    }
    
  weak var view: MovieDetailsViewProtocol?
    private var movie:Movie?
    
    init(view:MovieDetailsViewProtocol ,router:MovieDetailsRouter, movie:Movie) {
        self.movie = movie
        self.view = view
    }
    
    
    
    
    
    
}
