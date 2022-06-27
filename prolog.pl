:- initialization(main).

print(No,Id,Name,S,Hw1,Hw2,Hw3,Mid,Final) :-
    (   S >= 89.5 ->
        write(No),write(Id),write(Name),write(Hw1),write(Hw2),write(Hw3),write(Mid),write(Final),format('   ~2f', [S]),write('      A+');   
        S >= 84.5 ->
        write(No),write(Id),write(Name),write(Hw1),write(Hw2),write(Hw3),write(Mid),write(Final),format('   ~2f', [S]),write('       A');   
        S >= 79.5 ->
        write(No),write(Id),write(Name),write(Hw1),write(Hw2),write(Hw3),write(Mid),write(Final),format('   ~2f', [S]),write('      A-');   
        S >= 76.5 ->
        write(No),write(Id),write(Name),write(Hw1),write(Hw2),write(Hw3),write(Mid),write(Final),format('   ~2f', [S]),write('      B+');   
        S >= 72.5 ->
        write(No),write(Id),write(Name),write(Hw1),write(Hw2),write(Hw3),write(Mid),write(Final),format('   ~2f', [S]),write('       B');   
        S >= 69.5 ->
        write(No),write(Id),write(Name),write(Hw1),write(Hw2),write(Hw3),write(Mid),write(Final),format('   ~2f', [S]),write('      B-');   
        S >= 66.5 ->
        write(No),write(Id),write(Name),write(Hw1),write(Hw2),write(Hw3),write(Mid),write(Final),format('   ~2f', [S]),write('      C+');   
        S >= 62.5 ->
        write(No),write(Id),write(Name),write(Hw1),write(Hw2),write(Hw3),write(Mid),write(Final),format('   ~2f', [S]),write('       C');   
        S >= 59.5 ->
        write(No),write(Id),write(Name),write(Hw1),write(Hw2),write(Hw3),write(Mid),write(Final),format('   ~2f', [S]),write('      C-');   
        S >= 49.5 ->
        write(No),write(Id),write(Name),write(Hw1),write(Hw2),write(Hw3),write(Mid),write(Final),format('   ~2f', [S]),write('       D');   
        write(No),write(Id),write(Name),write(Hw1),write(Hw2),write(Hw3),write(Mid),write(Final),format('   ~2f', [S]),write('       E')
    ).

