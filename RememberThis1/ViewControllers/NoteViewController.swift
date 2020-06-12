//
//  NoteViewController.swift
//  RememberThis1
//
//  Created by Marissa Gonzales on 6/11/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {

    enum Section {
        case main
    }

    var dataSource: UICollectionViewDiffableDataSource<Section, Int>! = nil

    @IBOutlet weak var addButtonOutlet: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDataSource()
        configureLayout()
        collectionView.reloadData()
    }

    //This is currently what's populating the collection view( Integers . It's a concept just released in iOS13
    private func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, Int>(collectionView: collectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, identifier: Int) -> UICollectionViewCell? in

            // Get a cell of the desired kind.
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: NoteCollectionViewCell.identifier,
                for: indexPath) as? NoteCollectionViewCell else { fatalError("Cannot create new cell") }

            // Cell view properties
            cell.noteLabel.text = "\(identifier)"
            cell.layer.borderWidth = 2.90
            cell.contentView.layer.borderColor = UIColor.white.cgColor
            cell.contentView.layer.masksToBounds = true
            cell.layer.shadowColor = self.randomColors().cgColor
            cell.layer.shadowOffset = CGSize(width: 10, height: 5)
            cell.layer.shadowRadius = 15.0
            cell.layer.shadowOpacity = 2.0
            cell.layer.cornerRadius = 15.0
            cell.backgroundColor = self.randomColors()

            return cell
        }

        // initial data (the Integers 0-30 populating collection view)
        var snapshot = NSDiffableDataSourceSnapshot<Section, Int>()
        snapshot.appendSections([.main])
        snapshot.appendItems(Array(0..<30))
        dataSource.apply(snapshot, animatingDifferences: false)
    }

    // It does what the fucking method name says
    func configureLayout() {
        collectionView.collectionViewLayout = createOneRowNestedGroupLayout()
    }


    // This is the method we're currently using in the method above that setsup the layout.
    func createOneRowNestedGroupLayout() -> UICollectionViewLayout {
        //2
        let leadingItem = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                               heightDimension: .fractionalHeight(1.0)))
        leadingItem.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)

        //3
        let trailingItem = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .fractionalHeight(0.7)))
        trailingItem.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)

        //4
        let trailingGroup = NSCollectionLayoutGroup.vertical(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                               heightDimension: .fractionalHeight(1.0)),
            subitem: trailingItem, count: 2)

        //5
        let nestedGroup = NSCollectionLayoutGroup.horizontal(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .fractionalHeight(0.5)),
            subitems: [leadingItem, trailingGroup])

        //6
        let section = NSCollectionLayoutSection(group: nestedGroup)
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }

    // This is another collection view setup. Currently not using it.
    func createTwoRowsNestedGroupLayout() -> UICollectionViewLayout {
        //2
        let leadingItem = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                               heightDimension: .fractionalHeight(1.0)))
        leadingItem.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)

        let trailingItem = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .fractionalHeight(0.5)))
        trailingItem.contentInsets = NSDirectionalEdgeInsets(top: 3, leading: 3, bottom: 3, trailing: 3)
        let trailingGroup = NSCollectionLayoutGroup.vertical(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                               heightDimension: .fractionalHeight(1.0)),
            subitem: trailingItem, count: 2)

        let topNestedGroup = NSCollectionLayoutGroup.horizontal(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .fractionalHeight(0.5)),
            subitems: [leadingItem, trailingGroup])

        //3
        let bottomNestedGroup = NSCollectionLayoutGroup.horizontal(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .fractionalHeight(0.5)),
            subitems: [trailingGroup, leadingItem])

        //4
        let nestedGroup = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                                                              heightDimension: .fractionalHeight(0.5)),
                                                           subitems: [topNestedGroup, bottomNestedGroup])
        nestedGroup.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
        let section = NSCollectionLayoutSection(group: nestedGroup)
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }


    // Called in collectionView to assign my color set to the cells
    func randomColors() -> UIColor {
        let myColors: [String] = [
            "MyYellow", "MyAqua", "MyOrange", "MyPink", "MyPurple", "MyTeal"
        ]
        let randomColor = myColors.randomElement()!
        guard let uiRandomColor = UIColor(named: randomColor) else { return UIColor(named: "BackgroundColor")!}

        return uiRandomColor
    }
}
