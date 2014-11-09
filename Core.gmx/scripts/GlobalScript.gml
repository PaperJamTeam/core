//Executed at the start of room "Menu".

//DECLARATIONS v
globalvar Score;            Score = 0;
globalvar FireInterval;     FireInterval = 10;
globalvar ProjectileSpeed;  ProjectileSpeed = 10;
globalvar Damage;           Damage = 2;
globalvar PlayerStage;      PlayerStage = 5;
globalvar Difficulty;       Difficulty = 6;
globalvar PlayerIsShielded; PlayerIsShielded = 0;
globalvar CoreIsShielded;   CoreIsShielded = 0;
globalvar ScoreBonus;       ScoreBonus = 100;

globalvar EnemySpawnInterval;
EnemySpawnInterval = 240;

globalvar EnteredGame;
EnteredGame = 0;

//MIN & MAX v
globalvar MinFireInterval;    MinFireInterval = 5;     globalvar MaxFireInterval;    MaxFireInterval = 30;
globalvar MinProjectileSpeed; MinProjectileSpeed = 5;  globalvar MaxProjectileSpeed; MaxProjectileSpeed = 20;
globalvar MinDamage;          MinDamage = 1;           globalvar MaxDamage;          MaxDamage = 5;
globalvar MinPlayerStage;     MinPlayerStage = 0;      globalvar MaxPlayerStage;     MaxPlayerStage = 5;
//MIN & MAX ^
//LIMIT BONUS v
globalvar BonusFireInterval;    BonusFireInterval = 100;
globalvar BonusProjectileSpeed; BonusProjectileSpeed = 100;
globalvar BonusDamage;          BonusDamage = 100;
globalvar BonusPlayerStage;     BonusPlayerStage = 100;
globalvar BonusPlayerShield;    BonusPlayerShield = 100;
globalvar BonusCoreShield;      BonusCoreShield = 100;
//LIMIT BONUS ^
//DECLARATIONS ^
