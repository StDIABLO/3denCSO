class CfgPatches
{
	class 3denCSO
	{
		units[]={};
		weapons[]={};
		requiredVersion=1.62;
		requiredAddons[]=
		{
			"3den"
		};
		author[]=
		{
			"StDIABLO"
		};
	};
};
class ctrlCheckbox;
class Cfg3DEN
{
	class Object
	{
		class AttributeCategories
		{
			class StateSpecial
			{
				class Attributes
				{
					class CSObject
					{
						displayName="Create as simple object?";
						tooltip="Create object with given shape defined as path to .p3d model. 						Supported LODs include Geometry, Fire Geometry, Roadway, View Geometry and ShadowVolume. 						Supported features include collision, texturing, animation, penetration, AI spotting occlusion, 						and surface specific sounds (like footsteps). Unsupported features include PhysX, damage, AI pathfinding (causes walking through walls), and built in lights.";
						property="CSObject";
						control="Checkbox";
						expression="";
						defaultValue="false";
					};
				};
			};
		};
	};
};
class ctrlMenu;
class ctrlMenuStrip;
class display3DEN
{
	class Controls
	{
		class MenuStrip: ctrlMenuStrip
		{
			class Items
			{
				class Tools
				{
					items[]+=
					{
						"CSO_TOOL"
					};
				};
				class CSO_TOOL
				{
					text="Create simple object tools";
					items[]=
					{
						"CSO_MyTool1",
						"CSO_MyTool2",
						"CSO_MyTool3",
						"CSO_MyTool4"
					};
				};
				class CSO_MyTool1
				{
					text="Create SQF and copy to clipboard";
					action="call CSO_fnc_myTool1";
				};
				class CSO_MyTool2
				{
					text="Create trigger with CSO objects";
					action="call CSO_fnc_myTool2";
				};
				class CSO_MyTool3
				{
					text="Delete all CSO objects from mission";
					action="call CSO_fnc_myTool3";
				};
				class CSO_MyTool4
				{
					text="Restore CSO objects from clipboard";
					action="call CSO_fnc_myTool4";
				};
			};
		};
	};
};
class CfgFunctions
{
	class CSO
	{
		class myCategory
		{
			file="3denCSO\functions";
			class createTextSQF
			{
			};
			class createTrigger
			{
			};
			class findAllCSObjects
			{
			};
			class saveClassAndPositionCSO
			{
			};
			class loadClassAndPositionCSO
			{
			};
			class myTool1
			{
			};
			class myTool2
			{
			};
			class myTool3
			{
			};
			class myTool4
			{
			};
		};
	};
};
class cfgMods
{
	author="76561198012642361";
	timepacked="1464828630";
};
