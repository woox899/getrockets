//
//  MainVCCarouselTableViewCell.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 16.01.2023.
//

import UIKit

final class MainVCCarouselTableViewCell: UITableViewCell {
    static let reuseId = "MainVCCarouselTableViewCell"
    
    private var listCollectionView = ListCollectioView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: Self.reuseId)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(listCollectionView)
        
        NSLayoutConstraint.activate([
            
            listCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            listCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            listCollectionView.topAnchor.constraint(equalTo: contentView.topAnchor),
            listCollectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            listCollectionView.heightAnchor.constraint(equalToConstant: 96)
        ])
        
    }
}
