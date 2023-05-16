//
//  ParameterSettingsViewController.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 20.02.2023.
//

import UIKit

class ParameterSettingsViewController: UIViewController {
    
    var heightSigmentControl = UISegmentedControl()
    var heightSigmentControlArray = ["m", "ft"]

    var diametrSigmentControl = UISegmentedControl()
    var diametrSigmentControlArray = ["m", "ft"]
    
    var massSigmentControl = UISegmentedControl()
    var massSigmentControlArray = ["kg", "lb"]
    
    var payloadSigmentControl = UISegmentedControl()
    var payloadSigmentControlArray = ["kg", "lb"]
    
    let heightSigmentControlLabel = UILabel()
    let diametrSigmentControlLabel = UILabel()
    let massSigmentControlLabel = UILabel()
    let payloadSigmentControlLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black
        
        heightSigmentControl = UISegmentedControl(items: heightSigmentControlArray)
        diametrSigmentControl = UISegmentedControl(items: diametrSigmentControlArray)
        massSigmentControl = UISegmentedControl(items: massSigmentControlArray)
        payloadSigmentControl = UISegmentedControl(items: payloadSigmentControlArray)
        
        setupUI()
        setupHeightSigmentControl()
        setupDiametrSigmentControl()
        setupMassSigmentControl()
        setupPayloadSigmentControl()
    }
    
    func setupUI() {
        
        view.addSubview(heightSigmentControl)
        view.addSubview(diametrSigmentControl)
        view.addSubview(massSigmentControl)
        view.addSubview(payloadSigmentControl)
        view.addSubview(heightSigmentControlLabel)
        view.addSubview(diametrSigmentControlLabel)
        view.addSubview(massSigmentControlLabel)
        view.addSubview(payloadSigmentControlLabel)
        
        heightSigmentControl.translatesAutoresizingMaskIntoConstraints = false
        diametrSigmentControl.translatesAutoresizingMaskIntoConstraints = false
        massSigmentControl.translatesAutoresizingMaskIntoConstraints = false
        payloadSigmentControl.translatesAutoresizingMaskIntoConstraints = false
        
        heightSigmentControlLabel.translatesAutoresizingMaskIntoConstraints = false
        diametrSigmentControlLabel.translatesAutoresizingMaskIntoConstraints = false
        massSigmentControlLabel.translatesAutoresizingMaskIntoConstraints = false
        payloadSigmentControlLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            heightSigmentControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 112),
            heightSigmentControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 232),
            heightSigmentControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            
            diametrSigmentControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 176),
            diametrSigmentControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 232),
            diametrSigmentControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            
            massSigmentControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 240),
            massSigmentControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 232),
            massSigmentControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            
            payloadSigmentControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 304),
            payloadSigmentControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 232),
            payloadSigmentControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            
            heightSigmentControlLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            heightSigmentControlLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            
            diametrSigmentControlLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 184),
            diametrSigmentControlLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            
            massSigmentControlLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 248),
            massSigmentControlLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            
            payloadSigmentControlLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 312),
            payloadSigmentControlLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            
        ])
    }
    
    func setupHeightSigmentControl() {
        heightSigmentControlLabel.text = "Высота"
        heightSigmentControlLabel.textColor = UIColor.white
        heightSigmentControlLabel.font = .systemFont(ofSize: 16)
        heightSigmentControl.backgroundColor = UIColor(displayP3Red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
    }
    
    func setupDiametrSigmentControl() {
        diametrSigmentControlLabel.text = "Диаметр"
        diametrSigmentControlLabel.textColor = UIColor.white
        diametrSigmentControlLabel.font = .systemFont(ofSize: 16)
        diametrSigmentControl.backgroundColor = UIColor(displayP3Red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
    }
    
    func setupMassSigmentControl() {
        massSigmentControlLabel.text = "Масса"
        massSigmentControlLabel.textColor = UIColor.white
        massSigmentControlLabel.font = .systemFont(ofSize: 16)
        massSigmentControl.backgroundColor = UIColor(displayP3Red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
    }
    
    func setupPayloadSigmentControl() {
        payloadSigmentControlLabel.text = "Полезная нагрузка"
        payloadSigmentControlLabel.textColor = UIColor.white
        payloadSigmentControlLabel.font = .systemFont(ofSize: 16)
        payloadSigmentControl.backgroundColor = UIColor(displayP3Red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
    }
    
    
}
