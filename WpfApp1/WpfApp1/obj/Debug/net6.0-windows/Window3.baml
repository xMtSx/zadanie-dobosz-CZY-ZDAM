   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.Window3   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  Window3��5   	   $	��550��6   $	��800��6&   .��5	      �  � RowDefinitions 5
   
   �� 5      $	��70* �6   �� 5      $	��90* �6   �� 5      $	��43* �6   �� 5      $
��331* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��Nazwa:��6   $��0��6!   $��	10,0,10,0q�61   $��Center=�6D   $��26��6_   �� 5   
   -   5        $��tbNazwa��5      $��1��6!   $��	10,0,81,0q�61   $��Center=�6D   $��26��6_   �� 5   
   $��Opis: ��6   $��1��6!   $��0��6.   $��
10,14,10,0q�6>   $	��Top=�6R   $��26��6j   �� 5   
   -   5        $��tbOpis��5      $��1��6    $��1��6-   $��
10,19,81,0q�6=   $	��Top=�6Q   $��71��6i   �� 5   
   -   5        $��btnDodajKategorie��5      $��2��6*   $��Dodaj  Kategorie��67   $��
11,10,79,9q�6R   $��1��5   -   
�������
����������	#F40000006c   &   System.Windows.Controls.DataGrid  5   
   -   5        $��dgKategoria��5      $��3��6&      AutoGenerateColumns$ False��63   $��2��6P      CanUserAddRows$ False��6d   $	��321��6{   $	��Top=�5      $��	-2,10,2,0q�6+      Columns 5       0  *System.Windows.Controls.DataGridTextColumn  5!      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *ID+  5"      $ Imię��6%    63   �� *Nazwa+  5#      $
 Opis��6%    63   �� *Opis+4  .System.Windows.Controls.DataGridTemplateColumn  5$      $ Usuń��6)      CellTemplate 5%      �� 5&      .R�5'      �� -   5        $��Usuń��5'   %   64   5(      5*      5,      5-      5.      