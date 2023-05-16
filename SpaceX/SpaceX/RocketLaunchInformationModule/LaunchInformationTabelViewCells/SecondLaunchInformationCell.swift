//
//  SecondLaunchInformationCell.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 19.02.2023.
//

import UIKit

final class SecondLaunchInformationCell: UITableViewCell {
    
    static let reuseId = "SecondLaunchInformationCell"
    var launchNameLabel2 = UILabel()
    var launchDateLabel2 = UILabel()
    var successfulOrNotSuccessfulLaunchImageView2 = UIImageView()
    var launchContantView2 = UIView()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: Self.reuseId)
        
        setupUI()
        setupLaunchNameLabel2()
        setupLaunchContantView2()
        setupLaunchDateLabel2()
        setupSuccessfulOrNotSuccessfulLaunchImageView2()
    }
   
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(launchContantView2)
        launchContantView2.addSubview(launchNameLabel2)
        launchContantView2.addSubview(launchDateLabel2)
        launchContantView2.addSubview(successfulOrNotSuccessfulLaunchImageView2)
        
        launchContantView2.translatesAutoresizingMaskIntoConstraints = false
        launchNameLabel2.translatesAutoresizingMaskIntoConstraints = false
        launchDateLabel2.translatesAutoresizingMaskIntoConstraints = false
        successfulOrNotSuccessfulLaunchImageView2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            launchContantView2.topAnchor.constraint(equalTo: contentView.topAnchor),
            launchContantView2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            launchContantView2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            launchContantView2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
            
            launchNameLabel2.topAnchor.constraint(equalTo: launchContantView2.topAnchor, constant: 24),
            launchNameLabel2.leadingAnchor.constraint(equalTo: launchContantView2.leadingAnchor, constant: 24),

            successfulOrNotSuccessfulLaunchImageView2.topAnchor.constraint(equalTo: launchContantView2.topAnchor, constant: 35),
            successfulOrNotSuccessfulLaunchImageView2.leadingAnchor.constraint(equalTo: launchContantView2.leadingAnchor, constant: 248),
            successfulOrNotSuccessfulLaunchImageView2.widthAnchor.constraint(equalToConstant: 30),
            successfulOrNotSuccessfulLaunchImageView2.heightAnchor.constraint(equalToConstant: 30),
            
            launchDateLabel2.topAnchor.constraint(equalTo: launchContantView2.topAnchor, constant: 52),
            launchDateLabel2.leadingAnchor.constraint(equalTo: launchContantView2.leadingAnchor, constant: 24),

        ])
    }
    
    func setupLaunchContantView2 () {
        launchContantView2.backgroundColor = UIColor(displayP3Red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
        launchContantView2.layer.cornerRadius = 24
    }
    
    func setupLaunchNameLabel2 () {
        launchNameLabel2.text = "Heavy holidays"
        launchNameLabel2.font = .systemFont(ofSize: 20)
        launchNameLabel2.textColor = UIColor.white
    }
    
    func setupLaunchDateLabel2 () {
        launchDateLabel2.text = "6 января, 2022"
        launchDateLabel2.font = .systemFont(ofSize: 16)
        launchDateLabel2.textColor = UIColor.white
    }
    
    func setupSuccessfulOrNotSuccessfulLaunchImageView2 () {
        successfulOrNotSuccessfulLaunchImageView2.image = UIImage(named: "rocket-24")
    }
}
