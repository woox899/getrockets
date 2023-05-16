//
//  MainVCFirstLaunchCell.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 17.01.2023.
//

import UIKit

final class MainVCRocketInformationBlockCell: UITableViewCell {
    static let reuseID = "MainVCRocketInformationBlockCell"
    
    //MARK: - заголовки значений
    let firstLaunchLabel = UILabel()
    let dateFirstLaunchLabel = UILabel()
    let nationLaunchLabel = UILabel()
    
    //MARK: - значения
    let countryLabel = UILabel()
    let launchCostLabel = UILabel()
    let coastLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: Self.reuseID)
        
        setupUI()
        setupfirstLaunchLabel()
        setupNationLaunchLabel()
        setuplaunchCostLabel()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(firstLaunchLabel)
        contentView.addSubview(nationLaunchLabel)
        contentView.addSubview(launchCostLabel)
        contentView.addSubview(dateFirstLaunchLabel)
        contentView.addSubview(countryLabel)
        contentView.addSubview(coastLabel)
        
        firstLaunchLabel.translatesAutoresizingMaskIntoConstraints = false
        nationLaunchLabel.translatesAutoresizingMaskIntoConstraints = false
        launchCostLabel.translatesAutoresizingMaskIntoConstraints = false
        dateFirstLaunchLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        coastLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            firstLaunchLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            firstLaunchLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40),
            
            nationLaunchLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            nationLaunchLabel.topAnchor.constraint(equalTo: firstLaunchLabel.bottomAnchor, constant: 16),
            
            launchCostLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            launchCostLabel.topAnchor.constraint(equalTo: nationLaunchLabel.bottomAnchor, constant: 16),
            
            dateFirstLaunchLabel.leadingAnchor.constraint(equalTo: firstLaunchLabel.trailingAnchor, constant: 25),
            dateFirstLaunchLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40),
            dateFirstLaunchLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
            
            countryLabel.leadingAnchor.constraint(equalTo: nationLaunchLabel.trailingAnchor, constant: 25),
            countryLabel.topAnchor.constraint(equalTo: dateFirstLaunchLabel.bottomAnchor, constant: 16),
            countryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
            
            coastLabel.leadingAnchor.constraint(equalTo: launchCostLabel.trailingAnchor, constant: 25),
            coastLabel.topAnchor.constraint(equalTo: countryLabel.bottomAnchor, constant: 16),
            coastLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32)
        ])
    }
    
    func setupfirstLaunchLabel() {
        firstLaunchLabel.text = "Первый запуск"
        firstLaunchLabel.textColor = .white
        firstLaunchLabel.font = .systemFont(ofSize: 16)
    }
    
    func setupNationLaunchLabel() {
        nationLaunchLabel.text = "Страна"
        nationLaunchLabel.textColor = .white
        nationLaunchLabel.font = .systemFont(ofSize: 16)
    }
    
    func setuplaunchCostLabel() {
        launchCostLabel.text = "Стоимость запуска"
        launchCostLabel.textColor = .white
        launchCostLabel.font = .systemFont(ofSize: 16)
    }
    
    func setupDateFirstLaunchLabel(text: String) {
        dateFirstLaunchLabel.text = text
        dateFirstLaunchLabel.textColor = .white
        dateFirstLaunchLabel.font = .systemFont(ofSize: 16)
        dateFirstLaunchLabel.textAlignment = .right
       
    }
    
    func setupCountryLabel(text: String) {
        countryLabel.text = text
        countryLabel.textColor = .white
        countryLabel.font = .systemFont(ofSize: 16)
        countryLabel.textAlignment = .right
    }
    
    func setupCoastLabel(text: String) {
        coastLabel.text = text
        coastLabel.textColor = .white
        coastLabel.font = .systemFont(ofSize: 16)
        coastLabel.textAlignment = .right
    }
}
