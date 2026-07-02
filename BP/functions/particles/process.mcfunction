# Instantiate particle displacement values 
function particles/routers/instance_values

# Displace particle by scoreboard values
function entities/events/displace/x
function entities/events/displace/y
function entities/events/displace/z

# Call particle based on tag
function particles/routers/particle_effects

# Remove particle instance
kill @s