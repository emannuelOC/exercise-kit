//
//  ExerciseStepViewController.swift
//  ExerciseKit
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 09/12/16.
//  Copyright © 2016 OC. All rights reserved.
//

import UIKit

/// A view controller for a given exerciseStep
class ExerciseStepViewController: UIViewController {

    /// The view where the stimulus will be presented
    @IBOutlet weak var stimulusView: StimulusView!
    
    /// The view where the repsonse will be presented
    @IBOutlet weak var responseView: ResponseView!
    
    /// The step that will be displayed
    var step: ExerciseStep? {
        didSet {
            updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    /// Updates the UI according to the step to be presented
    func updateUI() {
        if let step = step {
            stimulusView.stimulus = step.stimulus
            responseView.response = step.response
        }
    }

}
