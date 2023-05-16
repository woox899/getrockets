//
//  ViewinglaunchesCell.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 25.01.2023.
//

import UIKit

final class ViewinglaunchesCell: UITableViewCell {
    static let reuseID = "ViewinglaunchesCell"
    
    let viewinglaunchesButton = UIButton()
      
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: Self.reuseID)
        
        setupUI()
        setupViewinglaunchesButton()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        
        contentView.addSubview(viewinglaunchesButton)
        
        viewinglaunchesButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            viewinglaunchesButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            viewinglaunchesButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            viewinglaunchesButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            viewinglaunchesButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupViewinglaunchesButton() {
        
        viewinglaunchesButton.setTitle("Посмотреть запуски", for: .normal)
        viewinglaunchesButton.backgroundColor = UIColor(displayP3Red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
        viewinglaunchesButton.titleLabel?.textColor = .white
        viewinglaunchesButton.layer.cornerRadius = 8
    }
}
