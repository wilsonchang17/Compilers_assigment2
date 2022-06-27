fun add_lists any [] = any
|   add_lists [] any = any
|   add_lists (a::bs) (c::ds): real list = (a + c) :: add_lists bs ds;

fun gradecal (score: real ) = 
    if score > 89.5 then "A+"
    else if score >= 84.5 then "A"
    else if score >= 79.5 then "A-"
    else if score >= 76.5 then "B+"
    else if score >= 72.5 then "B"
    else if score >= 69.5 then "B-"
    else if score >= 66.5 then "C+"
    else if score >= 62.5 then "C"
    else if score >= 89.5 then "C-"
    else if score >= 49.5 then "D"
    else "E";

val  no = [1,2,3,4,5,6,7,8,9,10] : int list;
val ID = ["410021001","410021002","410021003","410021004","410021005","410021006","410021007","410021008","410021009","410021010"] : string list;
val HW1 = [90.0,85.0,90.0,117.0,85.0,90.0,117.0,117.0,63.0,117.0] : real list;
val HW2 = [84.5,49.0,110.5,85.0,56.0,65.0,110.5,65.0,59.5,110.5] : real list;
val HW3 = [117.0,80.0,117.0,0.0,50.0,65.0,65.0,50.0,50.0,117.0] : real list;
val Midterm = [60.0,57.0,68.0,44.0,57.0,72.0,69.0,43.0,51.0,53.0] : real list;
val Final = [66.0,64.0,62.0,55.0,67.0,66.0,43.0,54.0,75.0,75.0] : real list;
val Name = ["Alan","Bob","Carrie","David","Ethan","Frank","Gary","Helen","Igor","Jeff"] : string list;

val HW11 = map(fn x =>x*0.1)HW1;
val HW22 = map(fn x =>x*0.1)HW2;
val HW33 = map(fn x =>x*0.1)HW3;
val Mid = map(fn x =>x*0.3)Midterm;
val fin = map(fn x =>x*0.4)Final;

val hw12 = add_lists HW11 HW22;
val hw123 = add_lists hw12 HW33;
val hw123mid = add_lists hw123 Mid
val hw123_mid_final = add_lists hw123mid fin : real list;

val (no1, no, std1, id1, stdname1, hw123_mid_final, ID, Name ) = 
(hd(no), tl(no), hd(hw123_mid_final), hd(ID), hd(Name),tl(hw123_mid_final), tl(ID), tl(Name));
val grade1 = gradecal std1;

val (no2, no, std2, id2, stdname2, hw123_mid_final, ID, Name) = 
(hd(no), tl(no), hd(hw123_mid_final), hd(ID), hd(Name),tl(hw123_mid_final), tl(ID), tl(Name));
val grade2 = gradecal std2;

val (no3, no, std3, id3, stdname3, hw123_mid_final, ID, Name) = 
(hd(no), tl(no), hd(hw123_mid_final), hd(ID), hd(Name),tl(hw123_mid_final), tl(ID), tl(Name));
val grade3 = gradecal std3;

val (no4, no, std4, id4, stdname4, hw123_mid_final, ID, Name) = 
(hd(no), tl(no), hd(hw123_mid_final), hd(ID), hd(Name),tl(hw123_mid_final), tl(ID), tl(Name));
val grade4 = gradecal std4;

val (no5, no, std5, id5, stdname5, hw123_mid_final, ID, Name) = 
(hd(no), tl(no), hd(hw123_mid_final), hd(ID), hd(Name),tl(hw123_mid_final), tl(ID), tl(Name));
val grade5 = gradecal std5;

val (no6, no, std6, id6, stdname6, hw123_mid_final, ID, Name) = 
(hd(no), tl(no), hd(hw123_mid_final), hd(ID), hd(Name),tl(hw123_mid_final), tl(ID), tl(Name));
val grade6 = gradecal std6;

val (no7, no, std7, id7, stdname7, hw123_mid_final, ID, Name) = 
(hd(no), tl(no), hd(hw123_mid_final), hd(ID), hd(Name),tl(hw123_mid_final), tl(ID), tl(Name));
val grade7 = gradecal std7;

val (no8, no, std8, id8, stdname8, hw123_mid_final, ID, Name) = 
(hd(no), tl(no), hd(hw123_mid_final), hd(ID), hd(Name),tl(hw123_mid_final), tl(ID), tl(Name));
val grade8 = gradecal std8;

val (no9, no, std9, id9, stdname9, hw123_mid_final, ID, Name) = 
(hd(no), tl(no), hd(hw123_mid_final), hd(ID), hd(Name),tl(hw123_mid_final), tl(ID), tl(Name));
val grade9 = gradecal std9;

val (no10, no, std10, id10, stdname10, hw123_mid_final, ID, Name) = 
(hd(no), tl(no), hd(hw123_mid_final), hd(ID), hd(Name),tl(hw123_mid_final), tl(ID), tl(Name));
val grade10 = gradecal std10;

val _ = print ("\n" ^ "NO        ID  NAME    HW1     HW2     HW3 Midterm   Final   Score   Grade\n" ^Int.toString no1 ^ "  " ^ id1 ^ "  "^  stdname1 ^ "   "  ^ "  90    84.5     117      60      66    "^ Real.toString std1 ^ "   " ^ grade1 ^ "\n" ^
Int.toString no2 ^ "  " ^ id2 ^ "  "^  stdname2 ^ "    " ^   "  85      49      80      57      64    " ^ Real.toString std2 ^ "    " ^ grade2 ^ "\n"^
Int.toString no3 ^ "  " ^ id3 ^ "  "^  stdname3 ^ " " ^ "  90   110.5     117      68      62    " ^ Real.toString std3 ^ "   " ^ grade3 ^ "\n"^
Int.toString no4 ^ "  " ^ id4 ^ "  "^  stdname4 ^ "  " ^ " 117      85       0      44      55    "^ Real.toString std4 ^ "    " ^ grade4 ^ "\n"^
Int.toString no5 ^ "  " ^ id5 ^ "  "^  stdname5 ^ "  " ^ "  85      56      50      57      67    "^ Real.toString std5 ^ "    " ^ grade5 ^ "\n"^
Int.toString no6 ^ "  " ^ id6 ^ "  "^  stdname6 ^ "  " ^ "  90      65      65      72      66    "^ Real.toString std6 ^ "    " ^ grade6 ^ "\n"^
Int.toString no7 ^ "  " ^ id7 ^ "  "^  stdname7 ^ "   " ^ " 117   110.5      65      69      43    "^ Real.toString std7 ^ "   " ^ grade7 ^ "\n"^
Int.toString no8 ^ "  " ^ id8 ^ "  "^  stdname8 ^ "  " ^ " 117      65      50      43      54    "^ Real.toString std8 ^ "    " ^ grade8 ^ "\n"^
Int.toString no9 ^ "  " ^ id9 ^ "  "^  stdname9 ^ "   " ^ "  63    59.5      50      51      75    "^ Real.toString std9 ^ "   " ^ grade9 ^ "\n"^
Int.toString no10 ^ " " ^ id10 ^ "  "^  stdname10 ^ "   " ^ " 117   110.5     117      53      75    "^ Real.toString std10 ^ "   " ^ grade10 ^ "\n");

