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

  override func loadView() {
    screen = ExploreScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  
  }

}

