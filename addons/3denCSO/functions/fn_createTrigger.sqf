/*
	Author: StDIABLO

	Description:

	Parameter(s):
	textSQF

	Returns:
	true
*/
params ["_textSQF"];
private ["_triggerInit", "_objects", "_trigger"];
_triggerInit = _textSQF;
collect3DENHistory
{
	_trigger = create3DENEntity ["Trigger","EmptyDetectorArea10x10",[0,0,0]];
	_trigger set3DENLayer _layer;
	set3DENAttributes [
		[[_trigger],"size3",[0,0,0]],
		[[_trigger],"IsRectangle",false],
		[[_trigger],"text","Create Simple Objects"],
		[[_trigger],"onActivation",_triggerInit],
		[[_trigger],"condition","true"]
	];
};
true;
