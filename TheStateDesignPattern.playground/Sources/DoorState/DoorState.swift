import Foundation

protocol DoorState: DomainObject {
    var door: Door { get set }
    func close()
    func open()
    func `break`()
    func lock()
    func unlock()
    
    func fix()
}

extension DoorState {
    func fix() {
        door.doorState = DoorClosedState(door)
    }
}
