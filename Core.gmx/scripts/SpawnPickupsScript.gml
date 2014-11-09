var randomPickup;
var pickupChoice;

randomPickup = irandom(99);

     if (randomPickup >= 75) pickupChoice = 0; //Score Bonus 25%
else if (randomPickup >= 60) pickupChoice = 1; //Bomb 15%
else if (randomPickup >= 45) pickupChoice = 2; //Player Shield 15%
else if (randomPickup >= 30) pickupChoice = 3; //Core Shield 15%
else if (randomPickup >= 20) pickupChoice = 4; //Fire Interval 10%
else if (randomPickup >= 10) pickupChoice = 5; //Projectile Speed 10%
else if (randomPickup >= 5)  pickupChoice = 6; //Damage Increase 5%
else                         pickupChoice = 7; //Player Stage 5%

var spawnDirection;
var xPos;
var yPos;

spawnDirection = irandom(3);

switch (spawnDirection)
{
    case 0:
    {
        xPos = random(1024);
        yPos = -32;
        break;
    }
    case 1:
    {
        xPos = random(1024);
        yPos = 800;
        break;
    }
    case 2:
    {
        xPos = -32;
        yPos = random(768);
        break;
    }
    case 3:
    {
        xPos = 1056;
        yPos = random(768);
        break;
    }
}

switch (pickupChoice)
{
    case 0:
        with instance_create(xPos, yPos, ScoreBonusObject) 
        {
            image_angle = random(360);
            direction = point_direction(x, y, CoreObject.x, CoreObject.y);
            speed = 1;
        }
        break;
    case 1:
        with instance_create(xPos, yPos, BombObject) 
        {
            image_angle = random(360);
            direction = point_direction(x, y, CoreObject.x, CoreObject.y);
            speed = 1;
        }
        break;
    case 2:
        with instance_create(xPos, yPos, PlayerShieldObject) 
        {
            image_angle = random(360);
            direction = point_direction(x, y, CoreObject.x, CoreObject.y);
            speed = 1;
        }
        break;
    case 3:
        with instance_create(xPos, yPos, CoreShieldObject) 
        {
            image_angle = random(360);
            direction = point_direction(x, y, CoreObject.x, CoreObject.y);
            speed = 1;
        }
        break;
    case 4:
        with instance_create(xPos, yPos, FireIntervalObject) 
        {
            image_angle = random(360);
            direction = point_direction(x, y, CoreObject.x, CoreObject.y);
            speed = 1;
        }
        break;
    case 5:
        with instance_create(xPos, yPos, ProjectileSpeedObject) 
        {
            image_angle = random(360);
            direction = point_direction(x, y, CoreObject.x, CoreObject.y);
            speed = 1;
        }
        break;
    case 6:
        with instance_create(xPos, yPos, DamageIncreaseObject) 
        {
            image_angle = random(360);
            direction = point_direction(x, y, CoreObject.x, CoreObject.y);
            speed = 1;
        }
        break;
    case 7:
        with instance_create(xPos, yPos, PlayerStageObject) 
        {
            image_angle = random(360);
            direction = point_direction(x, y, CoreObject.x, CoreObject.y);
            speed = 1;
        }
        break;
}
