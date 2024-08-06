//
//  MainTabBarController.swift
//  AirbnbCloneBootcampGiulia
//
//  Created by Giulia Marinho on 05/08/24.
//

import Foundation

import UIKit

class MainTabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()
      view.backgroundColor = .white

    let tela01 = createNavController(viewController: ExploreViewController(), title: "Explorar", imageName: "magnifyingglass")
    let tela02 = createNavController(viewController: FavoriteViewController(), title: "Favoritos", imageName: "heart")
    let tela03 = createNavController(viewController: TravelViewController(), title: "Viagens", imageName: "star")
    let tela04 = createNavController(viewController: MessageViewController(), title: "Mensagens", imageName: "message")
    let tela05 = createNavController(viewController: ProfileViewController(), title: "Perfil", imageName: "person.crop.circle")

    viewControllers = [tela01, tela02, tela03, tela04, tela05]
    customizeTabBarAppearance()
  }

  private func createNavController(viewController: UIViewController, title: String, imageName: String) -> UINavigationController {
    let navController = UINavigationController(rootViewController: viewController)
    navController.tabBarItem.title = title
    navController.tabBarItem.image = UIImage(systemName: imageName)
    return navController
  }

  private func customizeTabBarAppearance() {
    tabBar.tintColor = .red
    tabBar.unselectedItemTintColor = .lightGray
    tabBar.backgroundColor = .white
    tabBar.isTranslucent = false
    tabBar.layer.borderColor = UIColor.lightGray.cgColor
    tabBar.layer.borderWidth = 0.5
  }

}

