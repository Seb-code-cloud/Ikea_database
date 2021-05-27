#Statement er forklaret. 
USE IKEA_Gruppe1;

#Værdier i "Customer"
# Statement <INSERT INTO Customer VALUES> betyder vi ønsker at indsætte følgende værdier i tabellen "Customer"
# <(1, "Christina_S@gmail.com", "23/03/2021", "Christina", "Sørensen", "22 92 31 23", "KeaErNice123", "Denmark", "Nørre Voldgade 25 1.tv")>
# Efter hvert komma, skiftes der til en ny række.
# Der kan indsættes så mange værdier som der bliver tilladt ved oprettelse af tabellen.
INSERT INTO Customer VALUES
	(1, "Christina_S@gmail.com", "23/03/2021", "Christina", "Sørensen", "22 92 31 23", "KeaErNice123", "Denmark", "Nørre Voldgade 25 1.tv"),
    (2, "JensChristensen@hotmail.com", "14/11/2020", "Jens", "Petersen", "03 14 75 78", "123j4ko", "Norway", "P.O. Box 503, 2125 Dictum. Avenue"),
    (3, "Birgiet123@gmail.com", "26/03/2021", "Sarah", "Wind", "20 76 30 95", "o3k24on6", "Denmark", "7951 Praesent Street"),
    (4, "lorem.lorem@hotmail.com", "16/10/2020", "Charissa", "Jensen", "57 91 57 19", "u1u23h4u", "Norway", "326-562 Luctus Rd."),
    (5, "et.pede.Nunc@live.dk", "11/04/2021", "Catherine", "Lykkeberg", "06 73 71 06", "hi12j4i6", "Denmark", "P.O. Box 996, 2570 Vestibulum Street"),
    (6, "pharetra.felis@Hvidovrenettet.dk", "23/05/2020", "Caesar", "Friis", "10 06 21 14", "123o4ko123m4o", "Denmark", "8314 Mauris. Avenue"),
    (7, "fringilla@hotmail.com", "17/11/2020", "Sybil", "Iversen", "26 08 29 67", "o214ok5", "Norway", "P.O. Box 839, 3150 Ut St"),
    (8, "dictum.sapien@spark.dk", "12/11/2020", "Eliana", "Madsen", "38 72 95 57", "nifj1", "Norway", "7603 Ante Rd."),
    (9, "mauris@microsoft.com", "19/11/2020", "Hedy", "Johansen", "05 29 39 56", "5342o5o", "Denmark", "P.O. Box 151, 5322 Sed Avenue"),
    (10, "urna.Ut.tincidunt@gmail.com", "02/03/2021", "Clementine", "Krogh", "50 08 64 00", "4351onfonho1", "Denmark", "135-6479 Lorem Rd"),
    (11, "libero.Integer@gmail.com", "20/09/2020", "Tasha", "Lausten", "85 09 65 79", "omgomr1o", "Denmark", "842-6770 Tincidunt. Rd"),
    (12, "pharetra.nibh@scelerisque.co.uk", "16/03/2021", "Hayes", "Millandt", "51 07 39 93", "1momfohml1", "Sweeden", "646-4141 Placerat, Av."),
    (13, "semper.auctor.Mauris@molestie.ca", "01/06/2020", "Byron", "Villumsen", "76 19 34 03", "mklfmgkmf2", "Denmark", "4573 Proin Street"),
    (14, "ridiculus@euaccumsansed.edu", "20/03/2021", "Marny", "Rasmussen", "75 43 54 98", "1nmi4m5o2m", "Sweeden", "Ap #848-3516 Molestie Avenue"),
    (15, "interdum.libero@eu.edu", "10/03/2021", "Florence", "Rasmussen", "78 51 09 13", "go1mgomr", "Denmark", "Ap #508-7578 Porttitor St."),
    (16, "Etiam@per.edu", "15/08/2020", "Hilary", "Karma", "69 38 15 19", "1okfgo1", "Denmark", "110-1819 Proin St."),
    (17, "Duis.gravida@libero.co.uk", "09/09/2020", "Keith", "Poulsen", "52 28 44 19", "ok1oj51", "Sweeden", "Ap #164-7286 Sem Road"),
    (18, "per.conubia@egestasligulaNullam.net", "23/10/2020", "Wyoming", "Houlberg", "25 63 22 94", "4okogkobko", "Sweeden", "822-7243 Sed Avenue"),
    (19, "tempor.bibendum@enimNunc.org", "12/03/2021", "Nita", "Elkjaer", "73 14 98 18", "naldwop214", "Denmark", "Ap #498-7966 Eu Rd."),
    (20, "conubia@a.ca", "17/05/2020", "Ocean", "Kali", "91 69 58 90", "okbn2512", "Sweeden", "982-9992 Fusce Av.");

