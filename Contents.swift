//: Playground - noun: a place where people can play

import UIKit


// arrays of exercises
let arms = ["REST","Biceps Hammer Curl","Barbell Curl","Dumbbell Curl","Concentration Curl","Preacher Curl","Incline Dumbbell Curl","Dumbbell Lying Triceps Extension","Seated Bent Over Dumbbell Kickback","Dumbbell Triceps Extension","Seated French Press","Skull Crusher","Machine Triceps Extension"];

let back = ["Wide Grip Pulldown","Close Grip Pulldown","Bent Over Dumbbell Row","Seated Rowing"];

let chest = ["REST","Bench Press","Incline Dumbbell Press","Incline Fly's","Incline Barbell Bench Press","Dumbbell Bench Press","Flat Incline Fly's"];

let legs = ["REST","Dumbbell Walking Lunge","Leg Press Machine","Leg Extension","Machine Lying leg Curl","Machine Seated Leg Curl","Seated Calf Raise Machine","Standing Calf Raise Machine","Seated Calf Raise Machine"];

let shoulders = ["REST","Dumbbell Lateral Raises","Dumbbell Front Raises","Dumbbell Shoulder Press","Rear Delt Fly","Dumbbell Shrugs","Smith Machine Shoulder Press","Seated Arnold Press"];





// this class creates the individual exercises****************************************************************************
class Exercise {
    
    var exName:String = "name"
    var exSets:Int = 0
    var exReps:Int = 0
    var exWeight:Int = 0
    
    // if called displays the exercise
    func displayWeight() {
        print("Exercise: ",self.exName)
        print("    Sets: ",self.exSets)
        print("    Reps: ",self.exReps)
        print("   Weight: ",self.exWeight)
    }
}





// class for the workout routine******************************************************************************************
class WorkoutRoutine: Exercise {
    let weekDays = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    var workoutDay:String = " "
    var workoutName:String = " "
    var workoutEx1:String = "exercise"
    var workoutEx2:String = "exercise"
    var workoutEx3:String = "exercise"

    // function to display the workout
    func displayWorkout(){
        print("Name: ",self.workoutName)
        print("Day: ",self.workoutDay)
        print("Exercise 1:",self.workoutEx1)
        print("Exercise 2:",self.workoutEx2)
        print("Exercise 3:",self.workoutEx3)
        
    }
}




// class for the calories burned during the workout***********************************************************************************************
class Calories {
    
    // construction of the variables to calculate the
    var age:Float = 0
    var weight:Float = 0
    var heartRate:Float = 0
    var time:Float = 0
    var male:Bool = true
    
    
    //Male constants
    let ageCalcM:Float = 0.2017;
    let weightCalcM:Float = 0.09036;
    let heartCalcM:Float = 0.6309;
    let timeCalcM:Float = 4.184;
    
    //Female constants
    let ageCalcF:Float = 0.074;
    let weightCalcF:Float = 0.05741;
    let heartCalcF:Float = 0.4472;
    let timeCalcF:Float = 4.184;
    
    // used to help claclulate the final number for calories
    var caloriesBurned:Float = 0;
    var ageWeight:Float = 0;
    var heartNumber:Float = 0;
    
    // calculate the calories
    func calcCalories() -> Float{
    
        if(male == true)
        {
            // caloriesBurned = (((age * ageCalcM) - (weight * weightCalcM) +  (heartRate * heartCalcM) - 55.0969) * (time / timeCalcM))
            
            
    
            ageWeight = ((age * ageCalcM) - (weight * weightCalcM))
            
            heartNumber = (ageWeight + (heartRate * heartCalcM) - 55.0969)
    
            caloriesBurned = (heartNumber * (time / timeCalcM))
    
    
        }else
        {
            //caloriesBurned = (((age * ageCalcF) - (weight * weightCalcF) + (heartRate * heartCalcF) - 20.4022) * (time / timeCalcF))
            
    
            ageWeight = ((age * ageCalcF) - (weight * weightCalcF))
    
            heartNumber = (ageWeight + (heartRate * heartCalcF) - 20.4022)
    
            caloriesBurned = (heartNumber * (time / timeCalcF))
        }
        
        return caloriesBurned
    }
    
    // display the calories
    func displayCalories(cals:Float){
        caloriesBurned = cals
        // print out the calories burned
        print("You burned ", caloriesBurned, " calories during this workout!")
    }
}


