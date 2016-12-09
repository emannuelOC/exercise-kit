//
//  Exercise.swift
//  ExerciseKit
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 09/12/16.
//  Copyright © 2016 OC. All rights reserved.
//

import Foundation
import UIKit

/// An type that implements this protocol is able to create a dictionary
/// representation os itself as well as create an instance from a dictionary.
protocol Mappable {
    
    /// Returns a dictionary representation of `Self`.
    func toJSON() -> [String: Any]
    
    /// Returns an instance of `Self` created from a dictionary.
    func fromJSON(_ json: [String: Any]) -> Self?
}

/// The stimulus for an exercise step
///
/// In a simple exercise step that has a question with options
/// the stimulus will probably be a text string with the question.
enum Stimulus {
    
    /** 
     To be used in case there should be no stimulus in an ExerciseStep.
     For example, in a step where there is just an instruction and a white 
     screen where the user can draw something.
     */
    case none
    
    /**
     To be used when the stimulus is a text.
     */
    case text(String)
    
    /**
     To be used when the stimulus is an image. For example, in a Naming Test.
     */
    case image(UIImage)
    
    /**
     To be used when many images should be presented at once.
     */
    case imageCollection([UIImage])
    
    
}

/// The response for an exercise step
///
/// In an open answer exercise, the response could be a string representing
/// the answer.
enum Response {
    
    /// To be used when there is no response expected from the user
    case none
    
    /// To be used when the response expected from the user is a written text.
    case text(String)
    
    /** 
     To be used when the response expected from the user is choosing an
     option among other options.
     */
    case options([Option])
    
}

/// An option for the response in an option collection.
protocol Option {
    
    /// A `Bool` representing whether the option is a valid answer or not.
    var isCorrect: Bool { get }
    
}

/** 
 An item in an exercise, containing a stimulus and a response.
 */
class ExerciseStep {
    
    /// The stimulus for the exercise step.
    var stimulus: Stimulus?
    
    /// The response that is expected from the user.
    var response: Response?
    
    /// A boolean representing whether the step has been completed or not
    var isCompleted = false
    
    /// A closure that will be used to evaluate whether the response is correct
    var evaluate: (() -> Bool) = { true }
}

/**
 An exercise, containing all the steps.
 */
class Exercise {
    
    /// The name for the exercise
    var name: String?
    
    /// The steps that compose the exercise
    var steps = [ExerciseStep]()
    
}

/// The result for an exercise
class ExerciseResult {
    
    /// The start date for the exercise
    var startDate: Date?
    
    /// The finish date for the exercise
    var finishDate: Date?
    
    /// The rate of right answers
    var generalResult: Double = 0.0
    
}

/// The result for each step of the exercise
struct ResultItem {
    
    /// The step with which the item is related
    var exerciseStep: ExerciseStep
    
    /// The start time
    var startDate: Date?
    
    /// The finish time
    var finishDate: Date?
    
    /// The evaluation, whether the answer was right or wrong
    var evaluation: Bool = false
    
}














