// Simple tuple
var uppercutAttack: (String, Int, Bool) = ("Uppercut Smash", 25, true)
uppercutAttack.0
uppercutAttack.1
uppercutAttack.2

var (attack, damage, rechargable) = uppercutAttack
attack
damage
rechargable

// Naming tuple values
var planetSmash = (name: "Planet Smash", damage: 45, rechargable: true)
planetSmash.rechargable

// Naming values with type annotation
var shieldStomp: (name: String, damage: Int, rechargable: Bool)
shieldStomp.damage = 100

