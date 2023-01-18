import Foundation

/// Summary
/// The Device class is the owner of the different states
/// that the Device can be in. The Device is also the
/// owner of actions (methods) that can be applied to the
/// states. In other words, Device is the thing we are
/// trying to manipulate through outside behavior.

public class Device: DomainObject {
    public var description: String
    /// The current mode that the device is in.
    private(set) var modeState: ModeState! = nil
    /// Device only knows about generic actions on
    /// certain states. So, we use the base classes of
    /// these states in order execute these commands.
    /// The base classes are abstract classes of the
    /// states.
    private var configurationState: ConfigurationState
    /// Device has a physical door represented by the
    /// Door class.
    private var door: Door! = nil
    
    public init(description: String) {
        self.description = description
        self.configurationState = ProductionConfigurationState()
        self.door = Door(self)
        self.modeState = ModePowerUpState(self)
    }
}
