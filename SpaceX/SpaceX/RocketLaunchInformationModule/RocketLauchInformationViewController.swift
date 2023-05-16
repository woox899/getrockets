//
//  RocketLauchInformationViewController.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 16.02.2023.
//

import UIKit

class RocketLaunchInformationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private lazy var launchInformationTabelView: UITableView = {
        let view = UITableView(frame: view.bounds, style: .plain)
        view.register(FirstLaunchInformationCell.self, forCellReuseIdentifier: FirstLaunchInformationCell.reuseId)
        view.register(SecondLaunchInformationCell.self, forCellReuseIdentifier: SecondLaunchInformationCell.reuseId)
        view.register(ThirdLaunchInformationCell.self, forCellReuseIdentifier: ThirdLaunchInformationCell.reuseId)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.black
        view.delegate = self
        view.dataSource = self
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(launchInformationTabelView)
        
        NSLayoutConstraint.activate([
            launchInformationTabelView.topAnchor.constraint(equalTo: view.topAnchor),
            launchInformationTabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            launchInformationTabelView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            launchInformationTabelView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell {
            switch indexPath.row {
                
            case 0:
                let firstLaunchInformationCell = launchInformationTabelView.dequeueReusableCell(withIdentifier: FirstLaunchInformationCell.reuseId, for: indexPath) as! FirstLaunchInformationCell
                firstLaunchInformationCell.backgroundColor = UIColor.black
                return firstLaunchInformationCell
                
            case 1:
                let secondLaunchInformationCell = launchInformationTabelView.dequeueReusableCell(withIdentifier: SecondLaunchInformationCell.reuseId, for: indexPath) as! SecondLaunchInformationCell
                secondLaunchInformationCell.backgroundColor = UIColor.black
                return secondLaunchInformationCell
                
            case 2:
                let thirdLaunchInformationCell = launchInformationTabelView.dequeueReusableCell(withIdentifier: ThirdLaunchInformationCell.reuseId, for: indexPath) as! ThirdLaunchInformationCell
                thirdLaunchInformationCell.backgroundColor = UIColor.black
                return thirdLaunchInformationCell
            default:
                return UITableViewCell()
            }
        }
        return cell
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 156
        case 1:
            return 116
        case 2:
            return 116
        default:
            return 0
        }
    }
}
