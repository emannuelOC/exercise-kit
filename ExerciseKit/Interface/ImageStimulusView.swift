//
//  ImageStimulusView.swift
//  ExerciseKit
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 09/12/16.
//  Copyright © 2016 OC. All rights reserved.
//

import UIKit

class ImageStimulusView: StimulusView {

    @IBOutlet weak var pictureImageView: UIImageView!

    override func updateUI() {
        guard let stimulus = stimulus else { return }
        switch stimulus {
        case let .image(stimulusImage):
            pictureImageView.image = stimulusImage
        default:
            break
        }
    }

}
