//
//  MoviePresenter.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/1/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import Foundation


class  MoviePresenter : MoviePresenterProtocol , MovieInteractorOutputProtocol{
   
    
    var getMoviesCount: Int
    {
        return moviesArray.count
    }
   weak var view: MovieViewProtocol?
    private let interactor: MovieInteractorInputProtocol
    private let router: MovieRouterProtocol
    private var moviesArray = [Movie]()
    
    
    init(view: MovieViewProtocol, interactor: MovieInteractorInputProtocol, router: MovieRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    
    func viewDidLoad() {
        view?.showLoadingIndicator()
        interactor.getMovies()
     
        
    }
    
    func getMoviesSuccessfully(movies: [Movie]) {
        self.moviesArray.append(contentsOf: movies)
        view?.reloadData()
         view?.hideLoadingIndicator()
        
        print(movies.count)
    }
    func configureCell(cell: MovieCellView, indexpath: IndexPath) {
        let movie  = moviesArray[indexpath.row]
        let viewModel = MovieDTO(movie: movie)
        cell.configureCell(movieDTO: viewModel)
    }
    
    func didSelectedRow(indexpath: IndexPath) {
        let selectedMovie:Movie = moviesArray[indexpath.row]
        
        print("delegation work")
        
        
        router.navigateToUserDetailsScreen(from: view, movie: selectedMovie)
//        print(router)
//        print(selectedMovie.title)
    }
    
    
}
