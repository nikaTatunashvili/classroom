//
//  ViewController.swift
//  classroom.project
//
//  Created by Teo Elisashvili on 21.12.20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var headerButton: UIButton!
    @IBOutlet var collectionViews: [UICollectionView]!
    
    private let cellItemIdentifier = "WoltItemCell"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Wolt"
        collectionViews.forEach(setup)
        
    }
    
    
    func setup(_ collectionView: UICollectionView) {
        collectionView.register(UINib(nibName: cellItemIdentifier, bundle: nil), forCellWithReuseIdentifier: cellItemIdentifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.scrollDirection = .horizontal
        collectionView.showsHorizontalScrollIndicator = false
        layout?.estimatedItemSize = .zero
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let cell = cell as? WoltItemCell
        cell?.setup(indexPath)
    }
        
    
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        collectionView.dequeueReusableCell(withReuseIdentifier: cellItemIdentifier, for: indexPath)
    }
}
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            CGSize(width: collectionView.frame.width / 3 - 1, height: collectionView.frame.height - 10)
    }
}
