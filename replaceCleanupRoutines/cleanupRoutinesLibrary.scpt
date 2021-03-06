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
�� boovfals �  � � � I   9 >����~�� .0 addopendayloginscript addOpenDayLoginScript�  �~   �  � � � l  ? ?�}�|�{�}  �|  �{   �  � � � l  ? ?�z � ��z   � !  Add warning about deletion    � � � � 6   A d d   w a r n i n g   a b o u t   d e l e t i o n �  ��y � I   ? D�x�w�v�x 0 setloginwarn setLoginWarn�w  �v  �y  ��  ��  ��   �  � � � l     �u�t�s�u  �t  �s   �  � � � i     � � � I      �r�q�p�r (0 cleanandsetopenday cleanAndSetOpenDay�q  �p   � k     H � �  � � � l     �o � ��o   � = 7 Same as openDayCleanup without setting login/out items    � � � � n   S a m e   a s   o p e n D a y C l e a n u p   w i t h o u t   s e t t i n g   l o g i n / o u t   i t e m s �  � � � l     �n � ��n   � I C Run for basic reset of preferences and cleanup when not automating    � � � � �   R u n   f o r   b a s i c   r e s e t   o f   p r e f e r e n c e s   a n d   c l e a n u p   w h e n   n o t   a u t o m a t i n g �  � � � l     �m � ��m   � 4 . Ideal for use via ARD (needs to be logged in)    � � � � \   I d e a l   f o r   u s e   v i a   A R D   ( n e e d s   t o   b e   l o g g e d   i n ) �  � � � l     �l�k�j�l  �k  �j   �  � � � l     �i � ��i   �   First: Preferences    � � � � &   F i r s t :   P r e f e r e n c e s �  � � � I     �h�g�f�h 0 
resetprefs 
resetPrefs�g  �f   �  � � � l   �e�d�c�e  �d  �c   �  � � � l   �b � ��b   � 6 0 Now clean the Desktop, Downloads and Temp Trash    � � � � `   N o w   c l e a n   t h e   D e s k t o p ,   D o w n l o a d s   a n d   T e m p   T r a s h �    l   �a�`�_�a  �`  �_    I    �^�]�\�^ 0 cleandesktop cleanDesktop�]  �\    l   �[�Z�Y�[  �Z  �Y    O    4	 k    3

  l   �X�W�V�X  �W  �V    I   �U�T
�U .coredeloobj        obj  n     2    �S
�S 
cobj n     4    �R
�R 
cfol m     �  D o w n l o a d s 1    �Q
�Q 
home�T    I   )�P�O
�P .coredeloobj        obj  n    % 2   # %�N
�N 
cobj n    # 4     #�M
�M 
cfol m   ! " �    T e m p   T r a s h 1     �L
�L 
sdsk�O   !"! I  * 1�K#�J
�K .fndremptnull��� ��� obj # 1   * -�I
�I 
trsh�J  " $�H$ l  2 2�G�F�E�G  �F  �E  �H  	 m    %%�                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��   &'& l  5 5�D�C�B�D  �C  �B  ' ()( l  5 5�A*+�A  * ? 9 Just in case: doesn't matter if there was no warning set   + �,, r   J u s t   i n   c a s e :   d o e s n ' t   m a t t e r   i f   t h e r e   w a s   n o   w a r n i n g   s e t) -.- I   5 :�@�?�>�@ "0 removeloginwarn removeLoginWarn�?  �>  . /0/ l  ; ;�=�<�;�=  �<  �;  0 121 l  ; ;�:34�:  3 > 8 Override display/screensaver settings just for Open Day   4 �55 p   O v e r r i d e   d i s p l a y / s c r e e n s a v e r   s e t t i n g s   j u s t   f o r   O p e n   D a y2 676 I   ; @�9�8�7�9 .0 setopendayenergysaver setOpenDayEnergySaver�8  �7  7 898 I   A F�6�5�4�6 (0 disablescreensaver disableScreensaver�5  �4  9 :�3: l  G G�2�1�0�2  �1  �0  �3   � ;<; l     �/�.�-�/  �.  �-  < =>= i    ?@? I      �,�+�*�,  0 prepareopenday prepareOpenDay�+  �*  @ k     AA BCB l     �)DE�)  D !  Automate prep for Open Day   E �FF 6   A u t o m a t e   p r e p   f o r   O p e n   D a yC GHG l     �(�'�&�(  �'  �&  H IJI l     �%KL�%  K !  Add warning about deletion   L �MM 6   A d d   w a r n i n g   a b o u t   d e l e t i o nJ NON l     �$PQ�$  P  setLoginWarn()   Q �RR  s e t L o g i n W a r n ( )O STS l     �#�"�!�#  �"  �!  T UVU l     � WX�   W 2 , At some point, determined by a Launchdaemon   X �YY X   A t   s o m e   p o i n t ,   d e t e r m i n e d   b y   a   L a u n c h d a e m o nV Z[Z l     �\]�  \  setOpenDayPowerOn()   ] �^^ & s e t O p e n D a y P o w e r O n ( )[ _`_ l     �ab�  a  addOpenDayLoginScript()   b �cc . a d d O p e n D a y L o g i n S c r i p t ( )` ded l     ����  �  �  e fgf l     �hi�  h F @ At some point, will need to remove logn script, reset power etc   i �jj �   A t   s o m e   p o i n t ,   w i l l   n e e d   t o   r e m o v e   l o g n   s c r i p t ,   r e s e t   p o w e r   e t cg klk l     ����  �  �  l m�m I    �n�
� .sysodlogaskr        TEXTn m     oo �pp Z D o e s   n o t h i n g   -   r u n   t h e   o p e n D a y C l e a n u p   f o r   n o w�  �  > qrq l     ����  �  �  r sts l     �uv�  u   Preferences routines   v �ww *   P r e f e r e n c e s   r o u t i n e st xyx l     ����  �  �  y z{z l     �|}�  |   Reset everything   } �~~ "   R e s e t   e v e r y t h i n g{ � i    ��� I      ��
�	� 0 
resetprefs 
resetPrefs�
  �	  � k     )�� ��� l     ����  �  
 copyMCX()   � ���    c o p y M C X ( )� ��� I     ���� 0 enablead enableAD�  �  � ��� I    ���� 0 settimezone setTimeZone�  �  � ��� I    �� ��� .0 setdefaultenergysaver setDefaultEnergySaver�   ��  � ��� I    �������� $0 resetscreensaver resetScreensaver��  ��  � ��� I    �������� $0 setdefaultsafari setDefaultSafari��  ��  � ��� I    #�������� 0 resetdesktop resetDesktop��  ��  � ���� I   $ )�������� 0 resetuserpic resetUserPic��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �    Reset managed preferences   � ��� 4   R e s e t   m a n a g e d   p r e f e r e n c e s� ��� i    ��� I      �������� 0 copymcx copyMCX��  ��  � k     
�� ��� I    ����
�� .sysoexecTEXT���     TEXT� m     �� ��� � s u d o   i n s t a l l e r   - p k g   / L i b r a r y / S c r i p t s / I F S S / p a c k a g e s / C o p y M C X . p k g   - t a r g e t   /� �����
�� 
badm� m    ��
�� boovtrue��  � ���� L    
�� m    	��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ������  �   Enable assistive devices   � ��� 2   E n a b l e   a s s i s t i v e   d e v i c e s� ��� i    ��� I      �������� 0 enablead enableAD��  ��  � k     �� ��� O     
��� r    	��� m    ��
�� boovtrue� 1    ��
�� 
uien� m     ���                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  � ���� L    �� m    ��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ������  � $  Set time zone and time server   � ��� <   S e t   t i m e   z o n e   a n d   t i m e   s e r v e r� ��� i     #��� I      �������� 0 settimezone setTimeZone��  ��  � k     �� ��� I    �����
�� .sysoexecTEXT���     TEXT� m     �� ��� Z / u s r / s b i n / s y s t e m s e t u p   - s e t u s i n g n e t w o r k t i m e   o n��  � ��� I   �����
�� .sysoexecTEXT���     TEXT� m    �� ��� � / u s r / s b i n / s y s t e m s e t u p   - s e t t i m e z o n e   A u s t r a l i a / S y d n e y   - s e t n e t w o r k t i m e s e r v e r   t i m e . a s i a . a p p l e . c o m��  � ���� L    �� m    ��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ������  � ( " Set default Energy Saver settings   � ��� D   S e t   d e f a u l t   E n e r g y   S a v e r   s e t t i n g s� ��� i   $ '��� I      �������� .0 setdefaultenergysaver setDefaultEnergySaver��  ��  � k     �� ��� l     ������  � F @ Sets computer to never sleep while plugged in to a power source   � ��� �   S e t s   c o m p u t e r   t o   n e v e r   s l e e p   w h i l e   p l u g g e d   i n   t o   a   p o w e r   s o u r c e� ��� I    ����
�� .sysoexecTEXT���     TEXT� m     �� ��� < s u d o   / u s r / b i n / p m s e t   - c   s l e e p   0� �����
�� 
badm� m    ��
�� boovtrue��  � ��� l   ������  � P J Sets display to sleep after 30 minutes while plugged in to a power source   � ��� �   S e t s   d i s p l a y   t o   s l e e p   a f t e r   3 0   m i n u t e s   w h i l e   p l u g g e d   i n   t o   a   p o w e r   s o u r c e� ��� I   ����
�� .sysoexecTEXT���     TEXT� m    	�� ��� L s u d o   / u s r / b i n / p m s e t   - c   d i s p l a y s l e e p   3 0� �����
�� 
badm� m   
 ��
�� boovtrue��  � ��� l   ������  � - ' Sets computer to shutdown at 9pm daily   � �   N   S e t s   c o m p u t e r   t o   s h u t d o w n   a t   9 p m   d a i l y�  I   ��
�� .sysoexecTEXT���     TEXT m     � h s u d o   / u s r / b i n / p m s e t   r e p e a t   s h u t d o w n   M T W R F S U   2 1 : 0 0 : 0 0 ����
�� 
badm m    ��
�� boovtrue��   �� L    		 m    ��
�� boovtrue��  � 

 l     ��������  ��  ��    l     ����   / ) Set Energy Saver so display never sleeps    � R   S e t   E n e r g y   S a v e r   s o   d i s p l a y   n e v e r   s l e e p s  i   ( + I      �������� .0 setopendayenergysaver setOpenDayEnergySaver��  ��   k     
  l     ����   ! Sets display to never sleep    � 6 S e t s   d i s p l a y   t o   n e v e r   s l e e p  I    ��
�� .sysoexecTEXT���     TEXT m      �   J s u d o   / u s r / b i n / p m s e t   - c   d i s p l a y s l e e p   0 ��!��
�� 
badm! m    ��
�� boovtrue��   "��" L    
## m    	��
�� boovtrue��   $%$ l     ��������  ��  ��  % &'& l     ��()��  ( 8 2 Set Energy Saver for startup first thing Saturday   ) �** d   S e t   E n e r g y   S a v e r   f o r   s t a r t u p   f i r s t   t h i n g   S a t u r d a y' +,+ i   , /-.- I      �������� &0 setopendaypoweron setOpenDayPowerOn��  ��  . k     
// 010 I    ��23
�� .sysoexecTEXT���     TEXT2 m     44 �55 d s u d o   / u s r / b i n / p m s e t   r e p e a t   w a k e o r p o w e r o n   S   7 : 3 0 : 0 03 ��6��
�� 
badm6 m    ��
�� boovtrue��  1 7��7 L    
88 m    	��
�� boovtrue��  , 9:9 l     ��������  ��  ��  : ;<; l     ��=>��  = < 6 Set Energy Saver to shutdown later than standard time   > �?? l   S e t   E n e r g y   S a v e r   t o   s h u t d o w n   l a t e r   t h a n   s t a n d a r d   t i m e< @A@ i   0 3BCB I      �������� ,0 setopennightshutdown setOpenNightShutdown��  ��  C k     
DD EFE I    ��GH
�� .sysoexecTEXT���     TEXTG m     II �JJ h s u d o   / u s r / b i n / p m s e t   r e p e a t   s h u t d o w n   M T W R F S U   2 2 : 0 0 : 0 0H ��K��
�� 
badmK m    ��
�� boovtrue��  F L��L L    
MM m    	��
�� boovtrue��  A NON l     ��������  ��  ��  O PQP l     ��RS��  R  Disable Screensaver   S �TT & D i s a b l e   S c r e e n s a v e rQ UVU i   4 7WXW I      �������� (0 disablescreensaver disableScreensaver��  ��  X k     YY Z[Z I    ��\��
�� .sysoexecTEXT���     TEXT\ m     ]] �^^ � / u s r / b i n / d e f a u l t s   - c u r r e n t H o s t   w r i t e   c o m . a p p l e . s c r e e n s a v e r   i d l e T i m e   0��  [ _��_ L    `` m    ��
�� boovtrue��  V aba l     �������  ��  �  b cdc l     �~ef�~  e   Reset Screensaver   f �gg $   R e s e t   S c r e e n s a v e rd hih i   8 ;jkj I      �}�|�{�} $0 resetscreensaver resetScreensaver�|  �{  k k     ll mnm I    �zo�y
�z .sysoexecTEXT���     TEXTo m     pp �qq � / u s r / b i n / d e f a u l t s   - c u r r e n t H o s t   w r i t e   c o m . a p p l e . s c r e e n s a v e r   i d l e T i m e   1 2 0 0�y  n r�xr L    ss m    �w
�w boovtrue�x  i tut l     �v�u�t�v  �u  �t  u vwv l     �sxy�s  x . ( Add openDayCleanup to run on next login   y �zz P   A d d   o p e n D a y C l e a n u p   t o   r u n   o n   n e x t   l o g i nw {|{ i   < ?}~} I      �r�q�p�r .0 addopendayloginscript addOpenDayLoginScript�q  �p  ~ O     )� Z   (���o�n� =   ��� l   ��m�l� I   �k��j
�k .coredoexbool       obj � 4    �i�
�i 
logi� m    �� ��� & I F S S   O p e n   D a y   S e t u p�j  �m  �l  � m    �h
�h boovfals� I   $�g�f�
�g .corecrel****      � null�f  � �e��
�e 
kocl� m    �d
�d 
logi� �c��
�c 
insh� n    ���  ;    � 2   �b
�b 
logi� �a��`
�a 
prdt� K     �� �_��
�_ 
ppth� m    �� ��� J / A p p l i c a t i o n s / I F S S   O p e n   D a y   S e t u p . a p p� �^��]
�^ 
hidn� m    �\
�\ boovtrue�]  �`  �o  �n  � m     ���                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  | ��� l     �[�Z�Y�[  �Z  �Y  � ��� l     �X���X  �   Setup and run QMaster   � ��� ,   S e t u p   a n d   r u n   Q M a s t e r� ��� l     �W���W  � 3 - Not normally used - causes too many problems   � ��� Z   N o t   n o r m a l l y   u s e d   -   c a u s e s   t o o   m a n y   p r o b l e m s� ��� i   @ C��� I      �V�U�T�V 0 
setqmaster 
setQMaster�U  �T  � k     �� ��� I    �S��R
�S .sysoexecTEXT���     TEXT� m     �� ���� / u s r / s b i n / q m a s t e r p r e f s   - s t o p S h a r i n g   - s h a r i n g T y p e   s e r v i c e s O n l y   - s t a t u s M e n u   o n   - s e r v i c e   ' C o m p r e s s o r   P r o c e s s i n g '   o n   s h a r i n g   o n   i n s t a n c e s   1   a u t o r e s t a r t   o n   u n m a n a g e d   o n   l o g   3   t r u n c a t e   o n   - s t a r t S h a r i n g�R  � ��Q� L    �� m    �P
�P boovtrue�Q  � ��� l     �O�N�M�O  �N  �M  � ��� l     �L���L  �   Set Safari Preferences   � ��� .   S e t   S a f a r i   P r e f e r e n c e s� ��� i   D G��� I      �K�J�I�K $0 setdefaultsafari setDefaultSafari�J  �I  � k     8�� ��� O     ��� Z   ���H�G� E    ��� l   	��F�E� n    	��� 1    	�D
�D 
pnam� 2    �C
�C 
prcs�F  �E  � m   	 
�� ���  S a f a r i� O   ��� I   �B�A�@
�B .aevtquitnull��� ��� null�A  �@  � m    ���                                                                                  sfri  alis    <  Mac HD                     �\QHH+     
Safari.app                                                      w�<�        ����  	                Applications    �[Ĩ      ��T         Mac HD:Applications: Safari.app    
 S a f a r i . a p p    M a c   H D  Applications/Safari.app   / ��  �H  �G  � m     ���                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l   �?�>�=�?  �>  �=  � ��� I   #�<��;
�< .sysoexecTEXT���     TEXT� m    �� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   H o m e P a g e   h t t p : / / w w w . i f s s . e d u . a u /�;  � ��� I  $ )�:��9
�: .sysoexecTEXT���     TEXT� m   $ %�� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   S h o w S t a t u s B a r   - b o o l   Y E S�9  � ��� I  * /�8��7
�8 .sysoexecTEXT���     TEXT� m   * +�� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   C o n f i r m C l o s i n g M u l t i p l e P a g e s   0�7  � ��� I  0 5�6��5
�6 .sysoexecTEXT���     TEXT� m   0 1�� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   A u t o O p e n S a f e D o w n l o a d s   - b o o l   N O�5  � ��4� L   6 8�� m   6 7�3
�3 boovtrue�4  � ��� l     �2�1�0�2  �1  �0  � ��� l     �/�.�-�/  �.  �-  � ��� l     �,���,  � / ) Set the IFFS desktop to Deletion Warning   � ��� R   S e t   t h e   I F F S   d e s k t o p   t o   D e l e t i o n   W a r n i n g� ��� i   H K��� I      �+�*�)�+ &0 setdesktopwarning setDesktopWarning�*  �)  � k      �� ��� O     ��� k    �� ��� r    ��� n    ��� 4    �(�
�( 
file� m       � V I F S S _ K e y I m a g e _ S e c _ L o g o - D e l e t i o n _ W a r n i n g . j p g� n     4   
 �'
�' 
cfol m     �   D e s k t o p   P i c t u r e s n    
 4    
�&	
�& 
cfol	 m    	

 �  L i b r a r y 1    �%
�% 
sdsk� o      �$�$ 0 thefile theFile� �# r     c     J     �" o    �!�! 0 thefile theFile�"   m    � 
�  
alis 1    �
� 
dpic�#  � m     �                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  � � L      m    �
� boovtrue�  �  l     ����  �  �    l     ��     Reset the IFFS desktop    � .   R e s e t   t h e   I F F S   d e s k t o p  i   L O  I      ���� 0 resetdesktop resetDesktop�  �    k      !! "#" O     $%$ k    && '(' r    )*) n    +,+ 4    �-
� 
file- m    .. �// 4 I F S S _ K e y I m a g e _ S e c _ L o g o . j p g, n    010 4   
 �2
� 
cfol2 m    33 �44   D e s k t o p   P i c t u r e s1 n    
565 4    
�7
� 
cfol7 m    	88 �99  L i b r a r y6 1    �
� 
sdsk* o      �� 0 thefile theFile( :�: r    ;<; c    =>= J    ?? @�@ o    �� 0 thefile theFile�  > m    �
� 
alis< 1    �
� 
dpic�  % m     AA�                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  # B�B L     CC m    �

�
 boovtrue�   DED l     �	���	  �  �  E FGF l     ����  �  �  G HIH l     �JK�  J 5 / Set the login screen to warning bg and message   K �LL ^   S e t   t h e   l o g i n   s c r e e n   t o   w a r n i n g   b g   a n d   m e s s a g eI MNM i   P SOPO I      ��� � 0 setloginwarn setLoginWarn�  �   P k     QQ RSR O     TUT k    VV WXW l   ��������  ��  ��  X YZY I   ��[\
�� .sysoexecTEXT���     TEXT[ m    ]] �^^2 / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   D e s k t o p P i c t u r e   / L i b r a r y / D e s k t o p \   P i c t u r e s / I F S S _ K e y I m a g e _ S e c _ L o g o - D e l e t i o n \   W a r n i n g . j p g\ ��_��
�� 
badm_ m    ��
�� boovtrue��  Z `a` l   ��������  ��  ��  a bcb I   ��de
�� .sysoexecTEXT���     TEXTd m    ff �ggF / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   L o g i n w i n d o w T e x t   ' T h i s   c o m p u t e r   w i l l   h a v e   a l l   f i l e s   a n d   p r o j e c t s   d e l e t e d   a t   t h e   e n d   o f   t h i s   w e e k 'e ��h��
�� 
badmh m    ��
�� boovtrue��  c i��i l   ��������  ��  ��  ��  U m     jj�                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  S k��k L    ll m    ��
�� boovtrue��  N mnm l     ��������  ��  ��  n opo l     ��������  ��  ��  p qrq l     ��st��  s ? 9 Remove and reset the login screen warning bg and message   t �uu r   R e m o v e   a n d   r e s e t   t h e   l o g i n   s c r e e n   w a r n i n g   b g   a n d   m e s s a g er vwv i   T Wxyx I      �������� "0 removeloginwarn removeLoginWarn��  ��  y k     zz {|{ O     }~} k     ��� l   ��������  ��  ��  � ��� I   ����
�� .sysoexecTEXT���     TEXT� m    �� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   D e s k t o p P i c t u r e   / L i b r a r y / D e s k t o p \   P i c t u r e s / N a t u r e / A u r o r a . j p g� �����
�� 
badm� m    ��
�� boovtrue��  � ��� l   ��������  ��  ��  � ��� I   ����
�� .sysoexecTEXT���     TEXT� m    �� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   L o g i n w i n d o w T e x t   ' '� �����
�� 
badm� m    ��
�� boovtrue��  � ���� l   ��������  ��  ��  ��  ~ m     ���                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  | ���� L    �� m    ��
�� boovtrue��  w ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � "  Reset the IFSS user picture   � ��� 8   R e s e t   t h e   I F S S   u s e r   p i c t u r e� ��� i   X [��� I      �������� 0 resetuserpic resetUserPic��  ��  � k     3�� ��� O     0��� Z    /������� =    ��� l   	������ n    	��� 1    	��
�� 
pnam� 1    ��
�� 
curu��  ��  � m   	 
�� ���  i f s s� k    +�� ��� r    ��� n    ��� 4    ���
�� 
file� m    �� ���  i f s s . t i f f� n    ��� 4    ���
�� 
cfol� m    �� ���  I F S S� n    ��� 4    ���
�� 
cfol� m    �� ���  U s e r   P i c t u r e s� n    ��� 4    ���
�� 
cfol� m    �� ���  L i b r a r y� 1    ��
�� 
sdsk� o      ���� 0 thepic thePic� ���� r     +��� c     %��� J     #�� ���� o     !���� 0 thepic thePic��  � m   # $��
�� 
alis� l     ������ n      ��� 1   ( *��
�� 
picp� 1   % (��
�� 
curu��  ��  ��  ��  ��  � m     ���                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  � ���� L   1 3�� m   1 2��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   Cleaning Routines   � ��� $   C l e a n i n g   R o u t i n e s� ��� l     ��������  ��  ��  � ��� l     ������  �    Used in multiple handlers   � ��� 4   U s e d   i n   m u l t i p l e   h a n d l e r s� ��� p   \ \�� ����� 0 gcleanfolder gCleanFolder� ������ 0 gthedesktop gTheDesktop��  � ��� l     ��������  ��  ��  � ��� l     ������  � ; 5 Move Desktop contents to a dated folder in Documents   � ��� j   M o v e   D e s k t o p   c o n t e n t s   t o   a   d a t e d   f o l d e r   i n   D o c u m e n t s� ��� i   \ _��� I      �������� 0 cleandesktop cleanDesktop��  ��  � O     ���� k    ��� ��� l   ��������  ��  ��  � ��� O   ,� � r    + b    ) b     7   ��
�� 
ctxt m    ����  m    ����  m    		 �

  - 7   (��
�� 
ctxt m   " $����  m   % '���� 
 o      ���� 0 formatteddate formattedDate  l   ���� c     c     l   	���� I   	������
�� .misccurdldt    ��� null��  ��  ��  ��   m   	 
��
�� 
isot m    ��
�� 
TEXT��  ��  �  l  - -��������  ��  ��    r   - 2 b   - 0 m   - . �   C l e a n e d   D e s k t o p   o   . /�� 0 formatteddate formattedDate o      �~�~ 0 gcleanfolder gCleanFolder  l  3 3�}�|�{�}  �|  �{     Z   3 c!"�z�y! H   3 A## l  3 @$�x�w$ I  3 @�v%�u
�v .coredoexbool       obj % n   3 <&'& 4   9 <�t(
�t 
cfol( o   : ;�s�s 0 gcleanfolder gCleanFolder' n   3 9)*) 4   6 9�r+
�r 
cfol+ m   7 8,, �--  D o c u m e n t s* 1   3 6�q
�q 
home�u  �x  �w  " I  D _�p�o.
�p .corecrel****      � null�o  . �n/0
�n 
kocl/ m   F G�m
�m 
cfol0 �l12
�l 
insh1 n   J R343 4   M R�k5
�k 
cfol5 m   N Q66 �77  D o c u m e n t s4 1   J M�j
�j 
home2 �i8�h
�i 
prdt8 K   U [99 �g:�f
�g 
pnam: o   X Y�e�e 0 gcleanfolder gCleanFolder�f  �h  �z  �y    ;<; r   d q=>= n   d o?@? 4   l o�dA
�d 
cfolA o   m n�c�c 0 gcleanfolder gCleanFolder@ n   d lBCB 4   g l�bD
�b 
cfolD m   h kEE �FF  D o c u m e n t sC 1   d g�a
�a 
home> o      �`�` 0 targetfolder targetFolder< GHG l  r r�_�^�]�_  �^  �]  H IJI r   r �KLK I  r �\MN
�\ .earsffdralis        afdrM m   r u�[
�[ afdmdeskN �ZO�Y
�Z 
fromO m   x {�X
�X fldmfldu�Y  L o      �W�W 0 gthedesktop gTheDesktopJ PQP l  � ��V�U�T�V  �U  �T  Q RSR I  � ��STU
�S .coremoveobj        obj T n   � �VWV 1   � ��R
�R 
ectsW o   � ��Q�Q 0 gthedesktop gTheDesktopU �PX�O
�P 
inshX o   � ��N�N 0 targetfolder targetFolder�O  S Y�MY l  � ��L�K�J�L  �K  �J  �M  � m     ZZ�                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  � [\[ l     �I�H�G�I  �H  �G  \ ]^] l     �F_`�F  _ 9 3 Basic cleanup of Desktop, Downloads and Temp Trash   ` �aa f   B a s i c   c l e a n u p   o f   D e s k t o p ,   D o w n l o a d s   a n d   T e m p   T r a s h^ bcb i   ` cded I      �E�D�C�E 0 basiccleanup basicCleanup�D  �C  e k     Aff ghg l     �B�A�@�B  �A  �@  h iji I     �?�>�=�? 0 cleandesktop cleanDesktop�>  �=  j klk l   �<�;�:�<  �;  �:  l mnm O    >opo k   
 =qq rsr l  
 
