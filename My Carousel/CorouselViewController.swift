//
//  CorouselViewController.swift
//  My Carousel
//
//  Created by GGS-BKS on 29/09/22.
//

import Foundation
import UIKit

class CorouselViewController: UIViewController , UITableViewDataSource{

    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self,
                       forCellReuseIdentifier: CollectionTableViewCell.identifier)
        return table
    }()
    
    private let viewModels : [CollectionTableViewCellViewModel] = [
    CollectionTableViewCellViewModel(
    viewModels: [
        TileCollectionViewCellViewModel(name: "Apple", backgrounColor: .systemRed),
        TileCollectionViewCellViewModel(name: "Suzuki", backgrounColor: .systemBlue),
        TileCollectionViewCellViewModel(name: "Dell", backgrounColor: .systemCyan),
        TileCollectionViewCellViewModel(name: "Google", backgrounColor: .systemGreen),
        TileCollectionViewCellViewModel(name: "Facebook", backgrounColor: .systemYellow)
        ]
    )
]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewModel = viewModels[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CollectionTableViewCell.identifier,
            for: indexPath
        ) as? CollectionTableViewCell else {
            fatalError()
        }
        cell.configure(with: viewModel)
        return cell
    }

}
