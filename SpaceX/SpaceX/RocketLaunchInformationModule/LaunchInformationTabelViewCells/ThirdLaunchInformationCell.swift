//
//  ThirdLaunchInformationCell.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 19.02.2023.
//

import UIKit

final class ThirdLaunchInformationCell: UITableViewCell {
    
    static let reuseId = "ThirdLaunchInformationCell"
    var launchNameLabel3 = UILabel()
    var launchDateLabel3 = UILabel()
    var successfulOrNotSuccessfulLaunchImageView3 = UIImageView()
    var launchContantView3 = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: Self.reuseId)
        
        setupUI()
        setupLaunchNameLabel3()
        setupLaunchContantView3()
        setupLaunchDateLabel3()
        setupSuccessfulOrNotSuccessfulLaunchImageView3()
        
        launchContantView3.translatesAutoresizingMaskIntoConstraints = false
        launchNameLabel3.translatesAutoresizingMaskIntoConstraints = false
        launchDateLabel3.translatesAutoresizingMaskIntoConstraints = false
        successfulOrNotSuccessfulLaunchImageView3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            launchContantView3.topAnchor.constraint(equalTo: contentView.topAnchor),
            launchContantView3.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            launchContantView3.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            launchContantView3.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
            
            launchNameLabel3.topAnchor.constraint(equalTo: launchContantView3.topAnchor, constant: 24),
            launchNameLabel3.leadingAnchor.constraint(equalTo: launchContantView3.leadingAnchor, constant: 24),

            successfulOrNotSuccessfulLaunchImageView3.topAnchor.constraint(equalTo: launchContantView3.topAnchor, constant: 35),
            successfulOrNotSuccessfulLaunchImageView3.leadingAnchor.constraint(equalTo: launchContantView3.leadingAnchor, constant: 248),
            successfulOrNotSuccessfulLaunchImageView3.widthAnchor.constraint(equalToConstant: 30),
            successfulOrNotSuccessfulLaunchImageView3.heightAnchor.constraint(equalToConstant: 30),
            
            launchDateLabel3.topAnchor.constraint(equalTo: launchContantView3.topAnchor, constant: 52),
            launchDateLabel3.leadingAnchor.constraint(equalTo: launchContantView3.leadingAnchor, constant: 24),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(launchContantView3)
        launchContantView3.addSubview(launchNameLabel3)
        launchContantView3.addSubview(launchDateLabel3)
        launchContantView3.addSubview(successfulOrNotSuccessfulLaunchImageView3)
    }
    
    func setupLaunchContantView3() {
        launchContantView3.layer.cornerRadius = 24
        launchContantView3.backgroundColor = UIColor(displayP3Red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
    }
    
    func setupLaunchNameLabel3() {
        launchNameLabel3.text = "CRS-24 Mission"
        launchNameLabel3.font = .systemFont(ofSize: 20)
        launchNameLabel3.textColor = UIColor.white
    }

    func setupLaunchDateLabel3() {
        launchDateLabel3.text = "23 декабря, 2021"
        launchDateLabel3.font = .systemFont(ofSize: 16)
        launchDateLabel3.textColor = UIColor.white
    }
    
    func setupSuccessfulOrNotSuccessfulLaunchImageView3() {
        successfulOrNotSuccessfulLaunchImageView3.image = UIImage(named: "rocket-24-2")
    }
    
}
