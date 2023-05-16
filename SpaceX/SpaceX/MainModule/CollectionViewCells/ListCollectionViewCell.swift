//
//  ListCollectionViewCell.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 30.12.2022.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "GallaryCollectionViewCell"
    
    let characteristicsView: UIView = {
        let characteristicsView = UIView()
        characteristicsView.backgroundColor = UIColor(displayP3Red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
        characteristicsView.layer.cornerRadius = 32
        characteristicsView.translatesAutoresizingMaskIntoConstraints = false
        return characteristicsView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(characteristicsView)
        
        NSLayoutConstraint.activate([
            //MARK: - characteristicsViewAnchors
            characteristicsView.leadingAnchor.constraint(equalTo: leadingAnchor),
            characteristicsView.trailingAnchor.constraint(equalTo: trailingAnchor),
            characteristicsView.topAnchor.constraint(equalTo: topAnchor),
            characteristicsView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
    }
}
