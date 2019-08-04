//
//  MovieCell.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/1/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import UIKit
import SDWebImage

class MovieCell: UITableViewCell,MovieCellView {
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieRateLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        setupImageView()
    }


    
    func configureCell(movieDTO: MovieDTO) {
        movieNameLabel.text = movieDTO.name
        movieRateLabel.text = String(movieDTO.rate)
        movieImageView.sd_imageIndicator = SDWebImageActivityIndicator.gray
        movieImageView.sd_setImage(with: URL(string: movieDTO.imageURL), completed: nil)
    }
    private func setupImageView() {
        movieImageView.layer.cornerRadius = movieImageView.frame.height / 2
        movieImageView.layer.masksToBounds = true
        movieImageView.layer.borderColor = UIColor.black.cgColor
        movieImageView.layer.borderWidth = 2
    }

    
}