//this is the timer that lets you select how long you'd like to wait for
class Timer {
    var seconds:Int = 0
    
    func countDown(){
        while(seconds != -1){
            print(seconds)
            // sleep pauses the program for however many seconds inside the parenthises
            sleep(1)
            seconds = seconds - 1
        }
    }
}



// this will get information on how far you ran and then calculate the min/mile you ran and MPH
class Running {
    var distance:Double = 0
    var time:Double = 0
    
    func calculateMPH()-> Double {
        var mPH:Double = 0
        var newTime:Double = 0
        
        // this converts minutes to hours
        newTime = time/60
        
        mPH = distance / newTime
        return mPH
    }
    
    func calcMinMiles()-> Double{
        var minMile:Double = 0
        
        minMile = time / distance
        
        return minMile
    }
    
    func displayRunning(mph:Double, min:Double){
        
        print("            Time: ",time)
        print("        Distance: ",distance)
        print("  Miles Per Hour: ",mph)
        print("Minutes Per Mile: ",min)
    }
}


// this displays the menu************************************
func displayTopMenu(){
    print()
    print("Please Select One of the Following:")
    print("1: Exercise")
    print("2: Workout")
    print("3: Calories Burned")
    print("4: Timer")
    print("5: Running")
    print()
    
}

// this displays the exercise menu
func displayExerciseMenu(){
    print()
    print("Please Select One of the Following:")
    print("1: View Exercise")
    //print("2: View Exercise")
    print()
}

func displayWorkoutMenu(){
    print()
    print("1: View Workout")
    print()
}





// arrays for the classes
var exArray = [Exercise]()
var workArray = [WorkoutRoutine]()
var calArray = [Calories]()
var timArray = [Timer]()
var runArray = [Running]()

//create an object for each******
var newExercise = Exercise()
var monWorkout = WorkoutRoutine()
var tuesWorkout = WorkoutRoutine()
var wedWorkout = WorkoutRoutine()
var thursWorkout = WorkoutRoutine()
var friWorkout = WorkoutRoutine()
var satWorkout = WorkoutRoutine()
var sunWorkout = WorkoutRoutine()

var newCalories = Calories()
var newTimer = Timer ()
var newRun = Running()












/* To manipulate the code please change the values after the equals signs that are
separated by "________"
*/


// MENU VARIABLES *****************************************************************************************************
//______________________________________________________________________________________________
// This is how you change the very first menu you see
var topMenu = 0

//Control the Exercise Menu to view the exercise created
var exerciseMenu = 1

// Control Workout Menu to view the workout created
var workoutMenu = 1
//______________________________________________________________________________________________






// EXERCISE VARIABLES ********************
//______________________________________________________________________________________________
// Exercise Name
newExercise.exName = "Bench Press"

// How Many Sets
newExercise.exSets = 4

// How Many Reps
newExercise.exReps = 5

// How Much Weight
newExercise.exWeight = 185
//______________________________________________________________________________________________





// add the exercise class instance to the array
exArray.append(newExercise)






// WORKOUT VARIABLES *********************
//______________________________________________________________________________________________
// Please Enter a Name for your Workout
monWorkout.workoutName = "Coolio Cools Workout"


/* Enter the Exercise from the following choices. 
 The Array names are followed by the index number and the exercise name

arms 0:REST 1:Biceps Hammer Curl 2:Barbell Curl 3:Dumbbell Curl 4:Concentration Curl 5:Preacher Curl 6:Incline Dumbbell Curl 7:Dumbbell Lying Triceps Extension
              8:Seated Bent Over Dumbbell Kickback 9:Dumbbell Triceps Extension 10:Seated French Press 11:Skull Crusher 12:Machine Triceps Extension"
 
 
back 0:REST 1:Wide Grip Pulldown 2:Close Grip Pulldown 3:Bent Over Dumbbell Row 4:Seated Rowing
 
 
chest 0:REST 1:Bench Press 2:Incline Dumbbell Press 3:Incline Fly's 4:Incline Barbell Bench Pressn 5:Dumbbell Bench Press 6:Flat Incline Fly's

 
legs 0:REST 1:Dumbbell Walking Lunge 2:Leg Press Machine 3:Leg Extension 4:Machine Lying leg Curl 5:Machine Seated Leg Curl 6:Seated Calf Raise Machine 7:Standing Calf Raise Machine 8:Seated Calf Raise Machine

 
shoulders 0:REST 1:Dumbbell Lateral Raises 2:Dumbbell Front Raises 3:Dumbbell Shoulder Press 4:Rear Delt Fly 5:Dumbbell Shrugs 6:Smith Machine Shoulder Press 7:Seated Arnold Press
 
*/