#Værdier i tabellen "IKEA_Stock"    
INSERT INTO IKEA_Stock VALUES
	(1, "Nybrovej 2, 2820 ", "Gentofte"),
    (2, "Mårkærvej 15, 2630", "Taastrup");

#Værdier i tabellen "Category"
INSERT INTO Category VALUES
	(1, "Borde", "Borde der passer til alle hjem."),
	(2, "Stole", "Stole der passer til alle hjem."),
    (3, "Spejle", "Spejle fra gulv til loft, såvel som små."),
    (4, "Garderobeskabe", "Skabe til soveværelset eller børneværelset"),
    (5, "Senge", "Senge i alle prisleje "),
    (6, "Tilbehør", "Diverse skraldespande, skuffer og kasser"),
    (7, "Døre", "Døre der matcher dit hjem"),
    (8, "Vaser", "Vaser til lejligheden"),
    (9, "Køkken", "Køkken i alle former for kvalitet"),
    (10, "Kommode", "Kommode til studen, værelset eller andet");
    
#Værdier i tabellen "Orders"    
INSERT INTO Orders VALUES
	(1, 1, "250kr", "Arnold Nielsens Boulevard 41", "28/4-2021", "Christina_S@gmail.com"),
    (2, 2, "705kr", "P.O. Box 503, 2125 Dictum. Avenue", "28/1-2021", "JensChristensen@hotmail.com"),
    (3, 3, "1.250kr", "7951 Praesent Street", "28/2-2021", "Birgiet123@gmail.com"),
    (4, 4, "670kr", "326-562 Luctus Rd.", "28/2-2021", "lorem.lorem@hotmail.com"),
    (5, 5, "500kr", "P.O. Box 996, 2570 Vestibulum Street", "18/3-2021", "et.pede.Nunc@live.dk"),
    (6, 6, "150kr", "8314 Mauris. Avenue", "15/2-2021", "pharetra.felis@Hvidovrenettet.dk"),
    (7, 7, "2.500kr", "P.O. Box 839, 3150 Ut St.", "15/3-2021", "fringilla@hotmail.com"),
    (8, 8, "470kr", "7603 Ante Rd.", "28/1-2021", "dictum.sapien@spark.dk"),
    (9, 1, "1.000kr", "Arnold Nielsens Boulevard 41", "20/4-2021", "Christina_S@gmail.com"),
    (10, 10, "500kr", "135-6479 Lorem Rd.", "28/1-2021", "urna.Ut.tincidunt@gmail.com"),
    (11, 10, "500kr", "135-6479 Lorem Rd.", "16/4-2021", "urna.Ut.tincidunt@gmail.com"),
    (12, 11, "250kr", "135-6479 Lorem Rd.", "12/4-2021", "libero.Integer@gmail.com"),
    (13, 12, "780kr", "842-6770 Tincidunt. Rd.", "03/4-2021", "pharetra.nibh@scelerisque.co.uk"),
    (14, 13, "910kr", "646-4141 Placerat, Av.", "07/3-2021", "semper.auctor.Mauris@molestie.ca"),
    (15, 15, "690kr", "Ap #848-3516 Molestie Avenue", "08/4-2021", "interdum.libero@eu.edu"),
    (16, 16, "700kr", "Ap #508-7578 Porttitor St.", "05/4-2021", "Etiam@per.edu"),
    (17, 17, "500kr", "110-1819 Proin St.", "02/4-2021", "Duis.gravida@libero.co.uk"),
    (18, 1, "430kr", "Arnold Nielsens Boulevard 41", "25/2-2021", "Christina_S@gmail.com"),
    (19, 20, "270kr", "982-9992 Fusce Av.", "27/4-2021", "conubia@a.ca"),
    (20, 19, "190kr", "Ap #498-7966 Eu Rd.", "21/3-2021", "tempor.bibendum@enimNunc.org");

