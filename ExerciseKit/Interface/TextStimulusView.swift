//
//  TextStimulusView.swift
//  ExerciseKit
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 09/12/16.
//  Copyright © 2016 OC. All rights reserved.
//

import UIKit

class TextStimulusView: StimulusView {

    @IBOutlet weak var stimulusTextLabel: UILabel!
    
    override func updateUI() {
        guard let stimulus = stimulus else { return }
        switch stimulus {
        case let .text(stimulusText):
            stimulusTextLabel.text = stimulusText
        default:
            break
        }
    }
    
}
