   M S B A M L   `   `   `  ����D  @DataCrypt, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:DataCrypt.ViewsDataCrypt.Views  5   	       DataCrypt.Views.SignUp   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:DataCrypt.Views     5   	     � Title$  SignUp��5   	   $	��700��6   $
��1200��6%    � 
ResizeMode$ CanMinimize=�62   .��5	      � -   5         �Name$
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
   $��Sign Up��6   $
��Left=�6"   $��Bottom=�6=   $��35(�6X   ���#FFFFFF$
��Bold"�6{   $��
78,0,0,408q�6�   �� 5   
   -   5         ��Name$ fullName��5   @    �� 
CaretBrush
 �����$��5q�6%    �� 	MaxLength$ 30��61      MyWaterMarkStyle#��[  6R   $��160,0,644,317q�6|   
	 � Tag$	 	Full Name��6�   
 �� TextWrapping$

 Wrap=�6�   $��Bottom=�6�   $��48��6�   $��Center=�6�   $	��390��6�   $��Center=�6  
�������$��15(�6<  �� 5   
   -   5        $ password��5   @   
 �����$��5q�6%   $ 30��61   #��[  6R   $��160,0,644,249q�6|   $	 Password��6�   $

 Wrap=�6�   $��Bottom=�6�   $��48��6�   $��Center=�6�   $	��390��6�   $��Center=�6  
�������$��15(�6;  �� 5   
   -   5        $ confirmPassword��5   @   
 �����$��5q�6%   $ 30��61   #��[  6Y   $��160,0,644,181q�6�   $	 Confirm Password��6�   $

 Wrap=�6�   $��Bottom=�6�   $��48��6�   $��Center=�6�   $	��390��6	  $��Center=�6  
�������$��15(�6J  �� 5   
   -   5          	regButton#��[ 5      $
��Next��64   $
��Left=�6C   $��40��6^   $	��300��6j   $��0,0,0,0q�6v   
�������$��25(�6�   $��196,0,0,114q�6�   $��Bottom=�6�   6�   �� 5   
    �� Orientation$ 
Horizontal=�6   $��222,0,726,63q�6.   $��Bottom=�6D   $��Center=�6_   .+�5      �� $��Already have an account?��6   $��Center=�67   $��Center=�6T   
�������$��17(�6�   $��0,0,5,0q�6�   �� 5      -   5         	 Links#��[ 5       � Cursor$
 Hand��64   $��Center=�6a   $��Center=�6~   ���	#00DDDDDD$��0,0,0,0q�6�   $��17(�6�   ��6B   �� *
GoToSignIn+.��5      �� $��Center=�6   $��Center=�67   ��5      }�  }� 	PenOffset$ 5Q�6)    }� PenOffsetUnit$ Pixel=�67   6O   	Sign in5      5      5      �� 5"   
   -   5        $ homePicture��5"      $��
664,0,0,79q�6%   $"��/Resources/Images/signUp.png��69   $	��466��6_   $
��Left=�6k   $	��438��6�   $��Bottom=�6�    J� RenderTransformOrigin$ 0.632,0.487&�6�   5$      5%      