#Værdier i tabellen "Products"
INSERT INTO Products VALUES
	(1, 4, 1, "54.352.114", "BOAXEL", "Du kan få plads til mere, end du tror, på lidt plads.", 6, 32, 225),
    (2, 4, 1, "54.352.114", "BOAXEL", "Du kan få plads til mere, end du tror, på lidt plads.", 7, 6, 250),
    (3, 4, 1, "54.352.114", "BOAXEL", "Du kan få plads til mere, end du tror, på lidt plads.", 8, 9, 275),
    (4, 4, 1, "54.352.114", "BOAXEL", "Du kan få plads til mere, end du tror, på lidt plads.", 9, 10, 300),
    (5, 4, 1, "54.352.114", "BOAXEL", "Du kan få plads til mere, end du tror, på lidt plads.", 10, 2, 325),
    (6, 4, 2, "54.352.114", "BOAXEL", "Du kan få plads til mere, end du tror, på lidt plads.", 6, 66, 225),
    (7, 4, 2, "54.352.114", "BOAXEL", "Du kan få plads til mere, end du tror, på lidt plads.", 7, 2, 250),
    (8, 4, 2, "54.352.114", "BOAXEL", "Du kan få plads til mere, end du tror, på lidt plads.", 8, 15, 275),
    (9, 4, 2, "54.352.114", "BOAXEL", "Du kan få plads til mere, end du tror, på lidt plads.", 9, 18, 300),
    (10, 4, 2, "54.352.114", "BOAXEL", "Du kan få plads til mere, end du tror, på lidt plads.", 10, 4, 325),
    (11, 1, 1, "57.358.119", "HAVSTA", "Bordet der passer til alle stuer.", 6, 5, 175),
    (12, 1, 1, "57.358.119", "HAVSTA", "Bordet der passer til alle stuer.", 7, 4, 200),
    (13, 1, 1, "57.358.119", "HAVSTA", "Bordet der passer til alle stuer.", 8, 16, 225),
    (14, 1, 1, "57.358.119", "HAVSTA", "Bordet der passer til alle stuer.", 9, 71, 250),
    (15, 1, 1, "57.358.119", "HAVSTA", "Bordet der passer til alle stuer.", 10, 2, 275),
    (16, 1, 2, "57.358.119", "HAVSTA", "Bordet der passer til alle stuer.", 6, 12, 175),
    (17, 1, 2, "57.358.119", "HAVSTA", "Bordet der passer til alle stuer.", 7, 56, 200),
    (18, 1, 2, "57.358.119", "HAVSTA", "Bordet der passer til alle stuer.", 8, 23, 225),
    (19, 1, 2, "57.358.119", "HAVSTA", "Bordet der passer til alle stuer.", 9, 1, 250),
    (20, 1, 2, "57.358.119", "HAVSTA", "Bordet der passer til alle stuer.", 10, 2, 275);
    
#Værdier i tabellen "Orders_Details"
INSERT INTO Orders_Details VALUES
	(1, 2, "82403277599"),
    (2, 5, "42208019199"),
    (3, 8, "47593764699"),
    (4, 2, "79921287599"),
    (5, 3, "96346413599"),
    (6, 5, "21450249299"),
    (7, 11, "67721063099"),
    (8, 12, "13439432899"),
    (9, 19, "91661691199"),
    (10, 4, "67719593599"),
    (11, 4, "56764752599"),
    (12, 3, "40657157299"),
    (13, 6, "43315578499"),
    (14, 16, "80828222399"),
    (15, 15, "26850459299"),
    (16, 14, "34499405899"),
    (17, 20, "95680225999"),
    (18, 19, "73988771899"),
    (19, 1, "15385235799"),
    (20, 4, "69201167499");
    
#Værdier i tabellen "Sales"
INSERT INTO Sales VALUES
	(1, 2, "54.352.114", 5, "22 months"),
    (2, 1, "54.352.114", 7, "14 months"),
    (3, 1, "57.358.119", 10, "2 months"),
    (4, 1, "54.352.114", 9, "5 months"),
    (5, 1, "57.358.119", 6, "17 months"),
    (6, 1, "57.358.119", 8, "7 months"),
    (7, 1, "54.352.114", 7, "10 months"),
    (8, 1, "57.358.119", 3, "36 months"),
    (9, 2, "54.352.114", 9, "4 months"),
    (10, 2, "57.358.119", 10, "1 months"),
    (11, 2, "57.358.119", 9, "4 months"),
    (12, 2, "54.352.114", 2, "50 months"),
    (13, 2, "57.358.119", 3, "24 months"),
    (14, 2, "57.358.119", 4, "10 months"),
    (15, 2, "57.358.119", 7, "6 months"),
    (16, 2, "54.352.114", 1, "50 months"),
    (17, 1, "54.352.114", 2, "40 months"),
    (18, 1, "54.352.114", 2, "24 months"),
    (19, 1, "57.358.119", 1, "36 months"),
    (20, 1, "57.358.119", 4, "12 months");