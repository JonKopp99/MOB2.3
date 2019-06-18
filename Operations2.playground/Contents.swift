import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

// Queue
let operationQueue = OperationQueue()
operationQueue.qualityOfService = .userInitiated

class MyOperation: Operation {
    
    //TODO: Create main()
    override func main() {
            print("MyOP Excecuted")
    }
}

let myOp = MyOperation()

myOp.completionBlock = {
    //TODO: print "MyOp Completed"
    print("MyOp Completed")
}

operationQueue.addOperation(myOp)
