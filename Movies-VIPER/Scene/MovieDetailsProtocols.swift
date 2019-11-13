//
//  MovieDetailsProtocols.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/4/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import Foundation


protocol MovieDetailsViewProtocol : class{
    var presenter:MovieDetailsPresenterProtocol! {set get}
    func showLoading()
    func showMovieDetails(movie: Movie)
    func hideLoading()
    
    
}


protocol MovieDetailsPresenterProtocol : class{
    var view:MovieDetailsViewProtocol? {set get}
    func viewDidLoad()
    
    
}

protocol MovieDetailsRouterProtocol {
    
}


