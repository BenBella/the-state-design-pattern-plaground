import Foundation

class DoorLockedState: DoorState {
    var description: String
    unowned var door: Door
    
    init(_ door: Door) {
        self.description = "Locked"
        self.door = door
    }
 
    convenience init(_ doorState: DoorState) {
        self.init(doorState.door)
    }
    
    func close() {
        // We can't close an already locked door.
    }
    
    func open() {
        // Can't open a locked door.
    }
    
    func `break`() {
        // To simulate production vs test configuration
        // scenarios, we can't break a door in test
        // configuration. So, we need to check the
        // Device's ConfigurationState.
    }
    
    func lock() {
        // It's already locked.
    }
    
    func unlock() {
        // We can unlock the door with the right key.
        self.door.doorState = DoorUnlockedState(self)
    }
}
