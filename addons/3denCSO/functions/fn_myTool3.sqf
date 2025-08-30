/*
  CSO_fnc_myTool3

	Author: StDIABLO

	Description:
  Delete all CSO objects from mission
	Parameter(s):

	Returns:

*/
private ["_array", "_restoreArray"];
_array=[];
_restoreArray=[];
_array = call CSO_fnc_findAllCSObjects;
_restoreArray = [_array] call CSO_fnc_saveClassAndPositionCSO;
delete3DENEntities _array;
copyToClipboard str _restoreArray;
systemChat "All simple objects are deleted from mission";
systemChat "Restore array saved to your clipboard";
true;
