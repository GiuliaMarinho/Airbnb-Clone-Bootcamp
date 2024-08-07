//
//  Tela05VC.swift
//  AirbnbCloneBootcampGiulia
//
//  Created by Giulia Marinho on 05/08/24.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {

  var screen: ProfileScreen?

  override func loadView() {
    screen = ProfileScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()

  }

}


