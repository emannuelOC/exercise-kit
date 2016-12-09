//
//  ExerciseViewController.swift
//  ExerciseKit
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 09/12/16.
//  Copyright © 2016 OC. All rights reserved.
//

import UIKit

/// The delegate for an `ExerciseViewController`, that will be warned 
/// when the user cancels the exercise or finishes it.
protocol ExerciseViewControllerDelegate {
    
    
    /// Tells the delegate that the user cancelled the exercise.
    ///
    /// - Parameter controller: the `ExerciseViewController` that is calling.
    func exerciseViewControllerDidCancel(_ controller: ExerciseViewController)
    
    
    
    /// Tells the delegate that the user finished the exercise.
    ///
    /// - Parameters:
    ///   - controller: the `ExerciseViewController` that is calling.
    ///   - result: the `ExerciseResult` with the user's answers.
    func exerciseViewController(_ controller: ExerciseViewController,
                                didFinishWithResult result: ExerciseResult)
    
}

/// A view controller for an exercise
class ExerciseViewController: UIViewController {

    /// The exercise that should be displayed.
    var exercise: Exercise?
    
    /// The delegate that will be called when the user finishes the exercise.
    var delegate: ExerciseViewControllerDelegate?

    
}
