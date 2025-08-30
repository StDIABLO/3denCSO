/*
	Author: StDIABLO

	Description:

	Parameter(s):
	_arrayOfCSObjectsClassAndPos

	Returns:
	true
*/
params ["_arrayOfCSObjectsClassAndPos"];
collect3DENHistory
{
  _myLayer = -1 add3DENLayer "Simple Objects";
  {
    _newItemRot = _x select 2;
    _newEnt = create3DENEntity ["Object",_x select 0,[0,0,0]];
    call compile str formatText ["_newEnt set3DENAttribute ['position', %1];",_x select 1];
    _newEnt set3DENAttribute ["rotation",_x select 2];
    _newEnt set3DENAttribute ["CSObject",true];
    _newEnt set3DENLayer _myLayer;

  } foreach _arrayOfCSObjectsClassAndPos;
};
true;
