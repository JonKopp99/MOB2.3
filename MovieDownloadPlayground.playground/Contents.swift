import UIKit

func downloadMovies(numberOfMovies: Int) {
    print("Starting downloading movies from Netflix")
    //Create a semaphore
let sem = DispatchSemaphore(value: numberOfMovies)
    //Launch 8 tasks
    // Each task should wait (pretend downloading takes 2 seconds) and inform the console once it's done.
    
    for i in 0...7 {                                 //launch a bunch of tasks
        DispatchQueue.global().async {               //run tasks on a background thread
            sem.wait()                               //wait here if no resources available
            sleep(2)                                 //do some long task eg file access (here we are just sleeping for a 2 seconds for demonstration purposes)
            print("movie \(i) completed downloading : \(Date())")
            sem.signal()                             //let the semaphore know this resource is now available
        }
    }
}

downloadMovies(numberOfMovies:2)