�9�8�7�9  �8  �7  s tut l  
 
�6vw�6  v 8 2 put files back on Desktop (in the cleanup folder)   w �xx d   p u t   f i l e s   b a c k   o n   D e s k t o p   ( i n   t h e   c l e a n u p   f o l d e r )u yzy I  
 �5{|
�5 .coremoveobj        obj { n   
 }~} 4    �4
�4 
cfol o    �3�3 0 gcleanfolder gCleanFolder~ n   
 ��� 4    �2�
�2 
cfol� m    �� ���  D o c u m e n t s� 1   
 �1
�1 
home| �0��/
�0 
insh� o    �.�. 0 gthedesktop gTheDesktop�/  z ��� l   �-�,�+�-  �,  �+  � ��� I   &�*��)
�* .coredeloobj        obj � n    "��� 2     "�(
�( 
cobj� n     ��� 4     �'�
�' 
cfol� m    �� ���  D o w n l o a d s� 1    �&
�& 
home�)  � ��� I  ' 3�%��$
�% .coredeloobj        obj � n   ' /��� 2   - /�#
�# 
cobj� n   ' -��� 4   * -�"�
�" 
cfol� m   + ,�� ���  T e m p   T r a s h� 1   ' *�!
�! 
sdsk�$  � ��� I  4 ;� ��
�  .fndremptnull��� ��� obj � 1   4 7�
� 
trsh�  � ��� l  < <����  �  �  �  p m    ���                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  n ��� L   ? A�� m   ? @�
� boovtrue�  c ��� l     ����  �  �  � ��� l     ����  � $  Delete all user docs and data   � ��� <   D e l e t e   a l l   u s e r   d o c s   a n d   d a t a� ��� i   d g��� I      ���� &0 deletealluserdocs deleteAllUserDocs�  �  � k    �� ��� l     ����  � 5 / Delete some crap this way because it is easier   � ��� ^   D e l e t e   s o m e   c r a p   t h i s   w a y   b e c a u s e   i t   i s   e a s i e r� ��� l     ����  �  �  � ��� I    ���
� .sysoexecTEXT���     TEXT� m     �� ��� X r m   - r f   ' / U s e r s / i f s s / P i c t u r e s / i P h o t o   L i b r a r y '�  � ��� I   �
��	
�
 .sysoexecTEXT���     TEXT� m    �� ��� R r m   - r f   ' / U s e r s / i f s s / P i c t u r e s / P h o t o   B o o t h '�	  � ��� l   ����  �  �  � ��� l   ����  � $  Now delete all the other crap   � ��� <   N o w   d e l e t e   a l l   t h e   o t h e r   c r a p� ��� l   ����  �  �  � ��� O    ���� k    ��� ��� l   �� ���  �   ��  � ��� Z    -������� l   ������ I   �����
�� .coredoexbool       obj � n    ��� 4    ���
�� 
cfol� m    �� ���  B a c k u p� 1    ��
�� 
home��  ��  ��  � I   )�����
�� .coredeloobj        obj � n    %��� 2   # %��
�� 
cobj� n    #��� 4     #���
�� 
cfol� m   ! "�� ���  B a c k u p� 1     ��
�� 
home��  ��  ��  � ��� l  . .��������  ��  ��  � ��� Z   . K������� l  . 8������ I  . 8�����
�� .coredoexbool       obj � n   . 4��� 4   1 4���
�� 
cfol� m   2 3�� ���  D e s k t o p� 1   . 1��
�� 
home��  ��  ��  � I  ; G�����
�� .coredeloobj        obj � n   ; C��� 2   A C��
�� 
cobj� n   ; A��� 4   > A���
�� 
cfol� m   ? @�� ���  D e s k t o p� 1   ; >��
�� 
home��  ��  ��  � ��� l  L L��������  ��  ��  � ��� Z   L i������� l  L V������ I  L V�����
�� .coredoexbool       obj � n   L R   4   O R��
�� 
cfol m   P Q �  D o c u m e n t s 1   L O��
�� 
home��  ��  ��  � I  Y e����
�� .coredeloobj        obj  n   Y a 2   _ a��
�� 
cobj n   Y _	 4   \ _��

