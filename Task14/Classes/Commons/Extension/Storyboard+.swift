//
//  Storyboard+.swift
//  Task14
//
//  Created by 松島悠人 on 2021/09/22.
//

import Foundation
import UIKit

extension UIStoryboard {
    
    static var fruitsListViewContrtoller: FruitsListViewController {
        return UIStoryboard(name: "FruitsList", bundle: nil).instantiateInitialViewController() as! FruitsListViewController
    }

    static var addFruitsViewController: AddFruitsViewController {
        return UIStoryboard(name: "AddFruits", bundle: nil).instantiateInitialViewController() as! AddFruitsViewController
    }
}
