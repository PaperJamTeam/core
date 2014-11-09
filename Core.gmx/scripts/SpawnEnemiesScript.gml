var randomWall;
var spawnCount;

if (Difficulty <= 9) spawnCount = floor(Difficulty + 1) / 2;
else spawnCount = 5;

var xPos;
var yPos;

for (i = 0; i < spawnCount; i += 1)
{
    randomWall = irandom(3);
    switch (randomWall)
    {
        case 0:
            {
                xPos = random(1024);
                yPos = -64;
            }
            break;
         case 1:
            {
                xPos = random(1024);
                yPos = 832;
            }
            break;
         case 2:
            {
                xPos = -64;
                yPos = random(768);
            }
            break;
         case 3:
            {
                xPos = 1088;
                yPos = random(768);
            }
            break;
    }
    
    var randomRoll;
    var randomOption;
    
    if (Difficulty < 30)
    {
        if (Difficulty < 2) randomRoll = irandom(8);
        else if (Difficulty < 4) randomRoll = irandom(11);
        else if (Difficulty < 6) randomRoll = irandom(19);
        else if (Difficulty < 8) randomRoll = irandom(27);
        else if (Difficulty < 10) randomRoll = irandom(33);
        else if (Difficulty < 12) randomRoll = irandom(39);
        else if (Difficulty < 14) randomRoll = irandom(45);
        else if (Difficulty < 16) randomRoll = irandom(51);
        else if (Difficulty < 18) randomRoll = irandom(57);
        else if (Difficulty < 20) randomRoll = irandom(63);
        else if (Difficulty < 22) randomRoll = irandom(69);
        else if (Difficulty < 24) randomRoll = irandom(75);
        else if (Difficulty < 26) randomRoll = irandom(81);
        else if (Difficulty < 28) randomRoll = irandom(87);
        else                      randomRoll = irandom(93);
    }
    else randomRoll = irandom(99);
    
    if (randomRoll < 9) randomOption = 0;
    else if (randomRoll < 19) randomOption = 1;
    else if (randomRoll < 28) randomOption = 2;
    else if (randomRoll < 34) randomOption = 3;
    else if (randomRoll < 40) randomOption = 4;
    else if (randomRoll < 46) randomOption = 5;
    else if (randomRoll < 52) randomOption = 6;
    else if (randomRoll < 58) randomOption = 7;
    else if (randomRoll < 64) randomOption = 8;
    else if (randomRoll < 70) randomOption = 9;
    else if (randomRoll < 76) randomOption = 10;
    else if (randomRoll < 82) randomOption = 11;
    else if (randomRoll < 88) randomOption = 12;
    else if (randomRoll < 94) randomOption = 13;
    else                      randomOption = 14;
    
    switch (randomOption)
    {
        case 0: //Normal
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.25;
                max_hitpoints = Difficulty * 2 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 0;
                sprite_index = NoAngles;
                scorePoints = Difficulty + 1;
                isSmall = 1;
            }
        break;
        case 1: //Fast
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.5;
                max_hitpoints = Difficulty + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 0;
                sprite_index = NoAngles;
                image_xscale = 0.5;
                image_yscale = 0.5;
                scorePoints = Difficulty * 2;
                isSmall = 1;
            }
        break;
        case 2: //Big
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.125;
                max_hitpoints = Difficulty * 5 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 0;
                sprite_index = NoAnglesBig;
                scorePoints = Difficulty * 3;
                isSmall = 0;
            }
        break;
        case 3: //Normal 1 Angle
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.25;
                max_hitpoints = Difficulty * 2 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 1;
                sprite_index = OneAngle;
                scorePoints = Difficulty + 1;
                isSmall = 1;
            }
        break;
        case 4: //Big 1 Angle
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.125;
                max_hitpoints = Difficulty * 5 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 1;
                sprite_index = OneAngleBig;
                scorePoints = Difficulty * 3;
                isSmall = 0;
            }
        break; 
        case 5: //Normal 2 Angles
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.25;
                max_hitpoints = Difficulty * 2 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 2;
                sprite_index = TwoAngles;
                scorePoints = Difficulty + 1;
                isSmall = 1;
            }
        break;
        case 6: //Big 2 Angles
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.125;
                max_hitpoints = Difficulty * 5 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 2;
                sprite_index = TwoAnglesBig;
                scorePoints = Difficulty * 3;
                isSmall = 0;
            }
        break;
        case 7: //Normal 3 Angles
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.25;
                max_hitpoints = Difficulty * 2 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 3;
                sprite_index = ThreeAngles;
                scorePoints = Difficulty + 1;
                isSmall = 1;
            }
        break;
        case 8: //Big 3 Angles
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.125;
                max_hitpoints = Difficulty * 5 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 3;
                sprite_index = ThreeAnglesBig;
                scorePoints = Difficulty * 3;
                isSmall = 0;
            }
        break; 
        case 9: //Normal 4 Angles
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.25;
                max_hitpoints = Difficulty * 2 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 4;
                sprite_index = FourAngles;
                scorePoints = Difficulty + 1;
                isSmall = 1;
            }
        break;
        case 10: //Big 4 Angles
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.125;
                max_hitpoints = Difficulty * 5 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 4;
                sprite_index = FourAnglesBig;
                scorePoints = Difficulty * 3;
                isSmall = 0;
            }
        break; 
                case 11: //Normal 5 Angles
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.25;
                max_hitpoints = Difficulty * 2 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 5;
                sprite_index = FiveAngles;
                scorePoints = Difficulty + 1;
                isSmall = 1;
            }
        break;
            case 12: //Big 5 Angles
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.125;
                max_hitpoints = Difficulty * 5 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 5;
                sprite_index = FiveAnglesBig;
                scorePoints = Difficulty * 3;
                isSmall = 0;
            }
        break;
        case 13: //Normal 6 Angles
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.25;
                max_hitpoints = Difficulty * 2 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 6;
                sprite_index = SixAngles;
                scorePoints = Difficulty + 1;
                isSmall = 1;
            }
        break;
        case 14: //Big 6 Angles
            with instance_create(xPos, yPos, EnemyObject) 
            {
                direction = point_direction(x, y, CoreObject.x, CoreObject.y);
                speed = 0.125;
                max_hitpoints = Difficulty * 5 + 1;
                hitpoints = max_hitpoints;
                color = make_color_rgb(255,255,255);
                attacks = 6;
                sprite_index = SixAnglesBig;
                scorePoints = Difficulty * 3;
                isSmall = 0;
            }
        break; 
        
    }    
}