main:- Alan = [' 1  ',410021001,'    Alan',90,84.5,117,60,66|_],
        Bob = [' 2  ',410021002,'     Bob',85,49,80,57,64|_],
        Carrie = [' 3  ',410021003,'  Carrie',90,110.5,117,68,62|_],
        David = [' 4  ',410021004,'   David',117,85,0,44,55|_],
        Ethan = [' 5  ',410021005,'   Ethan',85,56,50,57,67|_],
        Frank = [' 6  ',410021006,'   Frank',90,65,65,72,66|_],
        Gary = [' 7  ',410021007,'    Gary',117,110.5,65,69,43|_],
        Helen = [' 8  ',410021008,'   Helen',117,65,50,43,54|_],
        Igor = [' 9  ',410021009,'    Igor',63,59.5,50,51,75|_],
        Jeff = ['10  ',410021010,'    Jeff',117,110.5,117,53,75|_],
        nth0(3,Alan,A1),nth0(4,Alan,A2),nth0(5,Alan,A3),nth0(6,Alan,Amid),nth0(7,Alan,Afinal),
        nth0(0,Alan,Ano),nth0(1,Alan,Aid),nth0(2,Alan,Aname),
        A is A1*0.1+A2*0.1+A3*0.1+Amid*0.3+Afinal*0.4,
        nth0(3,Bob,B1),nth0(4,Bob,B2),nth0(5,Bob,B3),nth0(6,Bob,Bmid),nth0(7,Bob,Bfinal),
        nth0(0,Bob,Bno),nth0(1,Bob,Bid),nth0(2,Bob,Bname),
        B is B1*0.1+B2*0.1+B3*0.1+Bmid*0.3+Bfinal*0.4,
        nth0(3,Carrie,C1),nth0(4,Carrie,C2),nth0(5,Carrie,C3),nth0(6,Carrie,Cmid),nth0(7,Carrie,Cfinal),
        nth0(0,Carrie,Cno),nth0(1,Carrie,Cid),nth0(2,Carrie,Cname),
        C is C1*0.1+C2*0.1+C3*0.1+Cmid*0.3+Cfinal*0.4,
        nth0(3,David,D1),nth0(4,David,D2),nth0(5,David,D3),nth0(6,David,Dmid),nth0(7,David,Dfinal),
        nth0(0,David,Dno),nth0(1,David,Did),nth0(2,David,Dname),
        D is D1*0.1+D2*0.1+D3*0.1+Dmid*0.3+Dfinal*0.4,
        nth0(3,Ethan,E1),nth0(4,Ethan,E2),nth0(5,Ethan,E3),nth0(6,Ethan,Emid),nth0(7,Ethan,Efinal),
        nth0(0,Ethan,Eno),nth0(1,Ethan,Eid),nth0(2,Ethan,Ename),
        E is E1*0.1+E2*0.1+E3*0.1+Emid*0.3+Efinal*0.4,
        nth0(3,Frank,F1),nth0(4,Frank,F2),nth0(5,Frank,F3),nth0(6,Frank,Fmid),nth0(7,Frank,Ffinal),
        nth0(0,Frank,Fno),nth0(1,Frank,Fid),nth0(2,Frank,Fname),
        F is F1*0.1+F2*0.1+F3*0.1+Fmid*0.3+Ffinal*0.4,
        nth0(3,Gary,G1),nth0(4,Gary,G2),nth0(5,Gary,G3),nth0(6,Gary,Gmid),nth0(7,Gary,Gfinal),
        nth0(0,Gary,Gno),nth0(1,Gary,Gid),nth0(2,Gary,Gname),
        G is G1*0.1+G2*0.1+G3*0.1+Gmid*0.3+Gfinal*0.4,
        nth0(3,Helen,H1),nth0(4,Helen,H2),nth0(5,Helen,H3),nth0(6,Helen,Hmid),nth0(7,Helen,Hfinal),
        nth0(0,Helen,Hno),nth0(1,Helen,Hid),nth0(2,Helen,Hname),
        H is H1*0.1+H2*0.1+H3*0.1+Hmid*0.3+Hfinal*0.4,
        nth0(3,Igor,I1),nth0(4,Igor,I2),nth0(5,Igor,I3),nth0(6,Igor,Imid),nth0(7,Igor,Ifinal),
        nth0(0,Igor,Ino),nth0(1,Igor,Iid),nth0(2,Igor,Iname),
        I is I1*0.1+I2*0.1+I3*0.1+Imid*0.3+Ifinal*0.4,
        nth0(3,Jeff,J1),nth0(4,Jeff,J2),nth0(5,Jeff,J3),nth0(6,Jeff,Jmid),nth0(7,Jeff,Jfinal),
        nth0(0,Jeff,Jno),nth0(1,Jeff,Jid),nth0(2,Jeff,Jname),
        J is J1*0.1+J2*0.1+J3*0.1+Jmid*0.3+Jfinal*0.4,
        write('NO         ID    NAME     HW1     HW2     HW3 Midterm   Final   Score   Grade'),nl,
        print(Ano,Aid,Aname,A,'      90','    84.5','     117','      60','      66'),nl,
        print(Bno,Bid,Bname,B,'      85','      49','      80','      57','      64'),nl,
        print(Cno,Cid,Cname,C,'      90','   110.5','     117','      68','      62'),nl,
        print(Dno,Did,Dname,D,'     117','      85','       0','      44','      55'),nl,
        print(Eno,Eid,Ename,E,'      85','      56','      50','      57','      67'),nl,
        print(Fno,Fid,Fname,F,'      90','      65','      65','      72','      66'),nl,
        print(Gno,Gid,Gname,G,'     117','   110.5','      65','      69','      43'),nl,
        print(Hno,Hid,Hname,H,'     117','      65','      50','      43','      54'),nl,
        print(Ino,Iid,Iname,I,'      63','    59.5','      50','      51','      75'),nl,
        print(Jno,Jid,Jname,J,'     117','   110.5','     117','      53','      75').