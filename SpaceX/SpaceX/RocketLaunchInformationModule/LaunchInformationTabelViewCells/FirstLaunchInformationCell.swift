//
//  FirstLaunchInformationCell.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 17.02.2023.
//

import UIKit

final class FirstLaunchInformationCell: UITableViewCell {
    
    static let reuseId = "FirstLaunchInformationCell"
    var launchNameLabel = UILabel()
    var launchDateLabel = UILabel()
    var successfulOrNotSuccessfulLaunchImageView = UIImageView()
    var launchContantView = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: Self.reuseId)
        
        setupUI()
        setupLaunchNameLabel()
        setupLaunchContantView()
        setupSuccessfulOrNotSuccessfulLaunchImageView()
        setupLaunchDateLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(launchContantView)
        launchContantView.addSubview(launchNameLabel)
        launchContantView.addSubview(successfulOrNotSuccessfulLaunchImageView)
        launchContantView.addSubview(launchDateLabel)
        
        launchNameLabel.translatesAutoresizingMaskIntoConstraints = false
        launchContantView.translatesAutoresizingMaskIntoConstraints = false
        successfulOrNotSuccessfulLaunchImageView.translatesAutoresizingMaskIntoConstraints = false
        launchDateLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            launchContantView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40),
            launchContantView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            launchContantView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            launchContantView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
            
            launchNameLabel.topAnchor.constraint(equalTo: launchContantView.topAnchor, constant: 24),
            launchNameLabel.leadingAnchor.constraint(equalTo: launchContantView.leadingAnchor, constant: 24),

            successfulOrNotSuccessfulLaunchImageView.topAnchor.constraint(equalTo: launchContantView.topAnchor, constant: 35),
            successfulOrNotSuccessfulLaunchImageView.leadingAnchor.constraint(equalTo: launchContantView.leadingAnchor, constant: 248),
            successfulOrNotSuccessfulLaunchImageView.widthAnchor.constraint(equalToConstant: 30),
            successfulOrNotSuccessfulLaunchImageView.heightAnchor.constraint(equalToConstant: 30),
            
            launchDateLabel.topAnchor.constraint(equalTo: launchContantView.topAnchor, constant: 52),
            launchDateLabel.leadingAnchor.constraint(equalTo: launchContantView.leadingAnchor, constant: 24),

        ])
    }
    
    func setupLaunchNameLabel() {
        launchNameLabel.text = "FalconSat"
        launchNameLabel.font = .systemFont(ofSize: 20)
        launchNameLabel.textColor = UIColor.white
    }
    
    func setupLaunchContantView () {
        launchContantView.backgroundColor = UIColor(displayP3Red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
        launchContantView.layer.cornerRadius = 24
    }
    
    func setupSuccessfulOrNotSuccessfulLaunchImageView () {
        successfulOrNotSuccessfulLaunchImageView.image = UIImage(named: "rocket-24")
    }
    
    func setupLaunchDateLabel () {
        launchDateLabel.text = "2 февраля, 2022"
        launchDateLabel.font = .systemFont(ofSize: 16)
        launchDateLabel.textColor = UIColor.white
    }
}

