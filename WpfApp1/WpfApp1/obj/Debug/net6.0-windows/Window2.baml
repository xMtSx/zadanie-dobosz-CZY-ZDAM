   M S B A M L   `   `   `  ����  WpfApp1    WpfApp1.UzytkownikWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$  Użytkownicy��5      $	��704��6   $	��600��6&   .��5      � $	��704��6   $	��Top=�6    � RowDefinitions 5   
   �� 5      $��82 �6   �� 5      $	��60* �6   �� 5	      $	��65* �6   �� 5
      $	��70* �6   �� 5      $	��82* �6   �� 5      $
��Auto �6   $	��345��6*    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      .+�5   
   �� $��Imię:��6   $��0��6    $��20,0,0,0q�60   $��Center=�6B   $��26��6]   �� 5   
   -   5        $��tbImie��5      $��1��6    $��5,0,86,0q�60   $��Center=�6B   $��26��6]   �� 5   
   $��	Nazwisko:��6   $��1��6$   $��0��61   $��	20,10,0,0q�6A   $	��Top=�6T   $��26��6l   �� 5   
   -   5        $��
tbNazwisko��5      $��1��6$   $��1��61   $��	12,4,79,0q�6A   $	��Top=�6T   $��26��6l   �� 5   
   $��Email:��6   $��2��6!   $��0��6.   $��20,0,0,0q�6>   $��Center=�6P   $��26��6k   �� 5   
   -   5        $��tbEmail��5      $��2��6!   $��1��6.   $��	12,0,80,0q�6>   $��Center=�6Q   $��26��6l   �� 5   
   $��Numer telefonu:��6   $��3��6*   $��0��67   $��	10,9,10,0q�6G   $	��Top=�6Z   $��26��6r   �� 5   
   -   5        $��tbNumerTelefonu��5      $��
11,10,80,0q�6)   $	��Top=�6=   $��26��6U   $��3��6b   $��1��6o   �� 5   
   -   5        $��btnDodajUzytkownika��5      $��4��6,   $��Dodaj użytkownika��69   $��10,12,80,22q�6U   $��1��5    /   
����������	#FFF7F7F7
���   �6i   &   System.Windows.Controls.DataGrid  5"   
   -   5        $��dgUzytkownicy��5"      $��5��6(      AutoGenerateColumns$ False��65   $��2��6R      CanUserAddRows$ False��6f   $	��325��6}   $��Center=�5#      ���	#FFF0F0F0   Columns 5$      0  *System.Windows.Controls.DataGridTextColumn  5%      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *ID+  5&      $ Imię��6%    63   �� *Imie+  5'      $ Nazwisko��6%    67   �� *
Nazwisko+  5(      $ Email��6%    64   �� *Email+  5)      $ Numer telefonu��6%    6=   �� *NumerTelefonu+4  .System.Windows.Controls.DataGridTemplateColumn  5*      $ Usuń��6)      CellTemplate 5+      �� 5,      .R�5-      �� -   5        $��Usuń��5-   %   64   5.      50      52      53      54      