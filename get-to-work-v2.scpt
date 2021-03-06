FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � Modified version of Jessica Su's Applescript, get-to-work.scpt. Added a timer that prompts me every 15 seconds threatening to close Google Chrome until 60 seconds is up.     � 	 	T   M o d i f i e d   v e r s i o n   o f   J e s s i c a   S u ' s   A p p l e s c r i p t ,   g e t - t o - w o r k . s c p t .   A d d e d   a   t i m e r   t h a t   p r o m p t s   m e   e v e r y   1 5   s e c o n d s   t h r e a t e n i n g   t o   c l o s e   G o o g l e   C h r o m e   u n t i l   6 0   s e c o n d s   i s   u p .   
  
 l     ��  ��    "  Original explanation below:     �   8   O r i g i n a l   e x p l a n a t i o n   b e l o w :      l     ��  ��   hb This script tells me to get back to work when I'm goofing off too much.  Every two minutes, it checks if I am actively using Google Chrome.  It keeps track of these checks for the past twenty minutes, and if enough of the checks say "yes," it scolds me.  But it only scolds me at ten minute intervals, at most.  It is implemented using a circular queue.     �  �   T h i s   s c r i p t   t e l l s   m e   t o   g e t   b a c k   t o   w o r k   w h e n   I ' m   g o o f i n g   o f f   t o o   m u c h .     E v e r y   t w o   m i n u t e s ,   i t   c h e c k s   i f   I   a m   a c t i v e l y   u s i n g   G o o g l e   C h r o m e .     I t   k e e p s   t r a c k   o f   t h e s e   c h e c k s   f o r   t h e   p a s t   t w e n t y   m i n u t e s ,   a n d   i f   e n o u g h   o f   t h e   c h e c k s   s a y   " y e s , "   i t   s c o l d s   m e .     B u t   i t   o n l y   s c o l d s   m e   a t   t e n   m i n u t e   i n t e r v a l s ,   a t   m o s t .     I t   i s   i m p l e m e n t e d   u s i n g   a   c i r c u l a r   q u e u e .      l     ��������  ��  ��        l     ��  ��    = 7 function to find the sum of the elements in the queue.     �   n   f u n c t i o n   t o   f i n d   t h e   s u m   o f   t h e   e l e m e n t s   i n   t h e   q u e u e .      i         I      �� ���� 0 sum      ��   o      ���� 	0 queue  ��  ��    k     - ! !  " # " r      $ % $ I    �� &��
