var projectiles;
var angle;
var angleNumber;

projectiles = PlayerStage + 1;
angle = 360 / projectiles;
angleNumber = 0;

for (i = 0; i < projectiles; i += 1)
{
    with instance_create(x, y, ProjectileObject) 
        {
            direction = point_direction(x, y, CoreObject.x, CoreObject.y) + angleNumber * angle;
            speed = ProjectileSpeed;
            damage = Damage;
        }
        angleNumber += 1;
}
