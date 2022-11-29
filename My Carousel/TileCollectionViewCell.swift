//
//  TileCollectionViewCell.swift
//  My Carousel
//
//  Created by GGS-BKS on 29/09/22.
//

import UIKit

struct TileCollectionViewCellViewModel{
    let name: String
    let backgrounColor: UIColor
}
class TileCollectionViewCell: UICollectionViewCell {
    static let identifier = "TileCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    func configure(with viewModel: TileCollectionViewCellViewModel){
        contentView.backgroundColor = viewModel.backgrounColor
    }
}

