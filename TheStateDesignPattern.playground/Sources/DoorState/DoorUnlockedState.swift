import Foundation

import Foundation

class DoorUnlockedState: DoorState {
    var description: String
    unowned var door: Door
 
    init(_ door: Door) {
        self.description = "Unlocked"
        self.door = door
    }
 
    convenience init(_ doorState: DoorState) {
        self.init(doorState.door)
    }
    
    func close() {
    }
    
    func open() {
    }
    
    func `break`() {
    }
    
    func lock() {
    }
    
    func unlock() {
    }
}
