if (FireInterval < MaxFireInterval) FireInterval += 1;
if (ProjectileSpeed > MinProjectileSpeed) ProjectileSpeed -= 1;
if (Damage > MinDamage) Damage -= 1;
if (PlayerStage > MinPlayerStage) PlayerStage -= 1;
script_execute(ChangePlayerSprite);
