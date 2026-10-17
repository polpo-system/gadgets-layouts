MODULE LayoutsTest;  (** LayoutsTest.Run: a layout of two buttons in a horizontal list realized as gadgets; needs the desktop's display *)

IMPORT Objects, Display, Layouts, Out := out;

VAR fails, checks: LONGINT;

PROCEDURE Check(what: ARRAY OF CHAR; ok: BOOLEAN);
BEGIN
  INC(checks);
  IF ~ok THEN INC(fails); Out.String("FAIL "); Out.String(what); Out.Ln END
END Check;

PROCEDURE Run*;
VAR obj: Objects.Object; list: Layouts.Node;
BEGIN
  fails := 0; checks := 0;
  obj := Layouts.Realize(Layouts.NewObject("BasicGadgets.NewButton"));
  Check("a button realized", (obj # NIL) & (obj IS Display.Frame));
  list := Layouts.NewHList("Panels.NewPanel");
  Layouts.Insert(list, Layouts.NewObject("BasicGadgets.NewButton"));
  Layouts.Insert(list, Layouts.NewObject("BasicGadgets.NewButton"));
  obj := Layouts.Realize(list);
  Check("a panel with two buttons realized", (obj # NIL) & (obj IS Display.Frame) & (obj(Display.Frame).dsc # NIL)
    & (obj(Display.Frame).dsc.next # NIL));
  Out.String("LayoutsTest: "); Out.Int(checks, 0); Out.String(" checks, "); Out.Int(fails, 0); Out.String(" failed"); Out.Ln
END Run;

END LayoutsTest.
