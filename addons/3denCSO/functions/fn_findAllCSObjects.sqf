/*
	Author: StDIABLO

	Description:

	Parameter(s):
	none

	Returns:
	arrayOfCSObjects
*/

private _arrayOfCSObjects = [];
{
  if (_x get3DENAttribute "CSObject" select 0) then {
    _arrayOfCSObjects pushBack _x;
  }
} foreach (all3DENEntities select 0);
_arrayOfCSObjects;
//systemChat str _arrayOfCSObjects;
