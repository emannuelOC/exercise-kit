//
//  ResponseView.swift
//  ExerciseKit
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 09/12/16.
//  Copyright © 2016 OC. All rights reserved.
//

import UIKit

class ResponseView: UIView {

    /// The response to be displayed
    var response: Response? {
        didSet {
            updateUI()
        }
    }
    
    /// To be implemented at the subclasses
    func updateUI() {}

}
