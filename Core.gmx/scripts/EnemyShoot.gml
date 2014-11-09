var projectiles;
var angle;
var angleNumber;

projectiles = attacks;
angle = 360 / projectiles;
angleNumber = 0;

for (i = 0; i < projectiles; i += 1)
{
    with instance_create(x, y, EnemyProjectileObject) 
        {
            direction = point_direction(x, y, PlayerObject.x, PlayerObject.y) + angleNumber * angle;
            speed = 3;          
        }
        angleNumber += 1;
}
