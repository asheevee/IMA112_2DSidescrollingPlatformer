{
  "$GMObject":"",
  "%Name":"obj_player",
  "eventList":[
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":true,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"obj_orb_speed","path":"objects/obj_orb_speed/obj_orb_speed.yy",},"eventNum":0,"eventType":4,"isDnD":true,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":3,"isDnD":true,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"obj_coin","path":"objects/obj_coin/obj_coin.yy",},"eventNum":0,"eventType":4,"isDnD":true,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_player",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[
    {"x":0.0,"y":0.0,},
    {"x":64.0,"y":0.0,},
    {"x":64.0,"y":64.0,},
    {"x":0.0,"y":64.0,},
  ],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"move_x","filters":[],"listItems":[],"multiselect":false,"name":"move_x","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"move_y","filters":[],"listItems":[],"multiselect":false,"name":"move_y","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"move_walkSpeed","filters":[],"listItems":[],"multiselect":false,"name":"move_walkSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"12","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"move_jumpSpeed","filters":[],"listItems":[],"multiselect":false,"name":"move_jumpSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"16","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"move_freeGravity","filters":[],"listItems":[],"multiselect":false,"name":"move_freeGravity","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.6","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"move_isJumping","filters":[],"listItems":[],"multiselect":false,"name":"move_isJumping","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"move_jumpTimer","filters":[],"listItems":[],"multiselect":false,"name":"move_jumpTimer","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"move_finishedJump","filters":[],"listItems":[],"multiselect":false,"name":"move_finishedJump","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"move_isGrounded","filters":[],"listItems":[],"multiselect":false,"name":"move_isGrounded","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"true","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"move_bufferedJump","filters":[],"listItems":[],"multiselect":false,"name":"move_bufferedJump","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"powerup_timer","filters":[],"listItems":[],"multiselect":false,"name":"powerup_timer","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"coins","filters":[],"listItems":[],"multiselect":false,"name":"coins","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_player_idle",
    "path":"sprites/spr_player_idle/spr_player_idle.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}