�� .corecnte****       **** & o     ���� 	0 queue  ��   % o      ���� 0 c   #  ' ( ' r     ) * ) m    	����  * o      ���� 0 i   (  + , + r     - . - m    ����   . o      ���� 	0 total   ,  / 0 / U    * 1 2 1 k    % 3 3  4 5 4 r     6 7 6 l    8���� 8 [     9 : 9 o    ���� 	0 total   : l    ;���� ; n     < = < 4    �� >
�� 
cobj > o    ���� 0 i   = o    ���� 	0 queue  ��  ��  ��  ��   7 o      ���� 	0 total   5  ?�� ? r     % @ A @ [     # B C B o     !���� 0 i   C m   ! "����  A o      ���� 0 i  ��   2 o    ���� 0 c   0  D�� D L   + - E E o   + ,���� 	0 total  ��     F G F l     ��������  ��  ��   G  H I H l     �� J K��   J4. Declare a circular queue.  The items are 0 if Google Chrome was not running, and 1 if it was running.  Before the check happens, the number at index "head" should indicate what program I was running twenty minutes ago.  After the check happens, I replace this number with the program I am running now.    K � L L\   D e c l a r e   a   c i r c u l a r   q u e u e .     T h e   i t e m s   a r e   0   i f   G o o g l e   C h r o m e   w a s   n o t   r u n n i n g ,   a n d   1   i f   i t   w a s   r u n n i n g .     B e f o r e   t h e   c h e c k   h a p p e n s ,   t h e   n u m b e r   a t   i n d e x   " h e a d "   s h o u l d   i n d i c a t e   w h a t   p r o g r a m   I   w a s   r u n n i n g   t w e n t y   m i n u t e s   a g o .     A f t e r   t h e   c h e c k   h a p p e n s ,   I   r e p l a c e   t h i s   n u m b e r   w i t h   t h e   p r o g r a m   I   a m   r u n n i n g   n o w . I  M N M l     O���� O r      P Q P J      R R  S T S m     ����   T  U V U m    ����   V  W X W m    ����   X  Y Z Y m    ����   Z  [ \ [ m    ����   \  ] ^ ] m    ����   ^  _ ` _ m    ����   `  a b a m    ����   b  c d c m    	����   d  e�� e m   	 
����  ��   Q o      ���� 	0 queue  ��  ��   N  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j   Head of the queue.    k � l l &   H e a d   o f   t h e   q u e u e . i  m n m l    o���� o r     p q p m    ����  q o      ���� 0 head  ��  ��   n  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v   Check every two minutes.    w � x x 2   C h e c k   e v e r y   t w o   m i n u t e s . u  y z y l    {���� { r     | } | m    ���� x } o      ���� 0 checkinterval  ��  ��   z  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   � ] W Number of elements in the queue that must be 1 before I am deemed to be "goofing off."    � � � � �   N u m b e r   o f   e l e m e n t s   i n   t h e   q u e u e   t h a t   m u s t   b e   1   b e f o r e   I   a m   d e e m e d   t o   b e   " g o o f i n g   o f f . " �  � � � l    ����� � r     � � � m    ����  � o      ���� 0 goofoffthreshold  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  1 ����� � T   1 � � k    , � �  � � � l     �� � ���   � $  Check which app is being run.    � � � � <   C h e c k   w h i c h   a p p   i s   b e i n g   r u n . �  � � � O     6 � � � r   $ 5 � � � 6 $ 3 � � � n   $ * � � � 1   ( *��
�� 
pnam � 4  $ (�� �
�� 
prcs � m   & '����  � =  + 2 � � � 1   , .��
�� 
pisf � m   / 1��
�� boovtrue � o      ���� 0 frontmostapp frontmostApp � m     ! � ��                                                                                  sevs  alis    �  Macintosh HD               �+s�H+  ��System Events.app                                              ������        ����  	                CoreServices    �+�"      ��1    ������  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  7 7��������  ��  ��   �  � � � l  7 7�� � ���   �   Make the check.    � � � �     M a k e   t h e   c h e c k . �  � � � Z   7 � ��� � � E  7 < � � � J   7 : � �  ��� � m   7 8 � � � � �  G o o g l e   C h r o m e��   � o   : ;���� 0 frontmostapp frontmostApp � k   ? � �  � � � r   ? E � � � m   ? @����  � n       � � � 4   A D�� �
�� 
cobj � o   B C���� 0 head   � o   @ A���� 	0 queue   �  ��� � Z   F � ����� � F   F b � � � @  F N � � � I   F L�� ����� 0 sum   �  ��� � o   G H���� 	0 queue  ��  ��   � o   L M���� 0 goofoffthreshold   � l  Q ^ ����� � G   Q ^ � � � =  Q T � � � o   Q R���� 0 head   � m   R S����  � =  W Z � � � o   W X���� 0 head   � m   X Y���� 
��  ��   � k   e � � �  � � � l  e e��������  ��  ��   �  � � � l  e e��������  ��  ��   �  � � � l  e e�� � ���   � f ` annoy me with a prompt every 15 seconds until I close Chrome or until 60 seconds timer runs out    � � � � �   a n n o y   m e   w i t h   a   p r o m p t   e v e r y   1 5   s e c o n d s   u n t i l   I   c l o s e   C h r o m e   o r   u n t i l   6 0   s e c o n d s   t i m e r   r u n s   o u t �  � � � r   e l � � � m   e h���� < � o      ���� 0 
thecounter 
theCounter �  � � � r   m t � � � m   m p����  � o      ���� 0 theinterval theInterval �  � � � W   u � � � � k    � � �  � � � l   ����~��  �  �~   �  � � � l   �} � ��}   � 2 , Bring dialog to front of current active app    � � � � X   B r i n g   d i a l o g   t o   f r o n t   o f   c u r r e n t   a c t i v e   a p p �  � � � I   ��|�{�z
�| .miscactvnull��� ��� null�{  �z   �  � � � I  � ��y � �
�y .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � � � � � � S h o u l d n ' t   y o u   b e   w o r k i n g ?   P r e s s   O K   t o   q u i t   C h r o m e   a n d   g e t   b a c k   t o   w o r k :   � o   � ��x�x 0 
thecounter 
theCounter � m   � � � � � � �    s e c o n d s � �w � �
�w 
btns � J   � � � �  ��v � m   � � � � � � �  C l o s e   C h r o m e�v   � �u ��t
�u 
givu � o   � ��s�s 0 theinterval theInterval�t   �    l  � ��r�q�p�r  �q  �p    l  � ��o�o   ^ X check if I clicked Close Chrome button (exit counter if I did, otherwise, pester again)    � �   c h e c k   i f   I   c l i c k e d   C l o s e   C h r o m e   b u t t o n   ( e x i t   c o u n t e r   i f   I   d i d ,   o t h e r w i s e ,   p e s t e r   a g a i n )  Q   � �	
�n	 k   � �  r   � � n   � � 1   � ��m
�m 
bhit 1   � ��l
�l 
rslt o      �k�k 0 x    l  � ��j�i�h�j  �i  �h    Z   � ��g�f =  � � o   � ��e�e 0 x   m   � � �  C l o s e   C h r o m e k   � �  l  � ��d�c�b�d  �c  �b     O   � �!"! I  � ��a�`�_
�a .aevtquitnull��� ��� null�`  �_  " m   � �##�                                                                                  rimZ  alis    h  Macintosh HD               �+s�H+  �Google Chrome.app                                               �{�ꛘ        ����  	                Applications    �+�"      ����    �  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��    $%$ l  � ��^�]�\�^  �]  �\  % &'&  S   � �' (�[( l  � ��Z�Y�X�Z  �Y  �X  �[  �g  �f   )�W) l  � ��V�U�T�V  �U  �T  �W  
 R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  �n   *+* l  � ��P�O�N�P  �O  �N  + ,-, r   � �./. \   � �010 o   � ��M�M 0 
thecounter 
theCounter1 o   � ��L�L 0 theinterval theInterval/ o      �K�K 0 
thecounter 
theCounter- 2�J2 l  � ��I�H�G�I  �H  �G  �J   � =  y ~343 o   y |�F�F 0 
thecounter 
theCounter4 m   | }�E�E   � 565 l  � ��D�C�B�D  �C  �B  6 787 l  � ��A9:�A  9 &   close Chrome when time runs out   : �;; @   c l o s e   C h r o m e   w h e n   t i m e   r u n s   o u t8 <=< O   � �>?> I  � ��@�?�>
�@ .aevtquitnull��� ��� null�?  �>  ? m   � �@@�                                                                                  rimZ  alis    h  Macintosh HD               �+s�H+  �Google Chrome.app                                               �{�ꛘ        ����  	                Applications    �+�"      ����    �  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  = ABA l  � ��=�<�;�=  �<  �;  B C�:C l  � ��9�8�7�9  �8  �7  �:  ��  ��  ��  ��   � r  DED m  �6�6  E n      FGF 4  �5H
�5 
cobjH o  	
�4�4 0 head  G o  �3�3 	0 queue   � IJI r  KLK [  MNM l O�2�1O `  PQP l R�0�/R o  �.�. 0 head  �0  �/  Q m  �-�- 
�2  �1  N m  �,�, L o      �+�+ 0 head  J STS l �*�)�(�*  �)  �(  T UVU l �'WX�'  W   For debugging purposes.   X �YY 0   F o r   d e b u g g i n g   p u r p o s e s .V Z[Z I �&\�%
�& .ascrcmnt****      � ****\ o  �$�$ 0 head  �%  [ ]^] I  �#_�"
�# .ascrcmnt****      � ****_ o  �!�! 0 frontmostapp frontmostApp�"  ^ `a` I !&� b�
�  .ascrcmnt****      � ****b o  !"�� 	0 queue  �  a cdc l ''����  �  �  d e�e I ',�f�
� .sysodelanull��� ��� nmbrf o  '(�� 0 checkinterval  �  �  ��  ��  ��       �ghi�  g ��� 0 sum  
� .aevtoappnull  �   � ****h � ��jk�� 0 sum  � �l� l  �� 	0 queue  �  j ����
� 	0 queue  � 0 c  � 0 i  �
 	0 total  k �	�
�	 .corecnte****       ****
� 
cobj� .�j  E�OkE�OjE�O �kh���/E�O�kE�[OY��O�i �m��no�
� .aevtoappnull  �   � ****m k    1pp  Mqq  mrr  yss  �tt  ���  �  �  n  o '��� �������� �����u���� ����������������� � ��� �������������#����������� 
� 	0 queue  �  0 head  �� x�� 0 checkinterval  �� �� 0 goofoffthreshold  
�� 
prcs
�� 
pnamu  
�� 
pisf�� 0 frontmostapp frontmostApp
�� 
cobj�� 0 sum  
�� 
bool�� <�� 0 
thecounter 
theCounter�� �� 0 theinterval theInterval
�� .miscactvnull��� ��� null
�� 
btns
�� 
givu�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� 0 x  
�� .aevtquitnull��� ��� null��  ��  
�� .ascrcmnt****      � ****
�� .sysodelanull��� ��� nmbr�2jjjjjjjjjj�vE�OkE�O�E�O�E�OhZ� *�k/�,�[�,\Ze81E�UO�kv� �k���/FO*�k+ �	 �� 
 	�� a &a & �a E` Oa E` O zh_ j *j Oa _ %a %a a kva _ a  O 1_ a ,E` O_ a    a ! *j "UOOPY hOPW X # $hO_ _ E` OP[OY��Oa ! *j "UOPY hY j���/FO��#kE�O�j %O�j %O�j %O�j &[OY��ascr  ��ޭ