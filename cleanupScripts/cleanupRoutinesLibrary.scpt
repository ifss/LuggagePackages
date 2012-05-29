FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
 Provides subroutines for various cleanup scripts. Does nothing when run directly
 
 Most run from here now, by calling scripts -- changes only need to be made here
 
 IFSS Maintenance app choices run:
 1. Run Open Day Cleanup next login :: addCleanup()
 2. Reset after Open Day :: setDefaultEnergySaver(), resetScreensaver()
 3. Reset Screen Saver :: resetScreensaver() *also removes script from login items
 4. Basic Clean Up :: cleanup()
 5. Big Clean Up -- Careful!! :: bigCleanup()
 6. Add Warning about Deletion :: setLoginWarn()
 7. Clear Warning about Deletion :: removeLoginWarn()
 8. Install Automatic Setup for Open Day :: prepareOpenDay()
 
     � 	 	 
   P r o v i d e s   s u b r o u t i n e s   f o r   v a r i o u s   c l e a n u p   s c r i p t s .   D o e s   n o t h i n g   w h e n   r u n   d i r e c t l y 
   
   M o s t   r u n   f r o m   h e r e   n o w ,   b y   c a l l i n g   s c r i p t s   - -   c h a n g e s   o n l y   n e e d   t o   b e   m a d e   h e r e 
   
   I F S S   M a i n t e n a n c e   a p p   c h o i c e s   r u n : 
   1 .   R u n   O p e n   D a y   C l e a n u p   n e x t   l o g i n   : :   a d d C l e a n u p ( ) 
   2 .   R e s e t   a f t e r   O p e n   D a y   : :   s e t D e f a u l t E n e r g y S a v e r ( ) ,   r e s e t S c r e e n s a v e r ( ) 
   3 .   R e s e t   S c r e e n   S a v e r   : :   r e s e t S c r e e n s a v e r ( )   * a l s o   r e m o v e s   s c r i p t   f r o m   l o g i n   i t e m s 
   4 .   B a s i c   C l e a n   U p   : :   c l e a n u p ( ) 
   5 .   B i g   C l e a n   U p   - -   C a r e f u l ! !   : :   b i g C l e a n u p ( ) 
   6 .   A d d   W a r n i n g   a b o u t   D e l e t i o n   : :   s e t L o g i n W a r n ( ) 
   7 .   C l e a r   W a r n i n g   a b o u t   D e l e t i o n   : :   r e m o v e L o g i n W a r n ( ) 
   8 .   I n s t a l l   A u t o m a t i c   S e t u p   f o r   O p e n   D a y   : :   p r e p a r e O p e n D a y ( ) 
   
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
�� boovfals �  � � � I   9 >����~�� .0 addopendayloginscript addOpenDayLoginScript�  �~   �  � � � l  ? ?�}�|�{�}  �|  �{   �  � � � l  ? ?�z � ��z   � !  Add warning about deletion    � � � � 6   A d d   w a r n i n g   a b o u t   d e l e t i o n �  ��y � I   ? D�x�w�v�x 0 setloginwarn setLoginWarn�w  �v  �y  ��  ��  ��   �  � � � l     �u�t�s�u  �t  �s   �  � � � i     � � � I      �r�q�p�r  0 prepareopenday prepareOpenDay�q  �p   � k     � � �  � � � l     �o � ��o   � !  Automate prep for Open Day    � � � � 6   A u t o m a t e   p r e p   f o r   O p e n   D a y �  � � � l     �n�m�l�n  �m  �l   �  � � � l     �k � ��k   � !  Add warning about deletion    � � � � 6   A d d   w a r n i n g   a b o u t   d e l e t i o n �  � � � l     �j � ��j   �  setLoginWarn()    � � � �  s e t L o g i n W a r n ( ) �  � � � l     �i�h�g�i  �h  �g   �  � � � l     �f � ��f   � 2 , At some point, determined by a Launchdaemon    � � � � X   A t   s o m e   p o i n t ,   d e t e r m i n e d   b y   a   L a u n c h d a e m o n �  � � � l     �e � ��e   �  setOpenDayPowerOn()    � � � � & s e t O p e n D a y P o w e r O n ( ) �  � � � l     �d �d     addOpenDayLoginScript()    � . a d d O p e n D a y L o g i n S c r i p t ( ) �  l     �c�b�a�c  �b  �a    l     �`�`   F @ At some point, will need to remove logn script, reset power etc    �		 �   A t   s o m e   p o i n t ,   w i l l   n e e d   t o   r e m o v e   l o g n   s c r i p t ,   r e s e t   p o w e r   e t c 

 l     �_�^�]�_  �^  �]    l     �\�\   D >display dialog "Does nothing - run the openDayCleanup for now"    � | d i s p l a y   d i a l o g   " D o e s   n o t h i n g   -   r u n   t h e   o p e n D a y C l e a n u p   f o r   n o w "  l     �[�Z�Y�[  �Z  �Y    l     �X�X   3 - Temporarily using this for a one-off cleanup    � Z   T e m p o r a r i l y   u s i n g   t h i s   f o r   a   o n e - o f f   c l e a n u p  l     �W�V�U�W  �V  �U    I     �T�S�R�T 0 enablead enableAD�S  �R    I    �Q�P�O�Q 0 settimezone setTimeZone�P  �O    I    �N�M�L�N &0 setopendaypoweron setOpenDayPowerOn�M  �L    !  I    �K�J�I�K .0 setopendayenergysaver setOpenDayEnergySaver�J  �I  ! "#" I    �H�G�F�H (0 disablescreensaver disableScreensaver�G  �F  # $%$ I    #�E�D�C�E $0 setdefaultsafari setDefaultSafari�D  �C  % &'& I   $ )�B�A�@�B 0 resetdesktop resetDesktop�A  �@  ' ()( I   * /�?�>�=�? 0 resetuserpic resetUserPic�>  �=  ) *+* l  0 0�<�;�:�<  �;  �:  + ,-, I   0 5�9�8�7�9 0 cleandesktop cleanDesktop�8  �7  - ./. l  6 6�6�5�4�6  �5  �4  / 010 O   6 b232 k   : a44 565 l  : :�3�2�1�3  �2  �1  6 787 I  : F�09�/
�0 .coredeloobj        obj 9 n   : B:;: 2   @ B�.
�. 
cobj; n   : @<=< 4   = @�->
�- 
cfol> m   > ??? �@@  D o w n l o a d s= 1   : =�,
�, 
home�/  8 ABA I  G U�+C�*
�+ .coredeloobj        obj C n   G QDED 2   O Q�)
�) 
cobjE n   G OFGF 4   J O�(H
�( 
cfolH m   K NII �JJ  T e m p   T r a s hG 1   G J�'
�' 
sdsk�*  B KLK I  V _�&M�%
�& .fndremptnull��� ��� obj M 1   V [�$
�$ 
trsh�%  L N�#N l  ` `�"�!� �"  �!  �   �#  3 m   6 7OO�                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  1 PQP l  c c����  �  �  Q RSR l  c c�TU�  T ? 9 Just in case: doesn't matter if there was no warning set   U �VV r   J u s t   i n   c a s e :   d o e s n ' t   m a t t e r   i f   t h e r e   w a s   n o   w a r n i n g   s e tS WXW I   c h���� "0 removeloginwarn removeLoginWarn�  �  X YZY l  i i����  �  �  Z [\[ O   i �]^] Z  o �_`��_ I  o {�a�
� .coredoexbool       obj a 4   o w�b
� 
logib m   s vcc �dd * I F S S   O p e n   D a y   C l e a n u p�  ` I  ~ ��e�
� .coredeloobj        obj e 4   ~ ��f
� 
logif m   � �gg �hh * I F S S   O p e n   D a y   C l e a n u p�  �  �  ^ m   i lii�                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  \ jkj l  � �����  �  �  k lml O   � �non Z  � �pq�
�	p I  � ��r�
� .coredoexbool       obj r 4   � ��s
� 
logis m   � �tt �uu , I F S S   R e s e t   S c r e e n s a v e r�  q I  � ��v�
� .coredeloobj        obj v 4   � ��w
� 
logiw m   � �xx �yy , I F S S   R e s e t   S c r e e n s a v e r�  �
  �	  o m   � �zz�                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  m {�{ l  � ��� ���  �   ��  �   � |}| l     ��������  ��  ��  } ~~ l     ������  �   Preferences routines   � ��� *   P r e f e r e n c e s   r o u t i n e s ��� l     ��������  ��  ��  � ��� l     ������  �   Reset everything   � ��� "   R e s e t   e v e r y t h i n g� ��� i    ��� I      �������� 0 
resetprefs 
resetPrefs��  ��  � k     /�� ��� I     �������� 0 copymcx copyMCX��  ��  � ��� I    �������� 0 enablead enableAD��  ��  � ��� I    �������� 0 settimezone setTimeZone��  ��  � ��� I    �������� .0 setdefaultenergysaver setDefaultEnergySaver��  ��  � ��� I    �������� $0 resetscreensaver resetScreensaver��  ��  � ��� I    #�������� $0 setdefaultsafari setDefaultSafari��  ��  � ��� I   $ )�������� 0 resetdesktop resetDesktop��  ��  � ���� I   * /�������� 0 resetuserpic resetUserPic��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �    Reset managed preferences   � ��� 4   R e s e t   m a n a g e d   p r e f e r e n c e s� ��� i    ��� I      �������� 0 copymcx copyMCX��  ��  � k     �� ��� l     ������  �   don't do this for now   � ��� ,   d o n ' t   d o   t h i s   f o r   n o w� ��� l     ������  � ~ xdo shell script "sudo installer -pkg /Library/Scripts/IFSS/packages/CopyMCX.pkg -target /" with administrator privileges   � ��� � d o   s h e l l   s c r i p t   " s u d o   i n s t a l l e r   - p k g   / L i b r a r y / S c r i p t s / I F S S / p a c k a g e s / C o p y M C X . p k g   - t a r g e t   / "   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s� ���� L     �� m     ��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ������  �   Enable assistive devices   � ��� 2   E n a b l e   a s s i s t i v e   d e v i c e s� ��� i    ��� I      �������� 0 enablead enableAD��  ��  � k     �� ��� O     
��� r    	��� m    ��
�� boovtrue� 1    ��
�� 
uien� m     ���                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  � ���� L    �� m    ��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ������  � $  Set time zone and time server   � ��� <   S e t   t i m e   z o n e   a n d   t i m e   s e r v e r� ��� i    ��� I      �������� 0 settimezone setTimeZone��  ��  � k     �� ��� I    �����
�� .sysoexecTEXT���     TEXT� m     �� ��� Z / u s r / s b i n / s y s t e m s e t u p   - s e t u s i n g n e t w o r k t i m e   o n��  � ��� I   �����
�� .sysoexecTEXT���     TEXT� m    �� ��� � / u s r / s b i n / s y s t e m s e t u p   - s e t t i m e z o n e   A u s t r a l i a / S y d n e y   - s e t n e t w o r k t i m e s e r v e r   t i m e . a s i a . a p p l e . c o m��  � ���� L    �� m    ��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ������  � ( " Set default Energy Saver settings   � ��� D   S e t   d e f a u l t   E n e r g y   S a v e r   s e t t i n g s� ��� i     #��� I      �������� .0 setdefaultenergysaver setDefaultEnergySaver��  ��  � k     �� ��� l     ������  � F @ Sets computer to never sleep while plugged in to a power source   � ��� �   S e t s   c o m p u t e r   t o   n e v e r   s l e e p   w h i l e   p l u g g e d   i n   t o   a   p o w e r   s o u r c e� ��� I    ����
�� .sysoexecTEXT���     TEXT� m     �� ��� < s u d o   / u s r / b i n / p m s e t   - c   s l e e p   0� �����
�� 
badm� m    ��
�� boovtrue��  � ��� l   ������  � P J Sets display to sleep after 30 minutes while plugged in to a power source   � ��� �   S e t s   d i s p l a y   t o   s l e e p   a f t e r   3 0   m i n u t e s   w h i l e   p l u g g e d   i n   t o   a   p o w e r   s o u r c e�    I   ��
�� .sysoexecTEXT���     TEXT m    	 � L s u d o   / u s r / b i n / p m s e t   - c   d i s p l a y s l e e p   3 0 ����
�� 
badm m   
 ��
�� boovtrue��    l   ��	
��  	 - ' Sets computer to shutdown at 9pm daily   
 � N   S e t s   c o m p u t e r   t o   s h u t d o w n   a t   9 p m   d a i l y  I   ��
�� .sysoexecTEXT���     TEXT m     � h s u d o   / u s r / b i n / p m s e t   r e p e a t   s h u t d o w n   M T W R F S U   2 1 : 0 0 : 0 0 ����
�� 
badm m    ��
�� boovtrue��   �� L     m    ��
�� boovtrue��  �  l     ��������  ��  ��    l     ����   / ) Set Energy Saver so display never sleeps    � R   S e t   E n e r g y   S a v e r   s o   d i s p l a y   n e v e r   s l e e p s  i   $ ' I      �������� .0 setopendayenergysaver setOpenDayEnergySaver��  ��   k     
   !"! l     ��#$��  # ! Sets display to never sleep   $ �%% 6 S e t s   d i s p l a y   t o   n e v e r   s l e e p" &'& I    ��()
�� .sysoexecTEXT���     TEXT( m     ** �++ J s u d o   / u s r / b i n / p m s e t   - c   d i s p l a y s l e e p   0) ��,��
�� 
badm, m    ��
�� boovtrue��  ' -��- L    
.. m    	��
�� boovtrue��   /0/ l     ��������  ��  ��  0 121 l     ��34��  3 8 2 Set Energy Saver for startup first thing Saturday   4 �55 d   S e t   E n e r g y   S a v e r   f o r   s t a r t u p   f i r s t   t h i n g   S a t u r d a y2 676 i   ( +898 I      �������� &0 setopendaypoweron setOpenDayPowerOn��  ��  9 k     
:: ;<; I    ��=>
�� .sysoexecTEXT���     TEXT= m     ?? �@@ d s u d o   / u s r / b i n / p m s e t   r e p e a t   w a k e o r p o w e r o n   S   7 : 3 0 : 0 0> ��A��
�� 
badmA m    ��
�� boovtrue��  < B��B L    
CC m    	��
�� boovtrue��  7 DED l     ��������  ��  ��  E FGF l     ��HI��  H < 6 Set Energy Saver to shutdown later than standard time   I �JJ l   S e t   E n e r g y   S a v e r   t o   s h u t d o w n   l a t e r   t h a n   s t a n d a r d   t i m eG KLK i   , /MNM I      ����~�� ,0 setopennightshutdown setOpenNightShutdown�  �~  N k     
OO PQP I    �}RS
�} .sysoexecTEXT���     TEXTR m     TT �UU h s u d o   / u s r / b i n / p m s e t   r e p e a t   s h u t d o w n   M T W R F S U   2 2 : 0 0 : 0 0S �|V�{
�| 
badmV m    �z
�z boovtrue�{  Q W�yW L    
XX m    	�x
�x boovtrue�y  L YZY l     �w�v�u�w  �v  �u  Z [\[ l     �t]^�t  ]  Disable Screensaver   ^ �__ & D i s a b l e   S c r e e n s a v e r\ `a` i   0 3bcb I      �s�r�q�s (0 disablescreensaver disableScreensaver�r  �q  c k     dd efe I    �pg�o
�p .sysoexecTEXT���     TEXTg m     hh �ii � / u s r / b i n / d e f a u l t s   - c u r r e n t H o s t   w r i t e   c o m . a p p l e . s c r e e n s a v e r   i d l e T i m e   0�o  f j�nj L    kk m    �m
�m boovtrue�n  a lml l     �l�k�j�l  �k  �j  m non l     �ipq�i  p   Reset Screensaver   q �rr $   R e s e t   S c r e e n s a v e ro sts i   4 7uvu I      �h�g�f�h $0 resetscreensaver resetScreensaver�g  �f  v k     ww xyx I    �ez�d
�e .sysoexecTEXT���     TEXTz m     {{ �|| � / u s r / b i n / d e f a u l t s   - c u r r e n t H o s t   w r i t e   c o m . a p p l e . s c r e e n s a v e r   i d l e T i m e   1 2 0 0�d  y }�c} L    ~~ m    �b
�b boovtrue�c  t � l     �a�`�_�a  �`  �_  � ��� l     �^���^  � . ( Add openDayCleanup to run on next login   � ��� P   A d d   o p e n D a y C l e a n u p   t o   r u n   o n   n e x t   l o g i n� ��� i   8 ;��� I      �]�\�[�] .0 addopendayloginscript addOpenDayLoginScript�\  �[  � O     )��� Z   (���Z�Y� =   ��� l   ��X�W� I   �V��U
�V .coredoexbool       obj � 4    �T�
�T 
logi� m    �� ��� * I F S S   O p e n   D a y   C l e a n u p�U  �X  �W  � m    �S
�S boovfals� I   $�R�Q�
�R .corecrel****      � null�Q  � �P��
�P 
kocl� m    �O
�O 
logi� �N��
�N 
insh� n    ���  ;    � 2   �M
�M 
logi� �L��K
�L 
prdt� K     �� �J��
�J 
ppth� m    �� ��� N / A p p l i c a t i o n s / I F S S   O p e n   D a y   C l e a n u p . a p p� �I��H
�I 
hidn� m    �G
�G boovtrue�H  �K  �Z  �Y  � m     ���                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     �F�E�D�F  �E  �D  � ��� l     �C���C  �   Setup and run QMaster   � ��� ,   S e t u p   a n d   r u n   Q M a s t e r� ��� l     �B���B  � 3 - Not normally used - causes too many problems   � ��� Z   N o t   n o r m a l l y   u s e d   -   c a u s e s   t o o   m a n y   p r o b l e m s� ��� i   < ?��� I      �A�@�?�A 0 
setqmaster 
setQMaster�@  �?  � k     �� ��� I    �>��=
�> .sysoexecTEXT���     TEXT� m     �� ���� / u s r / s b i n / q m a s t e r p r e f s   - s t o p S h a r i n g   - s h a r i n g T y p e   s e r v i c e s O n l y   - s t a t u s M e n u   o n   - s e r v i c e   ' C o m p r e s s o r   P r o c e s s i n g '   o n   s h a r i n g   o n   i n s t a n c e s   1   a u t o r e s t a r t   o n   u n m a n a g e d   o n   l o g   3   t r u n c a t e   o n   - s t a r t S h a r i n g�=  � ��<� L    �� m    �;
�; boovtrue�<  � ��� l     �:�9�8�:  �9  �8  � ��� l     �7���7  �   Set Safari Preferences   � ��� .   S e t   S a f a r i   P r e f e r e n c e s� ��� i   @ C��� I      �6�5�4�6 $0 setdefaultsafari setDefaultSafari�5  �4  � k     8�� ��� O     ��� Z   ���3�2� E    ��� l   	��1�0� n    	��� 1    	�/
�/ 
pnam� 2    �.
�. 
prcs�1  �0  � m   	 
�� ���  S a f a r i� O   ��� I   �-�,�+
�- .aevtquitnull��� ��� null�,  �+  � m    ���                                                                                  sfri  alis    <  Mac HD                     �\QHH+     
Safari.app                                                      w�<�        ����  	                Applications    �[Ĩ      ��T         Mac HD:Applications: Safari.app    
 S a f a r i . a p p    M a c   H D  Applications/Safari.app   / ��  �3  �2  � m     ���                                                                                  sevs  alis    �  Mac HD                     �\QHH+   !�System Events.app                                               �
� ��        ����  	                CoreServices    �[Ĩ      � PB     !� �Z �X  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l   �*�)�(�*  �)  �(  � ��� I   #�'��&
�' .sysoexecTEXT���     TEXT� m    �� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   H o m e P a g e   h t t p : / / w w w . i f s s . e d u . a u /�&  � ��� I  $ )�%��$
�% .sysoexecTEXT���     TEXT� m   $ %�� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   S h o w S t a t u s B a r   - b o o l   Y E S�$  � ��� I  * /�#��"
�# .sysoexecTEXT���     TEXT� m   * +�� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   C o n f i r m C l o s i n g M u l t i p l e P a g e s   0�"  � ��� I  0 5�!�� 
�! .sysoexecTEXT���     TEXT� m   0 1�� ��� � / u s r / b i n / d e f a u l t s   w r i t e   / U s e r s / i f s s / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S a f a r i   A u t o O p e n S a f e D o w n l o a d s   - b o o l   N O�   � ��� L   6 8�� m   6 7�
� boovtrue�  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �   Reset the IFFS desktop   � ��� .   R e s e t   t h e   I F F S   d e s k t o p� ��� i   D G��� I      ���� 0 resetdesktop resetDesktop�  �  � k      �� � � O      k      r     n    	 4    �

� 
file
 m     � 4 I F S S _ K e y I m a g e _ S e c _ L o g o . j p g	 n     4   
 �
� 
cfol m     �   D e s k t o p   P i c t u r e s n    
 4    
�
� 
cfol m    	 �  L i b r a r y 1    �
� 
sdsk o      �� 0 thefile theFile � r     c     J     � o    �� 0 thefile theFile�   m    �
� 
alis 1    �

�
 
dpic�   m     �                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��    �	 L        m    �
� boovtrue�	  � !"! l     ����  �  �  " #$# l     ����  �  �  $ %&% l     �'(�  ' 5 / Set the login screen to warning bg and message   ( �)) ^   S e t   t h e   l o g i n   s c r e e n   t o   w a r n i n g   b g   a n d   m e s s a g e& *+* i   H K,-, I      � �����  0 setloginwarn setLoginWarn��  ��  - k     .. /0/ O     121 k    33 454 l   ��������  ��  ��  5 676 I   ��89
�� .sysoexecTEXT���     TEXT8 m    :: �;;2 / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   D e s k t o p P i c t u r e   / L i b r a r y / D e s k t o p \   P i c t u r e s / I F S S _ K e y I m a g e _ S e c _ L o g o - D e l e t i o n \   W a r n i n g . j p g9 ��<��
�� 
badm< m    ��
�� boovtrue��  7 =>= l   ��������  ��  ��  > ?@? I   ��AB
�� .sysoexecTEXT���     TEXTA m    CC �DDF / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   L o g i n w i n d o w T e x t   ' T h i s   c o m p u t e r   w i l l   h a v e   a l l   f i l e s   a n d   p r o j e c t s   d e l e t e d   a t   t h e   e n d   o f   t h i s   w e e k 'B ��E��
�� 
badmE m    ��
�� boovtrue��  @ F��F l   ��������  ��  ��  ��  2 m     GG�                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  0 H��H L    II m    ��
�� boovtrue��  + JKJ l     ��������  ��  ��  K LML l     ��������  ��  ��  M NON l     ��PQ��  P ? 9 Remove and reset the login screen warning bg and message   Q �RR r   R e m o v e   a n d   r e s e t   t h e   l o g i n   s c r e e n   w a r n i n g   b g   a n d   m e s s a g eO STS i   L OUVU I      �������� "0 removeloginwarn removeLoginWarn��  ��  V k     WW XYX O     Z[Z k    \\ ]^] l   ��������  ��  ��  ^ _`_ I   ��ab
�� .sysoexecTEXT���     TEXTa m    cc �dd � / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   D e s k t o p P i c t u r e   / L i b r a r y / D e s k t o p \   P i c t u r e s / N a t u r e / A u r o r a . j p gb ��e��
�� 
badme m    ��
�� boovtrue��  ` fgf l   ��������  ��  ��  g hih I   ��jk
�� .sysoexecTEXT���     TEXTj m    ll �mm � / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . l o g i n w i n d o w   L o g i n w i n d o w T e x t   ' 'k ��n��
�� 
badmn m    ��
�� boovtrue��  i o��o l   ��������  ��  ��  ��  [ m     pp�                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  Y q��q L    rr m    ��
�� boovtrue��  T sts l     ��������  ��  ��  t uvu l     ��������  ��  ��  v wxw l     ��������  ��  ��  x yzy l     ��{|��  { "  Reset the IFSS user picture   | �}} 8   R e s e t   t h e   I F S S   u s e r   p i c t u r ez ~~ i   P S��� I      �������� 0 resetuserpic resetUserPic��  ��  � k     3�� ��� O     0��� Z    /������� =    ��� l   	������ n    	��� 1    	��
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
�� boovtrue��   ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   Cleaning Routines   � ��� $   C l e a n i n g   R o u t i n e s� ��� l     ��������  ��  ��  � ��� l     ������  �    Used in multiple handlers   � ��� 4   U s e d   i n   m u l t i p l e   h a n d l e r s� ��� p   T T�� ����� 0 gcleanfolder gCleanFolder� ������ 0 gthedesktop gTheDesktop��  � ��� l     ��������  ��  ��  � ��� l     ������  � ; 5 Move Desktop contents to a dated folder in Documents   � ��� j   M o v e   D e s k t o p   c o n t e n t s   t o   a   d a t e d   f o l d e r   i n   D o c u m e n t s� ��� i   T W��� I      �������� 0 cleandesktop cleanDesktop��  ��  � O     ���� k    ��� ��� l   ��������  ��  ��  � ��� O   ,��� r    +��� b    )��� b    ��� 7   ����
�� 
ctxt� m    ���� � m    ���� � m    �� ���  -� 7   (����
�� 
ctxt� m   " $���� � m   % '���� 
� o      ���� 0 formatteddate formattedDate� l   ������ c    ��� c    ��� l   	������ I   	������
�� .misccurdldt    ��� null��  ��  ��  ��  � m   	 
��
�� 
isot� m    ��
�� 
TEXT��  ��  � ��� l  - -����~��  �  �~  � ��� r   - 2��� b   - 0��� m   - .�� ���   C l e a n e d   D e s k t o p  � o   . /�}�} 0 formatteddate formattedDate� o      �|�| 0 gcleanfolder gCleanFolder� ��� l  3 3�{�z�y�{  �z  �y  � ��� Z   3 c���x�w� H   3 A   l  3 @�v�u I  3 @�t�s
�t .coredoexbool       obj  n   3 < 4   9 <�r
�r 
cfol o   : ;�q�q 0 gcleanfolder gCleanFolder n   3 9 4   6 9�p
�p 
cfol m   7 8		 �

  D o c u m e n t s 1   3 6�o
�o 
home�s  �v  �u  � I  D _�n�m
�n .corecrel****      � null�m   �l
�l 
kocl m   F G�k
�k 
cfol �j
�j 
insh n   J R 4   M R�i
�i 
cfol m   N Q �  D o c u m e n t s 1   J M�h
�h 
home �g�f
�g 
prdt K   U [ �e�d
�e 
pnam o   X Y�c�c 0 gcleanfolder gCleanFolder�d  �f  �x  �w  �  r   d q n   d o 4   l o�b
�b 
cfol o   m n�a�a 0 gcleanfolder gCleanFolder n   d l  4   g l�`!
�` 
cfol! m   h k"" �##  D o c u m e n t s  1   d g�_
�_ 
home o      �^�^ 0 targetfolder targetFolder $%$ l  r r�]�\�[�]  �\  �[  % &'& r   r �()( I  r �Z*+
�Z .earsffdralis        afdr* m   r u�Y
�Y afdmdesk+ �X,�W
�X 
from, m   x {�V
�V fldmfldu�W  ) o      �U�U 0 gthedesktop gTheDesktop' -.- l  � ��T�S�R�T  �S  �R  . /0/ I  � ��Q12
�Q .coremoveobj        obj 1 n   � �343 1   � ��P
�P 
ects4 o   � ��O�O 0 gthedesktop gTheDesktop2 �N5�M
�N 
insh5 o   � ��L�L 0 targetfolder targetFolder�M  0 6�K6 l  � ��J�I�H�J  �I  �H  �K  � m     77�                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  � 898 l     �G�F�E�G  �F  �E  9 :;: l     �D<=�D  < 9 3 Basic cleanup of Desktop, Downloads and Temp Trash   = �>> f   B a s i c   c l e a n u p   o f   D e s k t o p ,   D o w n l o a d s   a n d   T e m p   T r a s h; ?@? i   X [ABA I      �C�B�A�C 0 basiccleanup basicCleanup�B  �A  B k     ACC DED l     �@�?�>�@  �?  �>  E FGF I     �=�<�;�= 0 cleandesktop cleanDesktop�<  �;  G HIH l   �:�9�8�:  �9  �8  I JKJ O    >LML k   
 =NN OPO l  
 
�7�6�5�7  �6  �5  P QRQ l  
 
�4ST�4  S 8 2 put files back on Desktop (in the cleanup folder)   T �UU d   p u t   f i l e s   b a c k   o n   D e s k t o p   ( i n   t h e   c l e a n u p   f o l d e r )R VWV I  
 �3XY
�3 .coremoveobj        obj X n   
 Z[Z 4    �2\
�2 
cfol\ o    �1�1 0 gcleanfolder gCleanFolder[ n   
 ]^] 4    �0_
�0 
cfol_ m    `` �aa  D o c u m e n t s^ 1   
 �/
�/ 
homeY �.b�-
�. 
inshb o    �,�, 0 gthedesktop gTheDesktop�-  W cdc l   �+�*�)�+  �*  �)  d efe I   &�(g�'
�( .coredeloobj        obj g n    "hih 2     "�&
�& 
cobji n     jkj 4     �%l
�% 
cfoll m    mm �nn  D o w n l o a d sk 1    �$
�$ 
home�'  f opo I  ' 3�#q�"
�# .coredeloobj        obj q n   ' /rsr 2   - /�!
�! 
cobjs n   ' -tut 4   * -� v
�  
cfolv m   + ,ww �xx  T e m p   T r a s hu 1   ' *�
� 
sdsk�"  p yzy I  4 ;�{�
� .fndremptnull��� ��� obj { 1   4 7�
� 
trsh�  z |�| l  < <����  �  �  �  M m    }}�                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  K ~�~ L   ? A m   ? @�
� boovtrue�  @ ��� l     ����  �  �  � ��� l     ����  � $  Delete all user docs and data   � ��� <   D e l e t e   a l l   u s e r   d o c s   a n d   d a t a� ��� i   \ _��� I      ���� &0 deletealluserdocs deleteAllUserDocs�  �  � k    �� ��� l     ����  � 5 / Delete some crap this way because it is easier   � ��� ^   D e l e t e   s o m e   c r a p   t h i s   w a y   b e c a u s e   i t   i s   e a s i e r� ��� l     ����  �  �  � ��� I    �
��	
�
 .sysoexecTEXT���     TEXT� m     �� ��� X r m   - r f   ' / U s e r s / i f s s / P i c t u r e s / i P h o t o   L i b r a r y '�	  � ��� I   ���
� .sysoexecTEXT���     TEXT� m    �� ��� R r m   - r f   ' / U s e r s / i f s s / P i c t u r e s / P h o t o   B o o t h '�  � ��� l   ����  �  �  � ��� l   ����  � $  Now delete all the other crap   � ��� <   N o w   d e l e t e   a l l   t h e   o t h e r   c r a p� ��� l   ��� �  �  �   � ��� O    ���� k    ��� ��� l   ��������  ��  ��  � ��� Z    -������� l   ������ I   �����
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
�� .coredoexbool       obj � n   L R��� 4   O R���
�� 
cfol� m   P Q�� ���  D o c u m e n t s� 1   L O��
�� 
home��  ��  ��  � I  Y e�����
�� .coredeloobj        obj � n   Y a��� 2   _ a��
�� 
cobj� n   Y _��� 4   \ _���
�� 
cfol� m   ] ^�� ���  D o c u m e n t s� 1   Y \��
�� 
home��  ��  ��  � ��� l  j j��������  ��  ��  � ��� Z   j �������� l  j t������ I  j t�����
�� .coredoexbool       obj � n   j p��� 4   m p���
�� 
cfol� m   n o�� ���  D o w n l o a d s� 1   j m��
�� 
home��  ��  ��  � I  w ������
�� .coredeloobj        obj � n   w ���� 2    ���
�� 
cobj� n   w ��� 4   z ���
�� 
cfol� m   { ~�� ���  D o w n l o a d s� 1   w z��
�� 
home��  ��  ��  � � � l  � ���������  ��  ��     Z   � ����� l  � ����� I  � �����
�� .coredoexbool       obj  n   � � 4   � ���	
�� 
cfol	 m   � �

 �  M o v i e s 1   � ���
�� 
home��  ��  ��   I  � �����
�� .coredeloobj        obj  n   � � 2   � ���
�� 
cobj n   � � 4   � ���
�� 
cfol m   � � �  M o v i e s 1   � ���
�� 
home��  ��  ��    l  � ���������  ��  ��    Z   � ����� l  � ����� I  � �����
�� .coredoexbool       obj  n   � � 4   � ���
�� 
cfol m   � � �   
 M u s i c 1   � ���
�� 
home��  ��  ��   I  � ���!��
�� .coredeloobj        obj ! n   � �"#" 2   � ���
�� 
cobj# n   � �$%$ 4   � ���&
�� 
cfol& m   � �'' �(( 
 M u s i c% 1   � ���
�� 
home��  ��  ��   )*) l  � ���������  ��  ��  * +,+ Z   � �-.����- l  � �/����/ I  � ���0��
�� .coredoexbool       obj 0 n   � �121 4   � ���3
�� 
cfol3 m   � �44 �55  T e m p   T r a s h2 1   � ���
�� 
home��  ��  ��  . I  � ���6��
�� .coredeloobj        obj 6 n   � �787 2   � ���
�� 
cobj8 n   � �9:9 4   � ���;
�� 
cfol; m   � �<< �==  T e m p   T r a s h: 1   � ���
�� 
sdsk��  ��  ��  , >?> l  � ���������  ��  ��  ? @A@ I  � ���B��
�� .fndremptnull��� ��� obj B 1   � ���
�� 
trsh��  A C��C l  � ���������  ��  ��  ��  � m    DD�                                                                                  MACS  alis    b  Mac HD                     �\QHH+   !�
Finder.app                                                      F�)9W        ����  	                CoreServices    �[Ĩ      �(��     !� �Z �X  0Mac HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  � E��E L   �FF m   � ��
�� boovtrue��  � GHG l     ��������  ��  ��  H I��I l     ��~�}�  �~  �}  ��       �|JKLMNOPQRSTUVWXYZ[\]^_`abc�|  J �{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�{ 0 cleanup  �z 0 
bigcleanup 
bigCleanup�y 0 
addcleanup 
addCleanup�x  0 prepareopenday prepareOpenDay�w 0 
resetprefs 
resetPrefs�v 0 copymcx copyMCX�u 0 enablead enableAD�t 0 settimezone setTimeZone�s .0 setdefaultenergysaver setDefaultEnergySaver�r .0 setopendayenergysaver setOpenDayEnergySaver�q &0 setopendaypoweron setOpenDayPowerOn�p ,0 setopennightshutdown setOpenNightShutdown�o (0 disablescreensaver disableScreensaver�n $0 resetscreensaver resetScreensaver�m .0 addopendayloginscript addOpenDayLoginScript�l 0 
setqmaster 
setQMaster�k $0 setdefaultsafari setDefaultSafari�j 0 resetdesktop resetDesktop�i 0 setloginwarn setLoginWarn�h "0 removeloginwarn removeLoginWarn�g 0 resetuserpic resetUserPic�f 0 cleandesktop cleanDesktop�e 0 basiccleanup basicCleanup�d &0 deletealluserdocs deleteAllUserDocs
�c .aevtoappnull  �   � ****K �b #�a�`de�_�b 0 cleanup  �a  �`  d  e �^�]�\ B�[�^ 0 
resetprefs 
resetPrefs�] 0 basiccleanup basicCleanup�\ "0 removeloginwarn removeLoginWarn
�[ .sysodlogaskr        TEXT�_ *j+  O*j+ O*j+ O�j L �Z I�Y�Xfg�W�Z 0 
bigcleanup 
bigCleanup�Y  �X  f  g  O�V S�U�T�S \ _�R�Q�P�O�N�M�L m�K�J�I �
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
resetPrefs�J &0 deletealluserdocs deleteAllUserDocs�I "0 removeloginwarn removeLoginWarn�W 9��������lv�k��� O��,�  *j+ O*j+ O*j+ Oa j Y hM �H ��G�Fhi�E�H 0 
addcleanup 
addCleanup�G  �F  h �D�D 0 choiceresult choiceResulti  ��C ��B � � ��A�@�?�> � ��= ��<�;�:
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
*j+ Y fO*j+ O*j+ Y hN �9 ��8�7jk�6�9  0 prepareopenday prepareOpenDay�8  �7  j  k �5�4�3�2�1�0�/�.�-O�,�+?�*�)�(I�'�&�%i�$c�#gtx�5 0 enablead enableAD�4 0 settimezone setTimeZone�3 &0 setopendaypoweron setOpenDayPowerOn�2 .0 setopendayenergysaver setOpenDayEnergySaver�1 (0 disablescreensaver disableScreensaver�0 $0 setdefaultsafari setDefaultSafari�/ 0 resetdesktop resetDesktop�. 0 resetuserpic resetUserPic�- 0 cleandesktop cleanDesktop
�, 
home
�+ 
cfol
�* 
cobj
�) .coredeloobj        obj 
�( 
sdsk
�' 
trsh
�& .fndremptnull��� ��� obj �% "0 removeloginwarn removeLoginWarn
�$ 
logi
�# .coredoexbool       obj �6 �*j+  O*j+ O*j+ O*j+ O*j+ O*j+ O*j+ O*j+ O*j+ O� )*�,��/�-j O*�,�a /�-j O*a ,j OPUO*j+ Oa  !*a a /j  *a a /j Y hUOa  !*a a /j  *a a /j Y hUOPO �"��!� lm��" 0 
resetprefs 
resetPrefs�!  �   l  m ��������� 0 copymcx copyMCX� 0 enablead enableAD� 0 settimezone setTimeZone� .0 setdefaultenergysaver setDefaultEnergySaver� $0 resetscreensaver resetScreensaver� $0 setdefaultsafari setDefaultSafari� 0 resetdesktop resetDesktop� 0 resetuserpic resetUserPic� 0*j+  O*j+ O*j+ O*j+ O*j+ O*j+ O*j+ O*j+ P ����no�� 0 copymcx copyMCX�  �  n  o  � eQ ����pq�� 0 enablead enableAD�  �  p  q ��
� 
uien� � e*�,FUOeR ����rs�
� 0 settimezone setTimeZone�  �  r  s ��	�
�	 .sysoexecTEXT���     TEXT�
 �j O�j OeS ����tu�� .0 setdefaultenergysaver setDefaultEnergySaver�  �  t  u ���
� 
badm
� .sysoexecTEXT���     TEXT� ��el O��el O��el OeT ��� vw��� .0 setopendayenergysaver setOpenDayEnergySaver�  �   v  w *����
�� 
badm
�� .sysoexecTEXT���     TEXT�� ��el OeU ��9����xy���� &0 setopendaypoweron setOpenDayPowerOn��  ��  x  y ?����
�� 
badm
�� .sysoexecTEXT���     TEXT�� ��el OeV ��N����z{���� ,0 setopennightshutdown setOpenNightShutdown��  ��  z  { T����
�� 
badm
�� .sysoexecTEXT���     TEXT�� ��el OeW ��c����|}���� (0 disablescreensaver disableScreensaver��  ��  |  } h��
�� .sysoexecTEXT���     TEXT�� 	�j OeX ��v����~���� $0 resetscreensaver resetScreensaver��  ��  ~   {��
�� .sysoexecTEXT���     TEXT�� 	�j OeY ������������� .0 addopendayloginscript addOpenDayLoginScript��  ��  �  � �����������������������
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
�� .corecrel****      � null�� *� &*��/j f  *���*�-6����e�� Y hUZ ������������� 0 
setqmaster 
setQMaster��  ��  �  � ���
�� .sysoexecTEXT���     TEXT�� 	�j Oe[ ������������� $0 setdefaultsafari setDefaultSafari��  ��  �  � ���������������
�� 
prcs
�� 
pnam
�� .aevtquitnull��� ��� null
�� .sysoexecTEXT���     TEXT�� 9� *�-�,� � *j UY hUO�j O�j O�j O�j Oe\ ������������� 0 resetdesktop resetDesktop��  ��  � ���� 0 thefile theFile� 	����������
�� 
sdsk
�� 
cfol
�� 
file
�� 
alis
�� 
dpic�� !� *�,��/��/��/E�O�kv�&*�,FUOe] ��-���������� 0 setloginwarn setLoginWarn��  ��  �  � G:����C
�� 
badm
�� .sysoexecTEXT���     TEXT�� � ��el O��el OPUOe^ ��V���������� "0 removeloginwarn removeLoginWarn��  ��  �  � pc����l
�� 
badm
�� .sysoexecTEXT���     TEXT�� � ��el O��el OPUOe_ ������������� 0 resetuserpic resetUserPic��  ��  � ���� 0 thepic thePic� ��������������������
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
picp�� 4� -*�,�,�  "*�,��/��/��/��/E�O�kv�&*�,�,FY hUOe` ������������� 0 cleandesktop cleanDesktop��  ��  � ������ 0 formatteddate formattedDate�� 0 targetfolder targetFolder� 7����������������������	������������"��������������
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
�� .coremoveobj        obj �� �� �*j �&�& *[�\[Zm\Z�2�%*[�\[Z�\Z�2%E�UO�%E�O*�,��/��/j   *��a *�,�a /a a �l� Y hO*�,�a /��/E�Oa a a l E` O_ a ,a �l OPUa ��B���������� 0 basiccleanup basicCleanup��  ��  �  � ��}����`��������m�����w�~�}�� 0 cleandesktop cleanDesktop
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
� 
sdsk
�~ 
trsh
�} .fndremptnull��� ��� obj �� B*j+  O� 5*�,��/��/��l O*�,��/�-j O*�,��/�-j O*�,j OPUOeb �|��{�z���y�| &0 deletealluserdocs deleteAllUserDocs�{  �z  �  � ��x�D�w�v��u��t�s������
'4�r<�q�p
�x .sysoexecTEXT���     TEXT
�w 
home
�v 
cfol
�u .coredoexbool       obj 
�t 
cobj
�s .coredeloobj        obj 
�r 
sdsk
�q 
trsh
�p .fndremptnull��� ��� obj �y�j O�j O� �*�,��/j  *�,��/�-j 
Y hO*�,��/j  *�,��/�-j 
Y hO*�,��/j  *�,��/�-j 
Y hO*�,��/j  *�,�a /�-j 
Y hO*�,�a /j  *�,�a /�-j 
Y hO*�,�a /j  *�,�a /�-j 
Y hO*�,�a /j  *a ,�a /�-j 
Y hO*a ,j OPUOec �o��n�m���l
�o .aevtoappnull  �   � ****� k     ��  �k�k  �n  �m  �  �  �j
�j .sysodlogaskr        TEXT�l �j ascr  ��ޭ