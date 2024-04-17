/*:
## App Exercise - Workout Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    //Method
    func postWorkoutStates(){
        print("Distance Covered: \(distance) Time Taken: \(time) Elevation Gained: \(elevation)")
    }
}
var workout1 = RunningWorkout(distance: 100.00, time: 60.00, elevation: 12.00)
workout1.postWorkoutStates()
//:  A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
struct Steps {
    var steps: Int
    var goal: Int
    //Method
    mutating func Steps(){
        steps += 1
    }
    func takeStep(){
        print("\(steps)")
    }
}
var todaySteps = Steps(steps: 5000, goal: 6000)
todaySteps.Steps()
todaySteps.takeStep()
todaySteps.Steps()
todaySteps.takeStep()
todaySteps.Steps()
todaySteps.takeStep()
todaySteps.Steps()
todaySteps.takeStep()
todaySteps.Steps()
todaySteps.takeStep()
/*:
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Computed Properties and Property Observers](@next)
 */
