//
//  MainViewController.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 28.12.2022.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {
    
    private lazy var listTabelView:  UITableView = {
        let view = UITableView(frame: view.bounds, style: .plain)
        
        view.register(MainVCTopImageCell.self, forCellReuseIdentifier: MainVCTopImageCell.reuseId)
        view.register(MainVCCarouselTableViewCell.self, forCellReuseIdentifier: MainVCCarouselTableViewCell.reuseId)
        view.register(MainVCSettingsCell.self, forCellReuseIdentifier: MainVCSettingsCell.reuseID)
        view.register(MainVCRocketInformationBlockCell.self, forCellReuseIdentifier: MainVCRocketInformationBlockCell.reuseID)
        view.register(MainVCRocketInformationBlockCell.self, forCellReuseIdentifier: MainVCRocketInformationBlockCell.reuseID)
        view.register(TheFirstStageRocketInfoCell.self, forCellReuseIdentifier: TheFirstStageRocketInfoCell.reuseID)
        view.register(TheSecondStageRocketInfoCell.self, forCellReuseIdentifier: TheSecondStageRocketInfoCell.reuseID)
        view.register(ViewinglaunchesCell.self, forCellReuseIdentifier: ViewinglaunchesCell.reuseID)
        view.delegate = self
        view.dataSource = self
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
 // когда будет пейдж,  будет мвссив моделей ракет,  на данный момент ниже 1 ракета
    private var rocketInfoModel: [RocketsInfoModel] = [RocketsInfoModel(name: "", firstFlight: "", country: "", costPerLaunch: Int(), firstStage: FirstStage(fuelAmountTons: Double(), burnTimeSEC: Int(), engines: Int()), secondStage: SecondStage(engines: Int(), fuelAmountTons: Double(), burnTimeSEC: Int()), diameter: Diameter(meters: Double(), feet: Double()))]
    
    private let pageControl: UIPageControl = {
        let rocketPageControl = UIPageControl()
        rocketPageControl.numberOfPages = 4
        rocketPageControl.backgroundColor = UIColor.red
        rocketPageControl.currentPage = Int()
        rocketPageControl.translatesAutoresizingMaskIntoConstraints = false
        return rocketPageControl
    }()
    
    private let scrollView: UIScrollView = {
        let rocketSrcollView = UIScrollView()
        rocketSrcollView.backgroundColor = UIColor.green
        rocketSrcollView.translatesAutoresizingMaskIntoConstraints = false
        rocketSrcollView.isPagingEnabled = true
        return rocketSrcollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        view.addSubview(scrollView)
        scrollView.addSubview(pageControl)
        pageControl.addSubview(listTabelView)
        
        NSLayoutConstraint.activate ([
            //MARK: - listTabelViewAnchors
            listTabelView.topAnchor.constraint(equalTo: view.topAnchor),
            listTabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            listTabelView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            listTabelView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            pageControl.topAnchor.constraint(equalTo: view.topAnchor),
            pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            pageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        // дернуть метод поллдучения ракет вот так:
        MainService.getRockets() { [weak self] model in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.rocketInfoModel = model
                self.listTabelView.reloadData()
            }
        }
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //        navigationItem.hid // скрыть навигейшин
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rocketInfoModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell {
            switch indexPath.row {
            case 0:
                let imageCell = listTabelView.dequeueReusableCell(withIdentifier: MainVCTopImageCell.reuseId, for: indexPath) as! MainVCTopImageCell
                imageCell.setImage()
                return imageCell
                
            case 1:
                let settingsCell = listTabelView.dequeueReusableCell(withIdentifier: MainVCSettingsCell.reuseID, for: indexPath) as! MainVCSettingsCell
                settingsCell.backgroundColor = .black
                settingsCell.setupRocketNameLabel(text: rocketInfoModel[pageControl.currentPage].name)
                settingsCell.settingsButton.addTarget(self, action: #selector(goToParameterSettingsViewController), for: .touchUpInside)
                // залетает название ракеты
                return settingsCell
                
            case 2:
                let collectionCell = listTabelView.dequeueReusableCell(withIdentifier: MainVCCarouselTableViewCell.reuseId, for: indexPath) as! MainVCCarouselTableViewCell
                // сгенерить коллекцию с данными
                return collectionCell
                
            case 3:
                let infoRocketCell = listTabelView.dequeueReusableCell(withIdentifier: MainVCRocketInformationBlockCell.reuseID, for: indexPath) as! MainVCRocketInformationBlockCell
                infoRocketCell.backgroundColor = .black
                infoRocketCell.setupDateFirstLaunchLabel(text: rocketInfoModel[pageControl.currentPage].firstFlight)
                infoRocketCell.setupCountryLabel(text: rocketInfoModel[pageControl.currentPage].country)
                infoRocketCell.setupCoastLabel(text: String(rocketInfoModel[pageControl.currentPage].costPerLaunch))
                return infoRocketCell
                // приходит дата первого запуска
                
            case 4:
                let theFirstStageRocketInfoCell = listTabelView.dequeueReusableCell(withIdentifier: TheFirstStageRocketInfoCell.reuseID, for: indexPath) as! TheFirstStageRocketInfoCell
                theFirstStageRocketInfoCell.backgroundColor = .black
                theFirstStageRocketInfoCell.setupNumbeOfEnginesValueLabel(text: String(rocketInfoModel[pageControl.currentPage].firstStage.engines))
                theFirstStageRocketInfoCell.setupFuelCuantityValueLabel(text: String(rocketInfoModel[pageControl.currentPage].firstStage.fuelAmountTons))
                if let burnTime = rocketInfoModel[pageControl.currentPage].firstStage.burnTimeSEC {
                    theFirstStageRocketInfoCell.setupCombustionTimeValueLabel(text: String(burnTime))
                }
                return theFirstStageRocketInfoCell
                
            case 5:
                let theSecondStageRocketInfoCell = listTabelView.dequeueReusableCell(withIdentifier: TheSecondStageRocketInfoCell.reuseID, for: indexPath) as! TheSecondStageRocketInfoCell
                theSecondStageRocketInfoCell.backgroundColor = .black
                theSecondStageRocketInfoCell.setupNumbeOfEnginesValueLabel2(text: String(rocketInfoModel[pageControl.currentPage].secondStage.engines))
                theSecondStageRocketInfoCell.setupFuelCuantityValueLabel2(text: String(rocketInfoModel[pageControl.currentPage].secondStage.fuelAmountTons))
                if let burnTime1 = rocketInfoModel[pageControl.currentPage].secondStage.burnTimeSEC {
                    theSecondStageRocketInfoCell.setupCombustionTimeValueLabel2(text: String(burnTime1))
                }
                return theSecondStageRocketInfoCell
                
            case 6:
                let viewinglaunchesCell = listTabelView.dequeueReusableCell(withIdentifier: ViewinglaunchesCell.reuseID, for: indexPath) as! ViewinglaunchesCell
                viewinglaunchesCell.backgroundColor = .black
                viewinglaunchesCell.viewinglaunchesButton.addTarget(self, action: #selector(goToRocketLaunchInformationViewController), for: .touchUpInside)
                return viewinglaunchesCell
                
            default:
                return UITableViewCell()
            }
        }
        return cell
    }
    
    @objc private func goToRocketLaunchInformationViewController() {
        let vc = RocketLaunchInformationViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func goToParameterSettingsViewController() {
        let vc = ParameterSettingsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
//    @objc private func getLaunches() {
//        let launches: LaunchInfoModel = MainService.getLaunches()
//        print(launches)
        // тут ты получил запуски по рокете, инитишь второй экран и переход на него с передачей запусков параметрами
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 300
        case 1:
            return 112
        case 2:
            return 96
        case 3:
            return 184
        case 4:
            return 184
        case 5:
            return 184
        case 6:
            return 100
        default:
            return 0
        }
    }
}

