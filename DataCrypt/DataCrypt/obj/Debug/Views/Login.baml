   M S B A M L   `   `   `  ����D  @DataCrypt, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:DataCrypt.ViewsDataCrypt.Views  5   	       DataCrypt.Views.Login   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:DataCrypt.Views     5   	     � Title$  Login��5      $	��700��6   $
��1200��6&    � 
ResizeMode$ CanMinimize=�63   .��5	      � -   5         �Name$
 grid��5	      $��Right=�6   $
��1194��65   $	��671��6B   $��Bottom=�6O   ��5
   
   �� 5       �� ImageSource$&  /Resources/Images/background.jpg��6    j� Stretch$ UniformToFill=�6H   .+�5   
   �� -   5         ��Name$
 logo��5      $��0,0,1075,501q�6   $ ��/Resources/Images/logo.png��64   $	��100��6X   $��Right=�6d   $	��100��6�   $��Bottom=�6�   �� 5   
   $��	DataCrypt��6   $
��Left=�6$   $��Bottom=�6?   $��50(�6Z   ���#1C68C1$
��Bold"�6}   $��
97,0,0,528q�6�   �� 5   
   $��Login��6   $
��Left=�6    $��Bottom=�6;   $��35(�6V   ���#FFFFFF$
��Bold"�6y   $��
78,0,0,408q�6�   �� 5   
   -   5         ��Name$ fullName��5   @    �� 
CaretBrush
 �����$��5q�6%    �� 	MaxLength$ 30��61      MyWaterMarkStyle#��[  6R   $��160,0,644,317q�6|   
	 � Tag$	 	Full Name��6�   
 �� TextWrapping$

 Wrap=�6�   $��Bottom=�6�   $��48��6�   $��Center=�6�   $	��390��6�   $��Center=�6  
�������$��15(�6<  �� 5   
   -   5        $ password��5   @   
 �����$��5q�6%   $ 30��61   #��[  6R   $��160,0,644,244q�6|   $	 Password��6�   $

 Wrap=�6�   $��Bottom=�6�   $��48��6�   $��Center=�6�   $	��390��6�   $��Center=�6  
�������$��15(�6;  �� 5   
   -   5          	regButton#��[ 5      $
��Next��64   $
��Left=�6C   $��40��6^   $	��300��6j   $��0,0,0,0q�6v   
�������$��25(�6�   $��200,0,0,178q�6�   $��Bottom=�6�   6�   �� 5   
    �� Orientation$ 
Horizontal=�6   $��226,0,726,118q�6.   $��Bottom=�6E   $��Center=�6`   .+�5      �� $��Don't have an account?��6   $��Center=�65   $��Center=�6R   
�������$��17(�6�   $��0,0,5,0q�6�   �� 5      -   5         	 Links#��[ 5       � Cursor$
 Hand��64   $��Center=�6C   $��Center=�6`   ���	#00DDDDDD$��0,0,0,0q�6�   $��17(�6�   .��5      �� $��Center=�6   $��Center=�67   ��5      }�  }� 	PenOffset$ 5Q�6)    }� PenOffsetUnit$ Pixel=�67   6O   	Sign Up5      5      5      �� 5    
   -   5        $ homePicture��5       $��
664,0,0,79q�6%   $!��/Resources/Images/login.png��69   $	��466��6^   $
��Left=�6j   $	��438��6�   $��Bottom=�6�    J� RenderTransformOrigin$ 0.632,0.487&�6�   5!      5"      