�� 
cfol
 m   ] ^ �  D o c u m e n t s	 1   Y \��
�� 
home��  ��  ��  �  l  j j��������  ��  ��    Z   j ����� l  j t���� I  j t����
�� .coredoexbool       obj  n   j p 4   m p��
�� 
cfol m   n o �  D o w n l o a d s 1   j m��
�� 
home��  ��  ��   I  w �����
�� .coredeloobj        obj  n   w � 2    ���
�� 
cobj n   w  4   z ��
�� 
cfol m   { ~   �!!  D o w n l o a d s 1   w z��
�� 
home��  ��  ��   "#" l  � ���������  ��  ��  # $%$ Z   � �&'����& l  � �(����( I  � ���)��
�� .coredoexbool       obj ) n   � �*+* 4   � ���,
�� 
cfol, m   � �-- �..  M o v i e s+ 1   � ���
�� 
home��  ��  ��  ' I  � ���/��
�� .coredeloobj        obj / n   � �010 2   � ���
�� 
cobj1 n   � �232 4   � ���4
�� 
cfol4 m   � �55 �66  M o v i e s3 1   � ���
�� 
home��  ��  ��  % 787 l  � ���������  ��  ��  8 9:9 Z   � �;<����; l  � �=����= I  � ���>��
�� .coredoexbool       obj > n   � �?@? 4   � ���A
�� 
cfolA m   � �BB �CC 
 M u s i c@ 1   � ���
�� 
home��  ��  ��  < I  � ���D��
�� .coredeloobj        obj D n   � �EFE 2   � ���
�� 
cobjF n   � �GHG 4   � ���I
�� 
cfolI m   � �JJ �KK 
 M u s i cH 1   � ���
�� 
home��  ��  ��  : LML l  � ���������  ��  ��  M NON Z   � �PQ����P l  � �R����R I  � ���S��
�� .coredoexbool       obj S n   � �TUT 4   � ���V
�� 
cfolV m   � �WW �XX  T e m p   T r a s hU 1   � ���
�� 
home��  ��  ��  Q I  � ���Y��
�� .coredeloobj        obj Y n   � �Z[Z 2   � ���
�� 
cobj[ n   � �\]\ 4   � ���^
�� 
cfol^ m   � �__ �``  T e m p   T r a s h] 1   � ���
�� 
sdsk��  ��  ��  O aba l  � ���������  ��  ��  b cdc I  � ���e��
�� .fndremptnull��� ��� obj e 1   � ���
�� 
trsh��  d f��f l  � ���������  ��  ��  ��  � m    gg�                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  � h��h L   �ii m   � ��
�� boovtrue��  � jkj l     ��������  ��  ��  k l��l l     �������  ��  �  ��       �~mnopqrstuvwxyz{|}~����������~  m �}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�} 0 cleanup  �| 0 
bigcleanup 
bigCleanup�{ 0 
addcleanup 
addCleanup�z (0 cleanandsetopenday cleanAndSetOpenDay�y  0 prepareopenday prepareOpenDay�x 0 
resetprefs 
resetPrefs�w 0 copymcx copyMCX�v 0 enablead enableAD�u 0 settimezone setTimeZone�t .0 setdefaultenergysaver setDefaultEnergySaver�s .0 setopendayenergysaver setOpenDayEnergySaver�r &0 setopendaypoweron setOpenDayPowerOn�q ,0 setopennightshutdown setOpenNightShutdown�p (0 disablescreensaver disableScreensaver�o $0 resetscreensaver resetScreensaver�n .0 addopendayloginscript addOpenDayLoginScript�m 0 
setqmaster 
setQMaster�l $0 setdefaultsafari setDefaultSafari�k &0 setdesktopwarning setDesktopWarning�j 0 resetdesktop resetDesktop�i 0 setloginwarn setLoginWarn�h "0 removeloginwarn removeLoginWarn�g 0 resetuserpic resetUserPic�f 0 cleandesktop cleanDesktop�e 0 basiccleanup basicCleanup�d &0 deletealluserdocs deleteAllUserDocs
�c .aevtoappnull  �   � ****n �b #�a�`���_�b 0 cleanup  �a  �`  �  � �^�]�\ B�[�^ 0 
resetprefs 
resetPrefs�] 0 basiccleanup basicCleanup�\ "0 removeloginwarn removeLoginWarn
�[ .sysodlogaskr        TEXT�_ *j+  O*j+ O*j+ O�j o �Z I�Y�X���W�Z 0 
bigcleanup 
bigCleanup�Y  �X  �  �  O�V S�U�T�S \ _�R�Q�P�O�N�M�L m�K�J�I �
�V 
appr
�U 
disp
�T stic    
�S 
btns
�R 
dflt
�Q 
givu�P �O 

�N .sysodlogaskr        TEXT
�M 
rslt
�L 
bhit�K 0 
resetprefs 
resetPrefs�J &0 deletealluserdocs deleteAllUserDocs�I "0 removeloginwarn removeLoginWarn�W 9��������lv�k��� O��,�  *j+ O*j+ O*j+ Oa j Y hp �H ��G�F���E�H 0 
addcleanup 
addCleanup�G  �F  � �D�D 0 choiceresult choiceResult�  ��C ��B � � ��A�@�?�> � ��= ��<�;�:
�C 
appr
�B 
btns
�A 
dflt�@ 
�? .sysodlogaskr        TEXT
�> 
bhit�= &0 setopendaypoweron setOpenDayPowerOn�< ,0 setopennightshutdown setOpenNightShutdown�; .0 addopendayloginscript addOpenDayLoginScript�: 0 setloginwarn setLoginWarn�E I�������mv�k� 	�,E�O�� /��  
*j+ Y ��  
*j+ Y fO*j+ O*j+ Y hq �9 ��8�7���6�9 (0 cleanandsetopenday cleanAndSetOpenDay�8  �7  �  � �5�4%�3�2�1�0�/�.�-�,�+�*�5 0 
resetprefs 
resetPrefs�4 0 cleandesktop cleanDesktop
�3 
home
�2 
cfol
�1 
cobj
�0 .coredeloobj        obj 
�/ 
sdsk
�. 
trsh
�- .fndremptnull��� ��� obj �, "0 removeloginwarn removeLoginWarn�+ .0 setopendayenergysaver setOpenDayEnergySaver�* (0 disablescreensaver disableScreensaver�6 I*j+  O*j+ O� %*�,��/�-j O*�,��/�-j O*�,j OPUO*j+ O*j+ O*j+ OPr �)@�(�'���&�)  0 prepareopenday prepareOpenDay�(  �'  �  � o�%
�% .sysodlogaskr        TEXT�& �j s �$��#�"���!�$ 0 
resetprefs 
resetPrefs�#  �"  �  � � �������  0 enablead enableAD� 0 settimezone setTimeZone� .0 setdefaultenergysaver setDefaultEnergySaver� $0 resetscreensaver resetScreensaver� $0 setdefaultsafari setDefaultSafari� 0 resetdesktop resetDesktop� 0 resetuserpic resetUserPic�! **j+  O*j+ O*j+ O*j+ O*j+ O*j+ O*j+ t �������� 0 copymcx copyMCX�  �  �  � ���
� 
badm
� .sysoexecTEXT���     TEXT� ��el Oeu �������� 0 enablead enableAD�  �  �  � ��
� 
uien� � e*�,FUOev �������� 0 settimezone setTimeZone�  �  �  � ��
�
�
 .sysoexecTEXT���     TEXT� �j O�j Oew �	�������	 .0 setdefaultenergysaver setDefaultEnergySaver�  �  �  � ����
� 
badm
� .sysoexecTEXT���     TEXT� ��el O��el O��el Oex ������ � .0 setopendayenergysaver setOpenDayEnergySaver�  �  �  � ����
�� 
badm
�� .sysoexecTEXT���     TEXT�  ��el Oey ��.���������� &0 setopendaypoweron setOpenDayPowerOn��  ��  �  � 4����
�� 
badm
�� .sysoexecTEXT���     TEXT�� ��el Oez ��C���������� ,0 setopennightshutdown setOpenNightShutdown��  ��  �  � I����
�� 
badm
�� .sysoexecTEXT���     TEXT�� ��el Oe{ ��X���������� (0 disablescreensaver disableScreensaver��  ��  �  � ]��
�� .sysoexecTEXT���     TEXT�� 	�j Oe| ��k���������� $0 resetscreensaver resetScreensaver��  ��  �  � p��
�� .sysoexecTEXT���     TEXT�� 	�j Oe} ��~���������� .0 addopendayloginscript addOpenDayLoginScript��  ��  �  � �����������������������
�� 
logi
�� .coredoexbool       obj 
�� 
kocl
�� 
insh
�� 
prdt
�� 
ppth
�� 
hidn�� �� 
�� .corecrel****      � null�� *� &*��/j f  *���*�-6����e�� Y hU~ ������������� 0 
setqmaster 
setQMaster��  ��  �  � ���
�� .sysoexecTEXT���     TEXT�� 	�j Oe ������������� $0 setdefaultsafari setDefaultSafari��  ��  �  � ���������������
�� 
prcs
�� 
pnam
�� .aevtquitnull��� ��� null
�� .sysoexecTEXT���     TEXT�� 9� *�-�,� � *j UY hUO�j O�j O�j O�j Oe� ������������� &0 setdesktopwarning setDesktopWarning��  ��  � ���� 0 thefile theFile� 	����
�� ����
�� 
sdsk
�� 
cfol
�� 
file
�� 
alis
�� 
dpic�� !� *�,��/��/��/E�O�kv�&*�,FUOe� �� ���������� 0 resetdesktop resetDesktop��  ��  � ���� 0 thefile theFile� 	A����83��.����
�� 
sdsk
�� 
cfol
�� 
file
�� 
alis
�� 
dpic�� !� *�,��/��/��/E�O�kv�&*�,FUOe� ��P���������� 0 setloginwarn setLoginWarn��  ��  �  � j]����f
�� 
badm
�� .sysoexecTEXT���     TEXT�� � ��el O��el OPUOe� ��y���������� "0 removeloginwarn removeLoginWarn��  ��  �  � �������
�� 
badm
�� .sysoexecTEXT���     TEXT�� � ��el O��el OPUOe� ������������� 0 resetuserpic resetUserPic��  ��  � ���� 0 thepic thePic� ��������������������
�� 
curu
�� 
pnam
�� 
sdsk
�� 
cfol
�� 
file
�� 
alis
�� 
picp�� 4� -*�,�,�  "*�,��/��/��/��/E�O�kv�&*�,�,FY hUOe� ������������� 0 cleandesktop cleanDesktop��  ��  � ������ 0 formatteddate formattedDate�� 0 targetfolder targetFolder� Z����������	����������,������6������E��������������
�� .misccurdldt    ��� null
�� 
isot
�� 
TEXT
�� 
ctxt�� �� �� 
�� 0 gcleanfolder gCleanFolder
�� 
home
�� 
cfol
�� .coredoexbool       obj 
�� 
kocl
�� 
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
�� .coremoveobj        obj �� �� �*j �&�& *[�\[Zm\Z�2�%*[�\[Z�\Z�2%E�UO�%E�O*�,��/��/j   *��a *�,�a /a a �l� Y hO*�,�a /��/E�Oa a a l E` O_ a ,a �l OPU� ��e���������� 0 basiccleanup basicCleanup��  ��  �  � ���~�}��|�{�z�y��x�w�v��u�t� 0 cleandesktop cleanDesktop
�~ 
home
�} 
cfol�| 0 gcleanfolder gCleanFolder
�{ 
insh�z 0 gthedesktop gTheDesktop
�y .coremoveobj        obj 
�x 
cobj
�w .coredeloobj        obj 
�v 
sdsk
�u 
trsh
�t .fndremptnull��� ��� obj �� B*j+  O� 5*�,��/��/��l O*�,��/�-j O*�,��/�-j O*�,j OPUOe� �s��r�q���p�s &0 deletealluserdocs deleteAllUserDocs�r  �q  �  � ��o�g�n�m��l��k�j�� -5BJW�i_�h�g
�o .sysoexecTEXT���     TEXT
�n 
home
�m 
cfol
�l .coredoexbool       obj 
�k 
cobj
�j .coredeloobj        obj 
�i 
sdsk
�h 
trsh
�g .fndremptnull��� ��� obj �p�j O�j O� �*�,��/j  *�,��/�-j 
Y hO*�,��/j  *�,��/�-j 
Y hO*�,��/j  *�,��/�-j 
Y hO*�,��/j  *�,�a /�-j 
Y hO*�,�a /j  *�,�a /�-j 
Y hO*�,�a /j  *�,�a /�-j 
Y hO*�,�a /j  *a ,�a /�-j 
Y hO*a ,j OPUOe� �f��e�d���c
�f .aevtoappnull  �   � ****� k     ��  �b�b  �e  �d  �  �  �a
�a .sysodlogaskr        TEXT�c �j  ascr  ��ޭ