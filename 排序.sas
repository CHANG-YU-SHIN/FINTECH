data  sgplot;
input no name $ gray data ;
cards;
1	智冠	13 29
2	研華	1	11
3	友通	5	5
4	橘子	3	1
5	飛捷	4	7
6	安勤	8	4
7	伍豐	7	16
8	三商電	10	22
9	振樺電	11	24
10	樺漢	19	12
11	精誠	12	15
12	同亨	9	19
13	群益期	6	10
14	群益證	15	28
15	華南金	27	23
16	富邦金	20	6
17	國泰金	2	8
18	開發金	18	9
19	玉山金	23	18
20	元大金	28	25
21	兆豐金	21	2
22	台新金	22	21
23	新光金	16	3
24	國票金	14	17
25	永豐金	25	26
26	中信金	26	14
27	第一金	24	13
28	日盛金	17	27
29	合庫金	29	20
;
run;

proc SGplot  data=sgplot;
SCATTER X=data Y=gray / DATALABEL=no ;  /* 散佈圖圖 */
REFLINE 10 20 30 / LABEL=("10" "20" "30") TRANSPARENCY=0.3;
REFLINE 10 20 30 / AXIS=X TRANSPARENCY=0.3;
YAXIS LABEL="灰關聯分析法排序";
XAXIS LABEL="資料包落分析法排序";
title"排序";
run;
