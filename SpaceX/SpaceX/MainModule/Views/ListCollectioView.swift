//
//  ListCollectioView.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 30.12.2022.
//

import UIKit

class ListCollectioView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //var cells = [ListModel]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        backgroundColor = .black
        delegate = self
        dataSource = self
        register(ListCollectionViewCell.self, forCellWithReuseIdentifier: ListCollectionViewCell.reuseId)
        showsHorizontalScrollIndicator = false
        
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = 12
        contentInset = UIEdgeInsets(top: 0, left: 32, bottom: 0, right: 32)
    }
    
    //func set (cells: [ListModel]) {
        //self.cells = cells
   // }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: ListCollectionViewCell.reuseId, for: indexPath) as! ListCollectionViewCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 96, height: 96)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
