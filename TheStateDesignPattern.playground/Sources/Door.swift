import Foundation

class Door: DomainObject {
    var description: String
    unowned var device: Device
    var doorState: DoorState

    init(_ device: Device) {
        self.description = "Door"
        self.device = device
        self.doorState = DoorClosedState(this)
    }
}
