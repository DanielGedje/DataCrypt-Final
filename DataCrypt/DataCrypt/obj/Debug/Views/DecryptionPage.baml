   M S B A M L   `   `   `  ����D  @DataCrypt, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:DataCrypt.ViewsDataCrypt.Views  5   	   $    DataCrypt.Views.DecryptionPage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:DataCrypt.Views     5   	     � Title$  DecryptionPage��5   	   $	��700��6    $
��1200��6-    � 
ResizeMode$ CanMinimize=�6:   .��5	      � -   5         �Name$
 grid��5	      $��Stretch=�6   $
��Auto��67   ��5
   
   �� 5       �� ImageSource$&  /Resources/Images/background.jpg��6    j� Stretch$ UniformToFill=�6H   .+�5   
   �� -   5         ��Name$
 logo��5      $��0,0,1084,529q�6   $ ��/Resources/Images/logo.png��64   $	��100��6X   $��Right=�6d   $	��100��6�   $��Bottom=�6�   �� 5   
   $��	DataCrypt��6   $
��Left=�6$   $��Bottom=�6?   $��50(�6Z   ���#1C68C1$
��Bold"�6}   $��
73,0,0,552q�6�   �� 5   
   $%��Here Is Your Encrypted Message:��6   $
��Left=�6:   $��Bottom=�6U   $��22(�6p   ���#FFFFFF$
��Bold"�6�   $��262,0,0,187q�6�   $	��410��6�   �� 5   
   -   5         ��Name$ 	encryText��5   3    �� 
CaretBrush �#CCCCCC$��5q�6'   $��
262,0,0,27q�6F    �� TextWrapping$
 Wrap=�6Z   $��Bottom=�6n   $	��140��6�   $
��Left=�6�   $	��410��6�   $	��Top=�6�   
���   �$��15(�6�   �� 5   
   $!��Choose The Encrypted Image:��6   $
��Left=�66   $��Bottom=�6Q   $��22(�6l   ���#FFFFFF$
��Bold"�6�   $��262,0,0,493q�6�   $	��410��6�   �� 5   
   -   5        $ encryptedImage��5      $
��Left=�6(   $	��198��6C   $	��410��6P   $��262,0,0,290q�6\   $��Bottom=�6q   $��Uniform=�6�   �� 5   
   -   5        $��Choose File��5      $��44��6'   $��0,0,0,0q�63   ���#EBEBEB���#AFADAD$��16(�6w   $��0,0,674,361q�6�   $��Bottom=�6�   $��Right=�6�   $	��100��6�   6�   �� 5   
   -   5           	regButton#��[  5      $��Decrypt!��64   $
��Left=�6G   $��30��6b   $	��100��6n   $��0,0,0,0q�6z   
�������$��18(�6�   $
��Bold"�6�   $��420,0,0,242q�6�   $��Bottom=�6�   	 J� RenderTransformOrigin$	 
1.19,-0.24&�6�   6  �� 5   
   -   5        #��[  5      $
��Home��64   $
��Left=�6C   $��30��6^   $	��120��6j   $��0,0,0,0q�6v   
�������$��17(�6�   $
��Bold"�6�   $��384,0,0,562q�6�   $��Bottom=�6�   6�   �� 5   
   -   5        #��[  5      $��
Encryption��65   $
��Left=�6J   $��30��6e   $	��120��6q   $��0,0,0,0q�6}   
�������$��17(�6�   $
��Bold"�6�   $��538,0,0,562q�6�   $��Bottom=�6�   $	 0.833,4.517&�6�   6  �� 5   
   -	   5        
 ��Name$
 logOut��5      $��
0,0,71,562q�6!   $��54��65   $��Right=�6@   $��54��6\   $��Bottom=�6h   
������ 
������ .��5      �� $"��/Resources/Images/logOut.png��6   6<   5      �� 5   
   $��LogOut��6   $
��Left=�6!   $��Bottom=�6<   $��32(�6W   
�������$
��Bold"�6x   $��941,0,0,562q�6�   $��54��6�   $	��123��6�   5!      5"      