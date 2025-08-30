/*
  CSO_fnc_myTool4

	Author: StDIABLO

	Description:

	Parameter(s):

	Returns:

*/
private _array = [];
call compile str formatText ["_array = %1;", copyFromClipboard];
[_array] call CSO_fnc_loadClassAndPositionCSO;
systemChat "All Simple objects are restored in mission";
true;
