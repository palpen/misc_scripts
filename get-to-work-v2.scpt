FasdUAS 1.101.10   ��   ��    k             l     ��  ��   hb This script tells me to get back to work when I'm goofing off too much.  Every two minutes, it checks if I am actively using Google Chrome.  It keeps track of these checks for the past twenty minutes, and if enough of the checks say "yes," it scolds me.  But it only scolds me at ten minute intervals, at most.  It is implemented using a circular queue.     � 	 	�   T h i s   s c r i p t   t e l l s   m e   t o   g e t   b a c k   t o   w o r k   w h e n   I ' m   g o o f i n g   o f f   t o o   m u c h .     E v e r y   t w o   m i n u t e s ,   i t   c h e c k s   i f   I   a m   a c t i v e l y   u s i n g   G o o g l e   C h r o m e .     I t   k e e p s   t r a c k   o f   t h e s e   c h e c k s   f o r   t h e   p a s t   t w e n t y   m i n u t e s ,   a n d   i f   e n o u g h   o f   t h e   c h e c k s   s a y   " y e s , "   i t   s c o l d s   m e .     B u t   i t   o n l y   s c o l d s   m e   a t   t e n   m i n u t e   i n t e r v a l s ,   a t   m o s t .     I t   i s   i m p l e m e n t e d   u s i n g   a   c i r c u l a r   q u e u e .   
  
 l     ��������  ��  ��        l     ��  ��    = 7 function to find the sum of the elements in the queue.     �   n   f u n c t i o n   t o   f i n d   t h e   s u m   o f   t h e   e l e m e n t s   i n   t h e   q u e u e .      i         I      �� ���� 0 sum     ��  o      ���� 	0 queue  ��  ��    k     -       r         I    �� ��
