//
//  MainVCSettingsCell.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 17.01.2023.
//

import UIKit

final class MainVCSettingsCell: UITableViewCell {
    static let reuseID = "MainVCSettingsCell"
    
    private var rocketNameLabel = UILabel()
    var settingsButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: Self.reuseID)
        
        setupUI()
        setupSettingsButton()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        
        contentView.addSubview(settingsButton)
        contentView.addSubview(rocketNameLabel)

        contentView.layer.cornerRadius = 20
        
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        rocketNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            rocketNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            rocketNameLabel.trailingAnchor.constraint(equalTo: settingsButton.leadingAnchor, constant: -20),
            rocketNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 48),
            rocketNameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -32),
            
            settingsButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -35),
            settingsButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50),
            settingsButton.heightAnchor.constraint(equalToConstant: 25),
            settingsButton.widthAnchor.constraint(equalToConstant: 25)
        ])
        
    }
    
    func setupSettingsButton() {
        settingsButton.setImage(UIImage(named: "Setting"), for: .normal)

    }
    
    func setupRocketNameLabel(text: String) {
        rocketNameLabel.text = text
        rocketNameLabel.textColor = .white
        rocketNameLabel.font = .systemFont(ofSize: 24)
    
    }
}
