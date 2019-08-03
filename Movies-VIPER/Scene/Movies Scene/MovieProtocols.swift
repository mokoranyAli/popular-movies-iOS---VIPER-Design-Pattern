//
//  MovieProtocols.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/1/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import Foundation


protocol MovieViewProtocol:class {
    
    var presenter: MoviePresenterProtocol! { get set }
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func reloadData()
}



protocol MoviePresenterProtocol: class {
    var view: MovieViewProtocol? { get set }
    func viewDidLoad()
    func configureCell(cell: MovieCellView , indexpath: IndexPath)
    var getMoviesCount:Int {get}
    func didSelectedRow(indexpath: IndexPath)
}

protocol MovieInteractorInputProtocol: class {
    var presenter: MovieInteractorOutputProtocol? { get set }
    func getMovies()
}

protocol MovieInteractorOutputProtocol: class {
    func getMoviesSuccessfully(movies:[Movie])
}


protocol MovieRouterProtocol: class {
    
}


protocol MovieCellView {
    func configureCell(movieDTO : MovieDTO)
    
}