�� .corecnte****       ****  o     ���� 	0 queue  ��    o      ���� 0 c        r         m    	����    o      ���� 0 i     ! " ! r     # $ # m    ����   $ o      ���� 	0 total   "  % & % U    * ' ( ' k    % ) )  * + * r     , - , l    .���� . [     / 0 / o    ���� 	0 total   0 l    1���� 1 n     2 3 2 4    �� 4
�� 
cobj 4 o    ���� 0 i   3 o    ���� 	0 queue  ��  ��  ��  ��   - o      ���� 	0 total   +  5�� 5 r     % 6 7 6 [     # 8 9 8 o     !���� 0 i   9 m   ! "����  7 o      ���� 0 i  ��   ( o    ���� 0 c   &  :�� : L   + - ; ; o   + ,���� 	0 total  ��     < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @4. Declare a circular queue.  The items are 0 if Google Chrome was not running, and 1 if it was running.  Before the check happens, the number at index "head" should indicate what program I was running twenty minutes ago.  After the check happens, I replace this number with the program I am running now.    A � B B\   D e c l a r e   a   c i r c u l a r   q u e u e .     T h e   i t e m s   a r e   0   i f   G o o g l e   C h r o m e   w a s   n o t   r u n n i n g ,   a n d   1   i f   i t   w a s   r u n n i n g .     B e f o r e   t h e   c h e c k   h a p p e n s ,   t h e   n u m b e r   a t   i n d e x   " h e a d "   s h o u l d   i n d i c a t e   w h a t   p r o g r a m   I   w a s   r u n n i n g   t w e n t y   m i n u t e s   a g o .     A f t e r   t h e   c h e c k   h a p p e n s ,   I   r e p l a c e   t h i s   n u m b e r   w i t h   t h e   p r o g r a m   I   a m   r u n n i n g   n o w . ?  C D C l     E���� E r      F G F J      H H  I J I m     ����   J  K L K m    ����   L  M N M m    ����   N  O P O m    ����   P  Q R Q m    ����   R  S T S m    ����   T  U V U m    ����   V  W X W m    ����   X  Y Z Y m    	����   Z  [�� [ m   	 
����  ��   G o      ���� 	0 queue  ��  ��   D  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   `   Head of the queue.    a � b b &   H e a d   o f   t h e   q u e u e . _  c d c l    e���� e r     f g f m    ����  g o      ���� 0 head  ��  ��   d  h i h l     ��������  ��  ��   i  j k j l     �� l m��   l   Check every two minutes.    m � n n 2   C h e c k   e v e r y   t w o   m i n u t e s . k  o p o l    q���� q r     r s r m    ���� x s o      ���� 0 checkinterval  ��  ��   p  t u t l     ��������  ��  ��   u  v w v l     �� x y��   x ] W Number of elements in the queue that must be 1 before I am deemed to be "goofing off."    y � z z �   N u m b e r   o f   e l e m e n t s   i n   t h e   q u e u e   t h a t   m u s t   b e   1   b e f o r e   I   a m   d e e m e d   t o   b e   " g o o f i n g   o f f . " w  { | { l    }���� } r     ~  ~ m    ����   o      ���� 0 goofoffthreshold  ��  ��   |  � � � l     ��������  ��  ��   �  ��� � l  1 ����� � T   1 � � k    , � �  � � � l     �� � ���   � $  Check which app is being run.    � � � � <   C h e c k   w h i c h   a p p   i s   b e i n g   r u n . �  � � � O     6 � � � r   $ 5 � � � 6 $ 3 � � � n   $ * � � � 1   ( *��
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
theCounter �  � � � r   m t � � � m   m p����  � o      ���� 0 theinterval theInterval �  � � � W   u � � � � k    � � �  � � � l   ��������  ��  ��   �  � � � l   � � ��   � 2 , Bring dialog to front of current active app    � � � � X   B r i n g   d i a l o g   t o   f r o n t   o f   c u r r e n t   a c t i v e   a p p �  � � � I   ��~�}�|
�~ .miscactvnull��� ��� null�}  �|   �  � � � I  � ��{ � �
�{ .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � � � � � � S h o u l d n ' t   y o u   b e   w o r k i n g ?   P r e s s   O K   t o   q u i t   C h r o m e   a n d   g e t   b a c k   t o   w o r k :   � o   � ��z�z 0 
thecounter 
theCounter � m   � � � � � � �    s e c o n d s � �y � �
�y 
btns � J   � � � �  ��x � m   � � � � � � �  C l o s e   C h r o m e�x   � �w ��v
�w 
givu � o   � ��u�u 0 theinterval theInterval�v   �  � � � l  � ��t�s�r�t  �s  �r   �  � � � l  � ��q � ��q   � ^ X check if I clicked Close Chrome button (exit counter if I did, otherwise, pester again)    � � � � �   c h e c k   i f   I   c l i c k e d   C l o s e   C h r o m e   b u t t o n   ( e x i t   c o u n t e r   i f   I   d i d ,   o t h e r w i s e ,   p e s t e r   a g a i n ) �  � � � Q   � � � �p � k   � �  r   � � n   � � 1   � ��o
�o 
bhit 1   � ��n
�n 
rslt o      �m�m 0 x   	 l  � ��l�k�j�l  �k  �j  	 

 Z   � ��i�h =  � � o   � ��g�g 0 x   m   � � �  C l o s e   C h r o m e k   � �  l  � ��f�e�d�f  �e  �d    O   � � I  � ��c�b�a
�c .aevtquitnull��� ��� null�b  �a   m   � ��                                                                                  rimZ  alis    h  Macintosh HD               �+s�H+  �Google Chrome.app                                               �{�ꛘ        ����  	                Applications    �+�"      ����    �  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��    l  � ��`�_�^�`  �_  �^     S   � � �] l  � ��\�[�Z�\  �[  �Z  �]  �i  �h   �Y l  � ��X�W�V�X  �W  �V  �Y    R      �U�T�S
�U .ascrerr ****      � ****�T  �S  �p   �  !  l  � ��R�Q�P�R  �Q  �P  ! "#" r   � �$%$ \   � �&'& o   � ��O�O 0 
thecounter 
theCounter' o   � ��N�N 0 theinterval theInterval% o      �M�M 0 
thecounter 
theCounter# (�L( l  � ��K�J�I�K  �J  �I  �L   � =  y ~)*) o   y |�H�H 0 
thecounter 
theCounter* m   | }�G�G   � +,+ l  � ��F�E�D�F  �E  �D  , -.- l  � ��C/0�C  / &   close Chrome when time runs out   0 �11 @   c l o s e   C h r o m e   w h e n   t i m e   r u n s   o u t. 232 O   � �454 I  � ��B�A�@
�B .aevtquitnull��� ��� null�A  �@  5 m   � �66�                                                                                  rimZ  alis    h  Macintosh HD               �+s�H+  �Google Chrome.app                                               �{�ꛘ        ����  	                Applications    �+�"      ����    �  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  3 787 l  � ��?�>�=�?  �>  �=  8 9�<9 l  � ��;�:�9�;  �:  �9  �<  ��  ��  ��  ��   � r  :;: m  �8�8  ; n      <=< 4  �7>
�7 
cobj> o  	
�6�6 0 head  = o  �5�5 	0 queue   � ?@? r  ABA [  CDC l E�4�3E `  FGF l H�2�1H o  �0�0 0 head  �2  �1  G m  �/�/ 
�4  �3  D m  �.�. B o      �-�- 0 head  @ IJI l �,�+�*�,  �+  �*  J KLK l �)MN�)  M   For debugging purposes.   N �OO 0   F o r   d e b u g g i n g   p u r p o s e s .L PQP I �(R�'
�( .ascrcmnt****      � ****R o  �&�& 0 head  �'  Q STS I  �%U�$
�% .ascrcmnt****      � ****U o  �#�# 0 frontmostapp frontmostApp�$  T VWV I !&�"X�!
�" .ascrcmnt****      � ****X o  !"� �  	0 queue  �!  W YZY l ''����  �  �  Z [�[ I ',�\�
� .sysodelanull��� ��� nmbr\ o  '(�� 0 checkinterval  �  �  ��  ��  ��       �]^_�  ] ��� 0 sum  
� .aevtoappnull  �   � ****^ � ��`a�� 0 sum  � �b� b  �� 	0 queue  �  ` ����� 	0 queue  � 0 c  � 0 i  � 	0 total  a ��

� .corecnte****       ****
�
 
cobj� .�j  E�OkE�OjE�O �kh���/E�O�kE�[OY��O�_ �	c��de�
�	 .aevtoappnull  �   � ****c k    1ff  Cgg  chh  oii  {jj  ���  �  �  d  e '����� ���� �����k���� ����������������� � ��� ������������������������ 
� 	0 queue  � 0 head  � x�  0 checkinterval  �� �� 0 goofoffthreshold  
�� 
prcs
�� 
pnamk  
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
�� .sysodelanull��� ��� nmbr�2jjjjjjjjjj�vE�OkE�O�E�O�E�OhZ� *�k/�,�[�,\Ze81E�UO�kv� �k���/FO*�k+ �	 �� 
 	�� a &a & �a E` Oa E` O zh_ j *j Oa _ %a %a a kva _ a  O 1_ a ,E` O_ a    a ! *j "UOOPY hOPW X # $hO_ _ E` OP[OY��Oa ! *j "UOPY hY j���/FO��#kE�O�j %O�j %O�j %O�j &[OY��ascr  ��ޭ