//
//  Tela03VC.swift
//  AirbnbCloneBootcampGiulia
//
//  Created by Giulia Marinho on 05/08/24.
//


import Foundation
import UIKit

class TravelViewController: UIViewController {

  var screen: TravelScreen?

  override func loadView() {
    screen = TravelScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  
  }

}

