import Foundation

class DoorBrokenState: DoorState {
    var description: String
    unowned var door: Door
 
    init(_ door: Door) {
        self.description = "Broken"
        self.door = door
    }
 
    convenience init(_ doorState: DoorState) {
        self.init(doorState.door)
    }
    
    func close() {
        // Since the door is broken, we can't close the
        // door. We might want to notify a repair man.

        // Some other action should be calling the Fix()
        // method in the DoorState base class simulating
        // a repair and a change to the Door state.
    }
    
    func open() {
        // Since the door is broken, we can't open the
        // door. We might want to notify a repair man.

        // Some other action should be calling the Fix()
        // method in the DoorState base class
        // simulating a repair and a change to the
        // Door state.
    }
    
    func `break`() {
        // Since its already broken, we can't break
        // it much further.
    }
    
    func lock() {
        // Can't lock a broken door.
    }
    
    func unlock() {
        // Can't unlock a broken door.
    }
}
