//
//  TheFirstStageRocketInfoCell.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 23.01.2023.
//

import UIKit

final class TheFirstStageRocketInfoCell: UITableViewCell {
    static let reuseID = "TheFirstStageRocketInfoCell"
    
    //MARK: - заголовки значений
    let mainLabel = UILabel()
    let numbeOfEnginesLabel = UILabel()
    let fuelCuantityLabel = UILabel()
    let combustionTimeLabel = UILabel()
    
    //MARK: - значения
    let numbeOfEnginesValueLabel = UILabel()
    let fuelCuantityValueLabel = UILabel()
    let combustionTimeValueLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: Self.reuseID)
        
        setupUI()
        setupMainLabel()
        setupNumbeOfEnginesLabel()
        setupFuelCuantityLabel()
        setupCombustionTimeLabel()
        
      
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(mainLabel)
        contentView.addSubview(numbeOfEnginesLabel)
        contentView.addSubview(fuelCuantityLabel)
        contentView.addSubview(combustionTimeLabel)
        contentView.addSubview(numbeOfEnginesValueLabel)
        contentView.addSubview(fuelCuantityValueLabel)
        contentView.addSubview(combustionTimeValueLabel)
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        numbeOfEnginesLabel.translatesAutoresizingMaskIntoConstraints = false
        fuelCuantityLabel.translatesAutoresizingMaskIntoConstraints = false
        combustionTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        numbeOfEnginesValueLabel.translatesAutoresizingMaskIntoConstraints = false
        fuelCuantityValueLabel.translatesAutoresizingMaskIntoConstraints = false
        combustionTimeValueLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            mainLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
            mainLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
          
            numbeOfEnginesLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            numbeOfEnginesLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -167),
            numbeOfEnginesLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 16),
       
            fuelCuantityLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            fuelCuantityLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -167),
            fuelCuantityLabel.topAnchor.constraint(equalTo: numbeOfEnginesLabel.bottomAnchor, constant: 16),

            combustionTimeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            combustionTimeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -167),
            combustionTimeLabel.topAnchor.constraint(equalTo: fuelCuantityLabel.bottomAnchor, constant: 16),
            
            numbeOfEnginesValueLabel.leadingAnchor.constraint(equalTo: numbeOfEnginesLabel.trailingAnchor, constant: 19),
            numbeOfEnginesValueLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 16),
            numbeOfEnginesValueLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -68),
            
            fuelCuantityValueLabel.leadingAnchor.constraint(equalTo: fuelCuantityLabel.trailingAnchor, constant: 19),
            fuelCuantityValueLabel.topAnchor.constraint(equalTo: numbeOfEnginesValueLabel.bottomAnchor, constant: 16),
            fuelCuantityValueLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -68),
            
            combustionTimeValueLabel.leadingAnchor.constraint(equalTo: combustionTimeLabel.trailingAnchor, constant: 19),
            combustionTimeValueLabel.topAnchor.constraint(equalTo: fuelCuantityValueLabel.bottomAnchor, constant: 16),
            combustionTimeValueLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -68)
        ])
    }
    
    func setupMainLabel() {
        mainLabel.text = "Первая ступень"
        mainLabel.textColor = .white
        mainLabel.font = .systemFont(ofSize: 22)
    }
    
    func setupNumbeOfEnginesLabel() {
        numbeOfEnginesLabel.text = "Количество двигателей"
        numbeOfEnginesLabel.textColor = .white
        numbeOfEnginesLabel.font = .systemFont(ofSize: 16)
        numbeOfEnginesLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupFuelCuantityLabel() {
        fuelCuantityLabel.text = "Количество топлива"
        fuelCuantityLabel.textColor = .white
        fuelCuantityLabel.font = .systemFont(ofSize: 16)
    }
    
    func setupCombustionTimeLabel() {
        combustionTimeLabel.text = "Время сгорания"
        combustionTimeLabel.textColor = .white
        combustionTimeLabel.font = .systemFont(ofSize: 16)
    }
    
    func setupNumbeOfEnginesValueLabel(text: String) {
        numbeOfEnginesValueLabel.text = text
        numbeOfEnginesValueLabel.textColor = .white
        numbeOfEnginesValueLabel.font = .systemFont(ofSize: 16)
        numbeOfEnginesValueLabel.textAlignment = .right
    }
    
    func setupFuelCuantityValueLabel(text: String) {
        fuelCuantityValueLabel.text = text
        fuelCuantityValueLabel.textColor = .white
        fuelCuantityValueLabel.font = .systemFont(ofSize: 16)
        fuelCuantityValueLabel.textAlignment = .right
    }
    
    func setupCombustionTimeValueLabel(text: String) {
        combustionTimeValueLabel.text = text
        combustionTimeValueLabel.textColor = .white
        combustionTimeValueLabel.font = .systemFont(ofSize: 16)
        combustionTimeValueLabel.textAlignment = .right
        
    }
}