// change the name and index number that corresponds to the arrays above

// Monday
monWorkout.workoutDay = "Monday"
monWorkout.workoutEx1 = arms[1]
monWorkout.workoutEx2 = arms[2]
monWorkout.workoutEx3 = arms[3]

// Tuesday
tuesWorkout.workoutDay = "Tuesday"
tuesWorkout.workoutEx1 = chest[1]
tuesWorkout.workoutEx2 = chest[2]
tuesWorkout.workoutEx3 = chest[3]

// Wednesday
wedWorkout.workoutDay = "Wednesday"
wedWorkout.workoutEx1 = chest[0]
wedWorkout.workoutEx2 = chest[0]
wedWorkout.workoutEx3 = chest[0]

// Thursday
thursWorkout.workoutDay = "Thursday"
thursWorkout.workoutEx1 = legs[1]
thursWorkout.workoutEx2 = legs[2]
thursWorkout.workoutEx3 = legs[3]

// Friday
friWorkout.workoutDay = "Friday"
friWorkout.workoutEx1 = back[1]
friWorkout.workoutEx2 = back[2]
friWorkout.workoutEx3 = back[3]

// Saturday
satWorkout.workoutDay = "Saturday"
satWorkout.workoutEx1 = legs[0]
satWorkout.workoutEx2 = legs[0]
satWorkout.workoutEx3 = legs[0]

// Sunday
sunWorkout.workoutDay = "Sunday"
sunWorkout.workoutEx1 = legs[0]
sunWorkout.workoutEx2 = legs[0]
sunWorkout.workoutEx3 = legs[0]
//______________________________________________________________________________________________





// add the workout class instance to the array
workArray.append(monWorkout)
workArray.append(tuesWorkout)
workArray.append(wedWorkout)
workArray.append(thursWorkout)
workArray.append(friWorkout)
workArray.append(satWorkout)
workArray.append(sunWorkout)






// CALORIE CALCULATION VARIABLES *********************
//______________________________________________________________________________________________
//Enter Your Age
newCalories.age = 28

// Enter Your Weight
newCalories.weight = 195

// Enter Your Heart Rate beats per minute
newCalories.heartRate = 165

//Time Worked out
newCalories.time = 60

// True if you are Male, False if you are Female
newCalories.male = true
//______________________________________________________________________________________________




// add the calories class to the calArray
calArray.append(newCalories)





// TIMER VARIABLE *****************
//_____________________________________________________________________________________________
// How many seconds Would you like the timer to count down?
newTimer.seconds = 10
//_____________________________________________________________________________________________




//add timer class to the timArray
timArray.append(newTimer)





// Running variables ****************
//___________________________________________________________________________________________
// How many Minutes did You Run
newRun.time = 30

// How much distance in miles did you run
newRun.distance = 3.03
//____________________________________________________________________________________________



















var newMPH:Double = 0
var newMinMile:Double = 0

// add running to runArray
runArray.append(newRun)






































    displayTopMenu()

    
    //topMenu = 1
    switch topMenu {
    case 1:
        // display the EXERCISE options
        displayExerciseMenu()
            switch exerciseMenu {
            case 1:
                print(exArray[0].displayWeight())
                break
            default:
                print("Please enter a valid number")
            }
        break
        
        // WORKOUT section of switch
    case 2:
        displayWorkoutMenu()
        switch workoutMenu {
        case 1:
            for var i = 0; i < 7; i += 1{
           print(workArray[i].displayWorkout())
                print()
            }
            break
        default:
            print("error")
            break
        }
        break
        
        // this displays the CALORIES burned for the workout
    case 3:
        print(calArray[0].displayCalories(newCalories.calcCalories()))
        break
        
       // this displays the TIMER for the workout
    case 4:
        newTimer.countDown()
        break
        
    case 5:
       newMPH = newRun.calculateMPH()
        newMinMile = newRun.calcMinMiles()
        
       print(runArray[0].displayRunning(newMPH, min:newMinMile))
    default:
            print("")
        break
    }
