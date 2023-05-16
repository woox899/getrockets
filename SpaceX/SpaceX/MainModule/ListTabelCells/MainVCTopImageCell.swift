//
//  MainVCTopImageCell.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 13.01.2023.
//

import UIKit

final class MainVCTopImageCell: UITableViewCell {
    let topImageView = UIImageView()
    
    static let reuseId = "MainVCTopImageCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: Self.reuseId)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        
        contentView.addSubview(topImageView)
        
        topImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            topImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            topImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            topImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            topImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        
    }
    func setImage() {
        topImageView.image = UIImage(named: "falconHeavy")
        
    }
}


