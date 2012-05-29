FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
 Provides subroutines for various cleanup scripts. Does nothing when run directly
 
 Most run from here now, by calling scripts -- changes only need to be made here
     � 	 	L 
   P r o v i d e s   s u b r o u t i n e s   f o r   v a r i o u s   c l e a n u p   s c r i p t s .   D o e s   n o t h i n g   w h e n   r u n   d i r e c t l y 
   
   M o s t   r u n   f r o m   h e r e   n o w ,   b y   c a l l i n g   s c r i p t s   - -   c h a n g e s   o n l y   n e e d   t o   b e   m a d e   h e r e 
   
  
 l     ��������  ��  ��        l     ��  ��    $  If run, say this does nothing     �   <   I f   r u n ,   s a y   t h i s   d o e s   n o t h i n g      l     ����  I    �� ��
�� .sysodlogaskr        TEXT  m        �   � T h i s   s c r i p t   p r o v i d e s   s u b - r o u t i n e s   o n l y   a n d   d o e s   n o t h i n g   w h e n   r u n��  ��  ��        l     ��������  ��  ��        l     ��  ��    B < "Top Level" routines, called directly by other scripts/apps     �   x   " T o p   L e v e l "   r o u t i n e s ,   c a l l e d   d i r e c t l y   b y   o t h e r   s c r i p t s / a p p s      l     ��������  ��  ��       !   i      " # " I      �������� 0 cleanup  ��  ��   # k      $ $  % & % l     �� ' (��   '   First: Preferences    ( � ) ) &   F i r s t :   P r e f e r e n c e s &  * + * I     �������� 0 
resetprefs 
resetPrefs��  ��   +  , - , l   ��������  ��  ��   -  . / . l   �� 0 1��   0 6 0 Now clean the Desktop, Downloads and Temp Trash    1 � 2 2 `   N o w   c l e a n   t h e   D e s k t o p ,   D o w n l o a d s   a n d   T e m p   T r a s h /  3 4 3 I    �������� 0 basiccleanup basicCleanup��  ��   4  5 6 5 l   ��������  ��  ��   6  7 8 7 l   �� 9 :��   9 ? 9 Just in case: doesn't matter if there was no warning set    : � ; ; r   J u s t   i n   c a s e :   d o e s n ' t   m a t t e r   i f   t h e r e   w a s   n o   w a r n i n g   s e t 8  < = < I    �������� "0 removeloginwarn removeLoginWarn��  ��   =  > ? > l   ��������  ��  ��   ?  @�� @ I   �� A��
�� .sysodlogaskr        TEXT A m     B B � C C , B a s i c   C l e a n u p   c o m p l e t e��  ��   !  D E D l     ��������  ��  ��   E  F G F i     H I H I      �������� 0 
bigcleanup 
bigCleanup��  ��   I k     8 J J  K L K I    �� M N
�� .sysodlogaskr        TEXT M m      O O � P P j A b o u t   t o   d e l e t e   p r e t t y   m u c h   e v e r y t h i n g   f o r   t h i s   u s e r . N �� Q R
�� 
appr Q m     S S � T T  W a r n i n g ! R �� U V
�� 
disp U m    ��
�� stic     V �� W X
�� 
btns W J    
 Y Y  Z [ Z m     \ \ � ] ]  N o   W a y [  ^�� ^ m     _ _ � ` `  O K��   X �� a b
�� 
dflt a m    ����  b �� c��
�� 
givu c m    ���� ��   L  d e d l   ��������  ��  ��   e  f�� f Z    8 g h���� g =    i j i n     k l k 1    ��
�� 
bhit l 1    ��
�� 
rslt j m     m m � n n  O K h k    4 o o  p q p l   �� r s��   r   First: Preferences    s � t t &   F i r s t :   P r e f e r e n c e s q  u v u I     �������� 0 
resetprefs 
resetPrefs��  ��   v  w x w l  ! !��������  ��  ��   x  y z y l  ! !�� { |��   { 6 0 Now clean the Desktop, Downloads and Temp Trash    | � } } `   N o w   c l e a n   t h e   D e s k t o p ,   D o w n l o a d s   a n d   T e m p   T r a s h z  ~  ~ I   ! &�������� &0 deletealluserdocs deleteAllUserDocs��  ��     � � � l  ' '��������  ��  ��   �  � � � l  ' '�� � ���   � ; 5 Just in case: doesn't matter if there was no warning    � � � � j   J u s t   i n   c a s e :   d o e s n ' t   m a t t e r   i f   t h e r e   w a s   n o   w a r n i n g �  � � � I   ' ,�������� "0 removeloginwarn removeLoginWarn��  ��   �  � � � l  - -��������  ��  ��   �  ��� � I  - 4�� ���
�� .sysodlogaskr        TEXT � m   - 0 � � � � � n B i g   C l e a n u p   c o m p l e t e   - -   i t ' s   a l l   g o n e .   Y o u   w e r e   w a r n e d !��  ��  ��  ��  ��   G  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 
addcleanup 
addCleanup��  ��   � k     H � �  � � � r      � � � n      � � � 1    ��
�� 
bhit � l     ����� � I    �� � �
�� .sysodlogaskr        TEXT � m      � � � � � Z C h o o s e   S e t   u p   f o r   O p e n   D a y   o r   O p e n / I n f o   N i g h t � �� � �
�� 
appr � m     � � � � �   C l e a n   a n d   S e t   U p � �� � �
�� 
btns � J    	 � �  � � � m     � � � � �  O p e n   D a y �  � � � m     � � � � �  O p e n   N i g h t �  ��� � m     � � � � �  C a n c e l��   � �� ���
�� 
dflt � m   
 ���� ��  ��  ��   � o      ���� 0 choiceresult choiceResult �  � � � l   ��������  ��  ��   �  ��� � Z    H � ����� � >    � � � o    ���� 0 choiceresult choiceResult � m     � � � � �  C a n c e l � k    D � �  � � � Z    8 � � � � � =    � � � o    ���� 0 choiceresult choiceResult � m     � � � � �  O p e n   D a y � I     %�������� &0 setopendaypoweron setOpenDayPowerOn��  ��   �  � � � =  ( + � � � o   ( )���� 0 choiceresult choiceResult � m   ) * � � � � �  O p e n   N i g h t �  ��� � I   . 3�������� ,0 setopennightshutdown setOpenNightShutdown��  ��  ��   � L   6 8 � � m   6 7��
�� boovfals �  � � � I   9 >����~�� .0 addopendayloginscript addOpenDayLoginScript�  �~   �  � � � l  ? ?�}�|�{�}  �|  �{   �  � � � l  ? ?�z � ��z   � !  Add warning about deletion    � � � � 6   A d d   w a r n i n g   a b o u t   d e l e t i o n �  ��y � I   ? D�x�w�v�x 0 setloginwarn setLoginWarn�w  �v  �y  ��  ��  ��   �  � � � l     �u�t�s�u  �t  �s   �  � � � i     � � � I      �r�q�p�r  0 prepareopenday prepareOpenDay�q  �p   � k      � �  � � � l     �o � ��o   � !  Automate prep for Open Day    � � � � 6   A u t o m a t e   p r e p   f o r   O p e n   D a y �  � � � l     �n�m�l�n  �m  �l   �  � � � l     �k � ��k   � !  Add warning about deletion    � � � � 6   A d d   w a r n i n g   a b o u t   d e l e t i o n �  � � � l     �j � ��j   �  setLoginWarn()    � � � �  s e t L o g i n W a r n ( ) �  � � � l     �i�h�g�i  �h  �g   �  � � � l     �f � ��f   � 2 , At some point, determined by a Launchdaemon    � � � � X   A t   s o m e   p o i n t ,   d e t e r m i n e d   b y   a   L a u n c h d a e m o n �  � � � l     �e � ��e   �  setOpenDayPowerOn()    � � � � & s e t O p e n D a y P o w e r O n ( ) �  � � � l     �d �d     addOpenDayLoginScript()    � . a d d O p e n D a y L o g i n S c r i p t ( ) �  l     �c�b�a�c  �b  �a    l     �`�`   F @ At some point, will need to remove logn script, reset power etc    �		 �   A t   s o m e   p o i n t ,   w i l l   n e e d   t o   r e m o v e   l o g n   s c r i p t ,   r e s e t   p o w e r   e t c 

 l     �_�^�]�_  �^  �]   �\ I    �[�Z
�[ .sysodlogaskr        TEXT m      � Z D o e s   n o t h i n g   -   r u n   t h e   o p e n D a y C l e a n u p   f o r   n o w�Z  �\   �  l     �Y�X�W�Y  �X  �W    l     �V�V     Preferences routines    � *   P r e f e r e n c e s   r o u t i n e s  l     �U�T�S�U  �T  �S    l     �R�R     Reset everything    � "   R e s e t   e v e r y t h i n g  i     !  I      �Q�P�O�Q 0 
resetprefs 
resetPrefs�P  �O  ! k     /"" #$# I     �N�M�L�N 0 copymcx copyMCX�M  �L  $ %&% I    �K�J�I�K 0 enablead enableAD�J  �I  & '(' I    �H�G�F�H 0 settimezone setTimeZone�G  �F  ( )*) I    �E�D�C�E .0 setdefaultenergysaver setDefaultEnergySaver�D  �C  * +,+ I    �B�A�@�B $0 resetscreensaver resetScreensaver�A  �@  , -.- I    #�?�>�=�? $0 setdefaultsafari setDefaultSafari�>  �=  . /0/ I   $ )�<�;�:�< 0 resetdesktop resetDesktop�;  �:  0 1�91 I   * /�8�7�6�8 0 resetuserpic resetUserPic�7  �6  �9   232 l     �5�4�3�5  �4  �3  3 454 l     �267�2  6    Reset managed preferences   7 �88 4   R e s e t   m a n a g e d   p r e f e r e n c e s5 9:9 i    ;<; I      �1�0�/�1 0 copymcx copyMCX�0  �/  < k     
== >?> I    �.@A
�. .sysoexecTEXT���     TEXT@ m     BB �CC � s u d o   i n s t a l l e r   - p k g   / L i b r a r y / S c r i p t s / I F S S / p a c k a g e s / C o p y M C X . p k g   - t a r g e t   /A �-D�,
�- 
badmD m    �+
�+ boovtrue�,  ? E�*E L    
FF m    	�)
�) boovtrue�*  : GHG l     �(�'�&�(  �'  �&  H IJI l     �%KL�%  K   Enable assistive devices   L �MM 2   E n a b l e   a s s i s t i v e   d e v i c e sJ NON i    PQP I      �$�#�"�$ 0 enablead enableAD�#  �"  Q k     RR STS O     
UVU r    	WXW m    �!
�! boovtrueX 1    � 
�  
uienV m     YY�                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  T Z�Z L    [[ m    �
� boovtrue�  O \]\ l     ����  �  �  ] ^_^ l     �`a�  ` $  Set time zone and time server   a �bb <   S e t   t i m e   z o n e   a n d   t i m e   s e r v e r_ cdc i    efe I      ���� 0 settimezone setTimeZone�  �  f k     gg hih I    �j�
� .sysoexecTEXT���     TEXTj m     kk �ll Z / u s r / s b i n / s y s t e m s e t u p   - s e t u s i n g n e t w o r k t i m e   o n�  i mnm I   �o�
� .sysoexecTEXT���     TEXTo m    pp �qq � / u s r / s b i n / s y s t e m s e t u p   - s e t t i m e z o n e   A u s t r a l i a / S y d n e y   - s e t n e t w o r k t i m e s e r v e r   t i m e . a s i a . a p p l e . c o m�  n r�r L    ss m    �
� boovtrue�  d tut l     ����  �  �  u vwv l     �xy�  x ( " Set default Energy Saver settings   y �zz D   S e t   d e f a u l t   E n e r g y   S a v e r   s e t t i n g sw {|{ i     #}~} I      ���
� .0 setdefaultenergysaver setDefaultEnergySaver�  �
  ~ k      ��� l     �	���	  � F @ Sets computer to never sleep while plugged in to a power source   � ��� �   S e t s   c o m p u t e r   t o   n e v e r   s l e e p   w h i l e   p l u g g e d   i n   t o   a   p o w e r   s o u r c e� ��� I    ���
� .sysoexecTEXT���     TEXT� m     �� ��� < s u d o   / u s r / b i n / p m s e t   - c   s l e e p   0� ���
� 
badm� m    �
� boovtrue�  � ��� l   ����  � P J Sets display to sleep after 30 minutes while plugged in to a power source   � ��� �   S e t s   d i s p l a y   t o   s l e e p   a f t e r   3 0   m i n u t e s   w h i l e   p l u g g e d   i n   t o   a   p o w e r   s o u r c e� ��� I   ���
� .sysoexecTEXT���     TEXT� m    	�� ��� L s u d o   / u s r / b i n / p m s e t   - c   d i s p l a y s l e e p   3 0� ���
� 
badm� m   
 � 
�  boovtrue�  � ��� l   ������  � - ' Sets computer to shutdown at 9pm daily   � ��� N   S e t s   c o m p u t e r   t o   s h u t d o w n   a t   9 p m   d a i l y� ��� I   ����
�� .sysoexecTEXT���     TEXT� m    �� ��� h s u d o   / u s r / b i n / p m s e t   r e p e a t   s h u t d o w n   M T W R F S U   2 1 : 0 0 : 0 0� �����
�� 
badm� m    ��
�� boovtrue��  � ���� L    �� m    ��
�� boovtrue��  | ��� l     ��������  ��  ��  � ��� l     ������  � / ) Set Energy Saver so display never sleeps   � ��� R   S e t   E n e r g y   S a v e r   s o   d i s p l a y   n e v e r   s l e e p s� ��� i   $ '��� I      �������� .0 setopendayenergysaver setOpenDayEnergySaver��  ��  � k     
�� ��� l     ������  � ! Sets display to never sleep   � ��� 6 S e t s   d i s p l a y   t o   n e v e r   s l e e p� ��� I    ����
�� .sysoexecTEXT���     TEXT� m     �� ��� J s u d o   / u s r / b i n / p m s e t   - c   d i s p l a y s l e e p   0� �����
�� 
badm� m    ��
�� boovtrue��  � ���� L    
�� m    	��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ������  � 8 2 Set Energy Saver for startup first thing Saturday   � ��� d   S e t   E n e r g y   S a v e r   f o r   s t a r t u p   f i r s t   t h i n g   S a t u r d a y� ��� i   ( +��� I      �������� &0 setopendaypoweron setOpenDayPowerOn��  ��  � k     
�� ��� I    ����
�� .sysoexecTEXT���     TEXT� m     �� ��� d s u d o   / u s r / b i n / p m s e t   r e p e a t   w a k e o r p o w e r o n   S   7 : 3 0 : 0 0� �����
�� 
badm� m    ��
�� boovtrue��  � ���� L    
�� m    	��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ������  � < 6 Set Energy Saver to shutdown later than standard time   � ��� l   S e t   E n e r g y   S a v e r   t o   s h u t d o w n   l a t e r   t h a n   s t a n d a r d   t i m e� ��� i   , /��� I      �������� ,0 setopennightshutdown setOpenNightShutdown��  ��  � k     
�� ��� I    ����
�� .sysoexecTEXT���     TEXT� m     �� ��� h s u d o   / u s r / b i n / p m s e t   r e p e a t   s h u t d o w n   M T W R F S U   2 2 : 0 0 : 0 0� �����
�� 
badm� m    ��
�� boovtrue��  � ���� L    
�� m    	��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ������  �  Disable Screensaver   � ��� & D i s a b l e   S c r e e n s a v e r� ��� i   0 3��� I      �������� (0 disablescreensaver disableScreensaver��  ��  � k     �� ��� I    �����
�� .sysoexecTEXT���     TEXT� m     �� ��� � / u s r / b i n / d e f a u l t s   - c u r r e n t H o s t   w r i t e   c o m . a p p l e . s c r e e n s a v e r   i d l e T i m e   0��  � ���� L    �� m    ��
�� boovtrue��  � ��� l     ��������  ��  ��  � � � l     ����     Reset Screensaver    � $   R e s e t   S c r e e n s a v e r   i   4 7 I      �������� $0 resetscreensaver resetScreensaver��  ��   k      	
	 I    ����
�� .sysoexecTEXT���     TEXT m      � � / u s r / b i n / d e f a u l t s   - c u r r e n t H o s t   w r i t e   c o m . a p p l e . s c r e e n s a v e r   i d l e T i m e   1 2 0 0��  
 �� L     m    ��
�� boovtrue��    l     ��������  ��  ��    l     ����   . ( Add openDayCleanup to run on next login    � P   A d d   o p e n D a y C l e a n u p   t o   r u n   o n   n e x t   l o g i n  i   8 ; I      �������� .0 addopendayloginscript addOpenDayLoginScript��  ��   O     ) Z   (���� =     l   !����! I   ��"��
�� .coredoexbool       obj " 4    ��#
�� 
logi# m    $$ �%% * I F S S   O p e n   D a y   C l e a n u p��  ��  ��    m    ��
�� boovfals I   $����&
�� .corecrel****      � null��  & ��'(
�� 
kocl' m    ��
�� 
logi( ��)*
�� 
insh) n    +,+  ;    , 2   ��
�� 
logi* ��-��
�� 
prdt- K     .. ��/0
�� 
ppth/ m    11 �22 N / A p p l i c a t i o n s / I F S S   O p e n   D a y   C l e a n u p . a p p0 ��3��
�� 
hidn3 m    ��
�� boovtrue��  ��  ��  ��   m     44�                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��   565 l     ��������  ��  ��  6 787 l     ��9:��  9   Setup and run QMaster   : �;; ,   S e t u p   a n d   r u n   Q M a s t e r8 <=< l     ��>?��  > 3 - Not normally used - causes too many problems   ? �@@ Z   N o t   n o r m a l l y   u s e d   -   c a u s e s   t o o   m a n y   p r o b l e m s= ABA i   < ?CDC I      �������� 0 
setqmaster 
setQMaster��  ��  D k     EE FGF I    ��H��
�� .sysoexecTEXT���     TEXTH m     II �JJ� / u s r / s b i n / q m a s t e r p r e f s   - s t o p S h a r i n g   - s h a r i n g T y p e   s e r v i c e s O n l y   - s t a t u s M e n u   o n   - s e r v i c e   ' C o m p r e s s o r   P r o c e s s i n g '   o n   s h a r i n g   o n   i n s t a n c e s   1   a u t o r e s t a r t   o n   u n m a n a g e d   o n   l o g   3   t r u n c a t e   o n   - s t a r t S h a r i n g��  G K��K L    LL m    ��
�� boovtrue��  B MNM l     ��������  ��  ��  N OPO l     ��QR��  Q   Set Safari Preferences   R �SS .   S e t   S a f a r i   P r e f e r e n c e sP TUT i   @ CVWV I      �������� $0 setdefaultsafari setDefaultSafari��  ��  W k     8XX YZY O     [\[ Z   ]^����] E    _`_ l   	a����a n    	bcb 1    	��
�� 
pnamc 2    ��
�� 
prcs��  ��  ` m   	 
dd �ee  S a f a r i^ O   fgf I   ������
�� .aevtquitnull��� ��� null��  ��  g m    hh�                                                                                  sfri  alis    <  Mac HD                     �\QHH+     
Safari.app                                                      w�<�        ����  	                Applications    �[Ĩ      ��T         Mac HD:Applications: Safari.app    
 S a f a r i . a p p    M a c   H D  Applications/Safari.app   / ��  ��  ��  \ m     ii�                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  Z jkj l   ��������  ��  ��  k lml I   #��n�
�� .sysoexecTEXT���     TEXTn m    oo �pp � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   H o m e P a g e   h t t p : / / w w w . i f s s . e d u . a u /�  m qrq I  $ )�~s�}
�~ .sysoexecTEXT���     TEXTs m   $ %tt �uu � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   S h o w S t a t u s B a r   - b o o l   Y E S�}  r vwv I  * /�|x�{
�| .sysoexecTEXT���     TEXTx m   * +yy �zz � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   C o n f i r m C l o s i n g M u l t i p l e P a g e s   0�{  w {|{ I  0 5�z}�y
�z .sysoexecTEXT���     TEXT} m   0 1~~ � � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   A u t o O p e n S a f e D o w n l o a d s   - b o o l   N O�y  | ��x� L   6 8�� m   6 7�w
�w boovtrue�x  U ��� l     �v�u�t�v  �u  �t  � ��� l     �s�r�q�s  �r  �q  � ��� l     �p���p  �   Reset the IFFS desktop   � ��� .   R e s e t   t h e   I F F S   d e s k t o p� ��� i   D G��� I      �o�n�m�o 0 resetdesktop resetDesktop�n  �m  � k      �� ��� O     ��� k    �� ��� r    ��� n    ��� 4    �l�
�l 
file� m    �� ��� 4 I F S S _ K e y I m a g e _ S e c _ L o g o . j p g� n    ��� 4   
 �k�
�k 
cfol� m    �� ���   D e s k t o p   P i c t u r e s� n    
��� 4    
�j�
�j 
cfol� m    	�� ���  L i b r a r y� 1    �i
�i 
sdsk� o      �h�h 0 thefile theFile� ��g� r    ��� c    ��� J    �� ��f� o    �e�e 0 thefile theFile�f  � m    �d
�d 
alis� 1    �c
�c 
dpic�g  � m     ���                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  � ��b� L     �� m    �a
�a boovtrue�b  � ��� l     �`�_�^�`  �_  �^  � ��� l     �]�\�[�]  �\  �[  � ��� l     �Z���Z  � 5 / Set the login screen to warning bg and message   � ��� ^   S e t   t h e   l o g i n   s c r e e n   t o   w a r n i n g   b g   a n d   m e s s a g e� ��� i   H K��� I      �Y�X�W�Y 0 setloginwarn setLoginWarn�X  �W  � k     �� ��� O     ��� k    �� ��� l   �V�U�T�V  �U  �T  � ��� I   �S��
�S .sysoexecTEXT���     TEXT� m    �� ���2 / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   D e s k t o p P i c t u r e   / L i b r a r y / D e s k t o p \   P i c t u r e s / I F S S _ K e y I m a g e _ S e c _ L o g o - D e l e t i o n \   W a r n i n g . j p g� �R��Q
�R 
badm� m    �P
�P boovtrue�Q  � ��� l   �O�N�M�O  �N  �M  � ��� I   �L��
�L .sysoexecTEXT���     TEXT� m    �� ���F / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   L o g i n w i n d o w T e x t   ' T h i s   c o m p u t e r   w i l l   h a v e   a l l   f i l e s   a n d   p r o j e c t s   d e l e t e d   a t   t h e   e n d   o f   t h i s   w e e k '� �K��J
�K 
badm� m    �I
�I boovtrue�J  � ��H� l   �G�F�E�G  �F  �E  �H  � m     ���                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  � ��D� L    �� m    �C
�C boovtrue�D  � ��� l     �B�A�@�B  �A  �@  � ��� l     �?�>�=�?  �>  �=  � ��� l     �<���<  � ? 9 Remove and reset the login screen warning bg and message   � ��� r   R e m o v e   a n d   r e s e t   t h e   l o g i n   s c r e e n   w a r n i n g   b g   a n d   m e s s a g e� ��� i   L O��� I      �;�:�9�; "0 removeloginwarn removeLoginWarn�:  �9  � k     �� ��� O     ��� k    �� ��� l   �8�7�6�8  �7  �6  � ��� I   �5��
�5 .sysoexecTEXT���     TEXT� m    �� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   D e s k t o p P i c t u r e   / L i b r a r y / D e s k t o p \   P i c t u r e s / N a t u r e / A u r o r a . j p g� �4��3
�4 
badm� m    �2
�2 boovtrue�3  � ��� l   �1�0�/�1  �0  �/  � ��� I   �.��
�. .sysoexecTEXT���     TEXT� m    �� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   L o g i n w i n d o w T e x t   ' '� �-��,
�- 
badm� m    �+
�+ boovtrue�,  �  �*  l   �)�(�'�)  �(  �'  �*  � m     �                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  � �& L     m    �%
�% boovtrue�&  �  l     �$�#�"�$  �#  �"    l     �!� ��!  �   �   	 l     ����  �  �  	 

 l     ��   "  Reset the IFSS user picture    � 8   R e s e t   t h e   I F S S   u s e r   p i c t u r e  i   P S I      ���� 0 resetuserpic resetUserPic�  �   k     3  O     0 Z    /�� =     l   	�� n    	 1    	�
� 
pnam 1    �
� 
curu�  �   m   	 
 �    i f s s k    +!! "#" r    $%$ n    &'& 4    �(
� 
file( m    )) �**  i f s s . t i f f' n    +,+ 4    �-
� 
cfol- m    .. �//  I F S S, n    010 4    �2
� 
cfol2 m    33 �44  U s e r   P i c t u r e s1 n    565 4    �7
� 
cfol7 m    88 �99  L i b r a r y6 1    �
� 
sdsk% o      �� 0 thepic thePic# :�: r     +;<; c     %=>= J     #?? @�
@ o     !�	�	 0 thepic thePic�
  > m   # $�
� 
alis< l     A��A n      BCB 1   ( *�
� 
picpC 1   % (�
� 
curu�  �  �  �  �   m     DD�                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��   E�E L   1 3FF m   1 2�
� boovtrue�   GHG l     �� ���  �   ��  H IJI l     ��������  ��  ��  J KLK l     ��MN��  M   Cleaning Routines   N �OO $   C l e a n i n g   R o u t i n e sL PQP l     ��������  ��  ��  Q RSR l     ��TU��  T    Used in multiple handlers   U �VV 4   U s e d   i n   m u l t i p l e   h a n d l e r sS WXW p   T TYY ��Z�� 0 gcleanfolder gCleanFolderZ ������ 0 gthedesktop gTheDesktop��  X [\[ l     ��������  ��  ��  \ ]^] l     ��_`��  _ ; 5 Move Desktop contents to a dated folder in Documents   ` �aa j   M o v e   D e s k t o p   c o n t e n t s   t o   a   d a t e d   f o l d e r   i n   D o c u m e n t s^ bcb i   T Wded I      �������� 0 cleandesktop cleanDesktop��  ��  e O     �fgf k    �hh iji l   ��������  ��  ��  j klk O   ,mnm r    +opo b    )qrq b    sts 7   ��uv
�� 
ctxtu m    ���� v m    ���� t m    ww �xx  -r 7   (��yz
�� 
ctxty m   " $���� z m   % '���� 
p o      ���� 0 formatteddate formattedDaten l   {����{ c    |}| c    ~~ l   	������ I   	������
�� .misccurdldt    ��� null��  ��  ��  ��   m   	 
��
�� 
isot} m    ��
�� 
TEXT��  ��  l ��� l  - -��������  ��  ��  � ��� r   - 2��� b   - 0��� m   - .�� ���   C l e a n e d   D e s k t o p  � o   . /���� 0 formatteddate formattedDate� o      ���� 0 gcleanfolder gCleanFolder� ��� l  3 3��������  ��  ��  � ��� Z   3 c������� H   3 A�� l  3 @������ I  3 @�����
�� .coredoexbool       obj � n   3 <��� 4   9 <���
�� 
cfol� o   : ;���� 0 gcleanfolder gCleanFolder� n   3 9��� 4   6 9���
�� 
cfol� m   7 8�� ���  D o c u m e n t s� 1   3 6��
�� 
home��  ��  ��  � I  D _�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   F G��
�� 
cfol� ����
�� 
insh� n   J R��� 4   M R���
�� 
cfol� m   N Q�� ���  D o c u m e n t s� 1   J M��
�� 
home� �����
�� 
prdt� K   U [�� �����
�� 
pnam� o   X Y���� 0 gcleanfolder gCleanFolder��  ��  ��  ��  � ��� r   d q��� n   d o��� 4   l o���
�� 
cfol� o   m n���� 0 gcleanfolder gCleanFolder� n   d l��� 4   g l���
�� 
cfol� m   h k�� ���  D o c u m e n t s� 1   d g��
�� 
home� o      ���� 0 targetfolder targetFolder� ��� l  r r��������  ��  ��  � ��� r   r ���� I  r ����
�� .earsffdralis        afdr� m   r u��
�� afdmdesk� �����
�� 
from� m   x {��
�� fldmfldu��  � o      ���� 0 gthedesktop gTheDesktop� ��� l  � ���������  ��  ��  � ��� I  � �����
�� .coremoveobj        obj � n   � ���� 1   � ���
�� 
ects� o   � ����� 0 gthedesktop gTheDesktop� �����
�� 
insh� o   � ����� 0 targetfolder targetFolder��  � ���� l  � ���������  ��  ��  ��  g m     ���                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  c ��� l     ��������  ��  ��  � ��� l     ������  � 9 3 Basic cleanup of Desktop, Downloads and Temp Trash   � ��� f   B a s i c   c l e a n u p   o f   D e s k t o p ,   D o w n l o a d s   a n d   T e m p   T r a s h� ��� i   X [��� I      �������� 0 basiccleanup basicCleanup��  ��  � k     A�� ��� l     ��������  ��  ��  � ��� I     �������� 0 cleandesktop cleanDesktop��  ��  � ��� l   ��������  ��  ��  � ��� O    >��� k   
 =�� ��� l  
 
��������  ��  ��  � ��� l  
 
������  � 8 2 put files back on Desktop (in the cleanup folder)   � ��� d   p u t   f i l e s   b a c k   o n   D e s k t o p   ( i n   t h e   c l e a n u p   f o l d e r )� ��� I  
 ����
�� .coremoveobj        obj � n   
 ��� 4    ���
�� 
cfol� o    ���� 0 gcleanfolder gCleanFolder� n   
 ��� 4    ���
�� 
cfol� m    �� ���  D o c u m e n t s� 1   
 ��
�� 
home� �����
�� 
insh� o    ���� 0 gthedesktop gTheDesktop��  � ��� l   ��������  ��  ��  � ��� I   &�����
�� .coredeloobj        obj � n    "��� 2     "�
� 
cobj� n     ��� 4     �~�
�~ 
cfol� m    �� ���  D o w n l o a d s� 1    �}
�} 
home��  �    I  ' 3�|�{
�| .coredeloobj        obj  n   ' / 2   - /�z
�z 
cobj n   ' - 4   * -�y
�y 
cfol m   + , �		  T e m p   T r a s h 1   ' *�x
�x 
sdsk�{   

 I  4 ;�w�v
�w .fndremptnull��� ��� obj  1   4 7�u
�u 
trsh�v   �t l  < <�s�r�q�s  �r  �q  �t  � m    �                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  � �p L   ? A m   ? @�o
�o boovtrue�p  �  l     �n�m�l�n  �m  �l    l     �k�k   $  Delete all user docs and data    � <   D e l e t e   a l l   u s e r   d o c s   a n d   d a t a  i   \ _ I      �j�i�h�j &0 deletealluserdocs deleteAllUserDocs�i  �h   k      l     �g �g   5 / Delete some crap this way because it is easier     �!! ^   D e l e t e   s o m e   c r a p   t h i s   w a y   b e c a u s e   i t   i s   e a s i e r "#" l     �f�e�d�f  �e  �d  # $%$ I    �c&�b
�c .sysoexecTEXT���     TEXT& m     '' �(( X r m   - r f   ' / U s e r s / i f s s / P i c t u r e s / i P h o t o   L i b r a r y '�b  % )*) I   �a+�`
�a .sysoexecTEXT���     TEXT+ m    ,, �-- R r m   - r f   ' / U s e r s / i f s s / P i c t u r e s / P h o t o   B o o t h '�`  * ./. l   �_�^�]�_  �^  �]  / 010 l   �\23�\  2 $  Now delete all the other crap   3 �44 <   N o w   d e l e t e   a l l   t h e   o t h e r   c r a p1 565 l   �[�Z�Y�[  �Z  �Y  6 787 O    �9:9 k    �;; <=< l   �X�W�V�X  �W  �V  = >?> Z    -@A�U�T@ l   B�S�RB I   �QC�P
�Q .coredoexbool       obj C n    DED 4    �OF
�O 
cfolF m    GG �HH  B a c k u pE 1    �N
�N 
home�P  �S  �R  A I   )�MI�L
�M .coredeloobj        obj I n    %JKJ 2   # %�K
�K 
cobjK n    #LML 4     #�JN
�J 
cfolN m   ! "OO �PP  B a c k u pM 1     �I
�I 
home�L  �U  �T  ? QRQ l  . .�H�G�F�H  �G  �F  R STS Z   . KUV�E�DU l  . 8W�C�BW I  . 8�AX�@
�A .coredoexbool       obj X n   . 4YZY 4   1 4�?[
�? 
cfol[ m   2 3\\ �]]  D e s k t o pZ 1   . 1�>
�> 
home�@  �C  �B  V I  ; G�=^�<
�= .coredeloobj        obj ^ n   ; C_`_ 2   A C�;
�; 
cobj` n   ; Aaba 4   > A�:c
�: 
cfolc m   ? @dd �ee  D e s k t o pb 1   ; >�9
�9 
home�<  �E  �D  T fgf l  L L�8�7�6�8  �7  �6  g hih Z   L ijk�5�4j l  L Vl�3�2l I  L V�1m�0
�1 .coredoexbool       obj m n   L Rnon 4   O R�/p
�/ 
cfolp m   P Qqq �rr  D o c u m e n t so 1   L O�.
�. 
home�0  �3  �2  k I  Y e�-s�,
�- .coredeloobj        obj s n   Y atut 2   _ a�+
�+ 
cobju n   Y _vwv 4   \ _�*x
�* 
cfolx m   ] ^yy �zz  D o c u m e n t sw 1   Y \�)
�) 
home�,  �5  �4  i {|{ l  j j�(�'�&�(  �'  �&  | }~} Z   j ���%�$ l  j t��#�"� I  j t�!�� 
�! .coredoexbool       obj � n   j p��� 4   m p��
� 
cfol� m   n o�� ���  D o w n l o a d s� 1   j m�
� 
home�   �#  �"  � I  w ����
� .coredeloobj        obj � n   w ���� 2    ��
� 
cobj� n   w ��� 4   z ��
� 
cfol� m   { ~�� ���  D o w n l o a d s� 1   w z�
� 
home�  �%  �$  ~ ��� l  � �����  �  �  � ��� Z   � ������ l  � ����� I  � ����
� .coredoexbool       obj � n   � ���� 4   � ���
� 
cfol� m   � ��� ���  M o v i e s� 1   � ��
� 
home�  �  �  � I  � ����
� .coredeloobj        obj � n   � ���� 2   � ��
� 
cobj� n   � ���� 4   � ��
�
�
 
cfol� m   � ��� ���  M o v i e s� 1   � ��	
�	 
home�  �  �  � ��� l  � �����  �  �  � ��� Z   � ������ l  � ����� I  � ���� 
� .coredoexbool       obj � n   � ���� 4   � ����
�� 
cfol� m   � ��� ��� 
 M u s i c� 1   � ���
�� 
home�   �  �  � I  � ������
�� .coredeloobj        obj � n   � ���� 2   � ���
�� 
cobj� n   � ���� 4   � ����
�� 
cfol� m   � ��� ��� 
 M u s i c� 1   � ���
�� 
home��  �  �  � ��� l  � ���������  ��  ��  � ��� Z   � �������� l  � ������� I  � ������
�� .coredoexbool       obj � n   � ���� 4   � ����
�� 
cfol� m   � ��� ���  T e m p   T r a s h� 1   � ���
�� 
home��  ��  ��  � I  � ������
�� .coredeloobj        obj � n   � ���� 2   � ���
�� 
cobj� n   � ���� 4   � ����
�� 
cfol� m   � ��� ���  T e m p   T r a s h� 1   � ���
�� 
sdsk��  ��  ��  � ��� l  � ���������  ��  ��  � ��� I  � ������
�� .fndremptnull��� ��� obj � 1   � ���
�� 
trsh��  � ���� l  � ���������  ��  ��  ��  : m    ���                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  8 ���� L   ��� m   � ��
�� boovtrue��   ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ������������������������������  � ���������������������������������������������������� 0 cleanup  �� 0 
bigcleanup 
bigCleanup�� 0 
addcleanup 
addCleanup��  0 prepareopenday prepareOpenDay�� 0 
resetprefs 
resetPrefs�� 0 copymcx copyMCX�� 0 enablead enableAD�� 0 settimezone setTimeZone�� .0 setdefaultenergysaver setDefaultEnergySaver�� .0 setopendayenergysaver setOpenDayEnergySaver�� &0 setopendaypoweron setOpenDayPowerOn�� ,0 setopennightshutdown setOpenNightShutdown�� (0 disablescreensaver disableScreensaver�� $0 resetscreensaver resetScreensaver�� .0 addopendayloginscript addOpenDayLoginScript�� 0 
setqmaster 
setQMaster�� $0 setdefaultsafari setDefaultSafari�� 0 resetdesktop resetDesktop�� 0 setloginwarn setLoginWarn�� "0 removeloginwarn removeLoginWarn�� 0 resetuserpic resetUserPic�� 0 cleandesktop cleanDesktop�� 0 basiccleanup basicCleanup�� &0 deletealluserdocs deleteAllUserDocs
�� .aevtoappnull  �   � ****� �� #���������� 0 cleanup  ��  ��  �  � ������ B���� 0 
resetprefs 
resetPrefs�� 0 basiccleanup basicCleanup�� "0 removeloginwarn removeLoginWarn
�� .sysodlogaskr        TEXT�� *j+  O*j+ O*j+ O�j � �� I���������� 0 
bigcleanup 
bigCleanup��  ��  �  �  O�� S������ \ _�������������� m������ �
�� 
appr
�� 
disp
�� stic    
�� 
btns
�� 
dflt
�� 
givu�� �� 

�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� 0 
resetprefs 
resetPrefs�� &0 deletealluserdocs deleteAllUserDocs�� "0 removeloginwarn removeLoginWarn�� 9��������lv�k��� O��,�  *j+ O*j+ O*j+ Oa j Y h� �� ����������� 0 
addcleanup 
addCleanup��  ��  � ���� 0 choiceresult choiceResult�  ��� ��� � � ��������� � ��� �������
�� 
appr
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� &0 setopendaypoweron setOpenDayPowerOn�� ,0 setopennightshutdown setOpenNightShutdown�� .0 addopendayloginscript addOpenDayLoginScript�� 0 setloginwarn setLoginWarn�� I�������mv�k� 	�,E�O�� /��  
*j+ Y ��  
*j+ Y fO*j+ O*j+ Y h� �� �����������  0 prepareopenday prepareOpenDay��  ��  �  � ��
�� .sysodlogaskr        TEXT�� �j � ��!���������� 0 
resetprefs 
resetPrefs��  ��  �  � ������������������ 0 copymcx copyMCX�� 0 enablead enableAD�� 0 settimezone setTimeZone�� .0 setdefaultenergysaver setDefaultEnergySaver�� $0 resetscreensaver resetScreensaver�� $0 setdefaultsafari setDefaultSafari�� 0 resetdesktop resetDesktop�� 0 resetuserpic resetUserPic�� 0*j+  O*j+ O*j+ O*j+ O*j+ O*j+ O*j+ O*j+ � ��<���� �~�� 0 copymcx copyMCX��  �  �    B�}�|
�} 
badm
�| .sysoexecTEXT���     TEXT�~ ��el Oe� �{Q�z�y�x�{ 0 enablead enableAD�z  �y     Y�w
�w 
uien�x � e*�,FUOe� �vf�u�t�s�v 0 settimezone setTimeZone�u  �t     k�rp
�r .sysoexecTEXT���     TEXT�s �j O�j Oe� �q~�p�o�n�q .0 setdefaultenergysaver setDefaultEnergySaver�p  �o     ��m�l��
�m 
badm
�l .sysoexecTEXT���     TEXT�n ��el O��el O��el Oe� �k��j�i�h�k .0 setopendayenergysaver setOpenDayEnergySaver�j  �i     ��g�f
�g 
badm
�f .sysoexecTEXT���     TEXT�h ��el Oe� �e��d�c	
�b�e &0 setopendaypoweron setOpenDayPowerOn�d  �c  	  
 ��a�`
�a 
badm
�` .sysoexecTEXT���     TEXT�b ��el Oe� �_��^�]�\�_ ,0 setopennightshutdown setOpenNightShutdown�^  �]     ��[�Z
�[ 
badm
�Z .sysoexecTEXT���     TEXT�\ ��el Oe� �Y��X�W�V�Y (0 disablescreensaver disableScreensaver�X  �W     ��U
�U .sysoexecTEXT���     TEXT�V 	�j Oe� �T�S�R�Q�T $0 resetscreensaver resetScreensaver�S  �R     �P
�P .sysoexecTEXT���     TEXT�Q 	�j Oe� �O�N�M�L�O .0 addopendayloginscript addOpenDayLoginScript�N  �M     4�K$�J�I�H�G�F1�E�D�C�B
�K 
logi
�J .coredoexbool       obj 
�I 
kocl
�H 
insh
�G 
prdt
�F 
ppth
�E 
hidn�D �C 
�B .corecrel****      � null�L *� &*��/j f  *���*�-6����e�� Y hU� �AD�@�?�>�A 0 
setqmaster 
setQMaster�@  �?     I�=
�= .sysoexecTEXT���     TEXT�> 	�j Oe� �<W�;�:�9�< $0 setdefaultsafari setDefaultSafari�;  �:     i�8�7dh�6o�5ty~
�8 
prcs
�7 
pnam
�6 .aevtquitnull��� ��� null
�5 .sysoexecTEXT���     TEXT�9 9� *�-�,� � *j UY hUO�j O�j O�j O�j Oe� �4��3�2�1�4 0 resetdesktop resetDesktop�3  �2   �0�0 0 thefile theFile 	��/�.���-��,�+
�/ 
sdsk
�. 
cfol
�- 
file
�, 
alis
�+ 
dpic�1 !� *�,��/��/��/E�O�kv�&*�,FUOe� �*��)�(�'�* 0 setloginwarn setLoginWarn�)  �(     ���&�%�
�& 
badm
�% .sysoexecTEXT���     TEXT�' � ��el O��el OPUOe� �$��#�"�!�$ "0 removeloginwarn removeLoginWarn�#  �"     �� ��
�  
badm
� .sysoexecTEXT���     TEXT�! � ��el O��el OPUOe� ����� 0 resetuserpic resetUserPic�  �   �� 0 thepic thePic D����83.�)��
� 
curu
� 
pnam
� 
sdsk
� 
cfol
� 
file
� 
alis
� 
picp� 4� -*�,�,�  "*�,��/��/��/��/E�O�kv�&*�,�,FY hUOe� �e�� �� 0 cleandesktop cleanDesktop�  �   ��� 0 formatteddate formattedDate� 0 targetfolder targetFolder  ����
�	�w���������� ����������������������
� .misccurdldt    ��� null
� 
isot
�
 
TEXT
�	 
ctxt� � � 
� 0 gcleanfolder gCleanFolder
� 
home
� 
cfol
� .coredoexbool       obj 
� 
kocl
�  
insh
�� 
prdt
�� 
pnam
�� .corecrel****      � null
�� afdmdesk
�� 
from
�� fldmfldu
�� .earsffdralis        afdr�� 0 gthedesktop gTheDesktop
�� 
ects
�� .coremoveobj        obj � �� �*j �&�& *[�\[Zm\Z�2�%*[�\[Z�\Z�2%E�UO�%E�O*�,��/��/j   *��a *�,�a /a a �l� Y hO*�,�a /��/E�Oa a a l E` O_ a ,a �l OPU� �������!"���� 0 basiccleanup basicCleanup��  ��  !  " ���������������������������� 0 cleandesktop cleanDesktop
�� 
home
�� 
cfol�� 0 gcleanfolder gCleanFolder
�� 
insh�� 0 gthedesktop gTheDesktop
�� .coremoveobj        obj 
�� 
cobj
�� .coredeloobj        obj 
�� 
sdsk
�� 
trsh
�� .fndremptnull��� ��� obj �� B*j+  O� 5*�,��/��/��l O*�,��/�-j O*�,��/�-j O*�,j OPUOe� ������#$���� &0 deletealluserdocs deleteAllUserDocs��  ��  #  $ '��,�����G��O����\dqy��������������
�� .sysoexecTEXT���     TEXT
�� 
home
�� 
cfol
�� .coredoexbool       obj 
�� 
cobj
�� .coredeloobj        obj 
�� 
sdsk
�� 
trsh
�� .fndremptnull��� ��� obj ���j O�j O� �*�,��/j  *�,��/�-j 
Y hO*�,��/j  *�,��/�-j 
Y hO*�,��/j  *�,��/�-j 
Y hO*�,��/j  *�,�a /�-j 
Y hO*�,�a /j  *�,�a /�-j 
Y hO*�,�a /j  *�,�a /�-j 
Y hO*�,�a /j  *a ,�a /�-j 
Y hO*a ,j OPUOe� ��%����&'��
�� .aevtoappnull  �   � ****% k     ((  ����  ��  ��  &  '  ��
�� .sysodlogaskr        TEXT�� �j ascr  ��ޭ