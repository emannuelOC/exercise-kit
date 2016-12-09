//
//  StimulusView.swift
//  ExerciseKit
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 09/12/16.
//  Copyright © 2016 OC. All rights reserved.
//

import UIKit

class StimulusView: UIView {

    /// The stimulus to be presented
    var stimulus: Stimulus? {
        didSet {
            updateUI()
        }
    }
    
    /// To be implemented at the subclasses
    func updateUI() {}

    
}
