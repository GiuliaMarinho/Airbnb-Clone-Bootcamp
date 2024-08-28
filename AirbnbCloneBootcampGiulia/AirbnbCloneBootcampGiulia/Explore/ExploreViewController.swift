//
//  ViewController.swift
//  AirbnbCloneBootcampGiulia
//
//  Created by Giulia Marinho on 05/08/24.
//

import Foundation
import UIKit

class ExploreViewController: UIViewController {

  var screen: ExploreScreen?
  var viewModel = ExploreViewModel()

  override func loadView() {
    screen = ExploreScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    screen?.configCollectionViewProtocols(delegate: self, dataSource: self)
    screen?.configTableViewProtocols(delegate: self, dataSource: self)
  }
}

extension ExploreViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return viewModel.numberOfItems
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell
    cell?.setupCell(travelCategory: viewModel.loadCurrentTravelCategory(indexPath: indexPath))
    return cell ?? UICollectionViewCell()
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CategoryCollectionViewCell.calculateSize(title: viewModel.getCategory(indexPath: indexPath))
  }

  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    // Verificando se é o mesmo item já selecionado!
    guard viewModel.getSelectedCategoryIndex != indexPath.row else { return }
    // Se passou da validação -> é item diferente do selecionado!

    // Item antigo selecionado
    let oldIndexPath = IndexPath(row: viewModel.getSelectedCategoryIndex, section: 0)

    // Mudando o item selecionado de acordo como indexPath(posição que o usuário clicou para selecionar)
    viewModel.setSelectedCategory(indexPath: indexPath)

    // Atualizando a posição ANTIGA e ATUALIZANDO a posição que o usuário selecionou
    collectionView.reloadItems(at: [oldIndexPath, indexPath])
    collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
  }
}

extension ExploreViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }
}

