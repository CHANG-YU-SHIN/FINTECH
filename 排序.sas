data  sgplot;
input no name $ gray data ;
cards;
1	���a	13 29
2	���	1	11
3	�ͳq	5	5
4	��l	3	1
5	����	4	7
6	�w��	8	4
7	����	7	16
8	�T�ӹq	10	22
9	����q	11	24
10	��~	19	12
11	���	12	15
12	�P��	9	19
13	�s�q��	6	10
14	�s�q��	15	28
15	�ثn��	27	23
16	�I����	20	6
17	�����	2	8
18	�}�o��	18	9
19	�ɤs��	23	18
20	���j��	28	25
21	���ת�	21	2
22	�x�s��	22	21
23	�s����	16	3
24	�겼��	14	17
25	���ת�	25	26
26	���H��	26	14
27	�Ĥ@��	24	13
28	�鲱��	17	27
29	�X�w��	29	20
;
run;

proc SGplot  data=sgplot;
SCATTER X=data Y=gray / DATALABEL=no ;  /* ���G�Ϲ� */
REFLINE 10 20 30 / LABEL=("10" "20" "30") TRANSPARENCY=0.3;
REFLINE 10 20 30 / AXIS=X TRANSPARENCY=0.3;
YAXIS LABEL="�����p���R�k�Ƨ�";
XAXIS LABEL="��ƥ]�����R�k�Ƨ�";
title"�Ƨ�";
run;
