   M S B A M L   `   `   `  ����  WpfApp1    WpfApp1.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$  Zgłoszenia awarii��5      $	��614��6   $	��700��6,   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $
��Auto �6   $��74��6*   �� 5	      $��50 �6   �� 5
      $��52 �6   �� 5      $��50.96 �6   �� 5      $��321.08 �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   $��139.333��6,   �� 5      $��471.72 �6   �� 5      .+�5   
   �� $��Nazwa użytkownika:��6   $��1��6-   $��151,9,202,0q�6=   $	��Top=�6R   $��26��6j   $	��NaN��6v   �� 5   
   -   5        $��tbNazwaUzytkownika��5      $��123,35,36,0q�6,   $	��Top=�6A   $��26��6Y   $	��NaN��6e   $��2��6q   $��2��6�   �� 5   
   $��Opis awarii:��6   $��1��6'   $��168,11,185,0q�67   $	��Top=�6M   $��26��6e   $	��NaN��6q   $��1��6~   �� 5   
   -   5        $��tbOpisAwarii��5      $��1��6&   $��124,42,36,0q�63   $	��Top=�6H   $��54��6`   $	��NaN��6l   $��2��6x   $��2��6�   �� 5   
   -   5        $��btnDodajZgloszenie��5      $��3��6+   $��Dodaj zgłoszenie��68   $��104,49,0,12q�6S   
�������
�������$	��NaN��5   T   $	��214��6a   $
��Left=�6m   $��1��6�   $��2��6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��dgZgloszenia��5      $��5��6'   $��0,3,0,0q�64      AutoGenerateColumns$ False��6E      CanUserAddRows$ False��5      $��3��6$   $	��NaN��68   $	��NaN��6E      Columns 5       0  *System.Windows.Controls.DataGridTextColumn  5!      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+  5"      $ Nazwa użytkownika��6%    6@   �� *NazwaUzytkownika+  5#      $ Opis awarii��6%    6:   �� *Opis+  5$      $ Data dodania��6%    6;   �� *DataDodania+  5%      $ Przydzielone do��6%    6>   �� *PrzydzieloneDo+4  .System.Windows.Controls.DataGridCheckBoxColumn  5&      $ Wykonane��6)    6;   �� *
Wykonane+  5'      $ 	Kategoria��6%    68   �� *	Kategoria+4  .System.Windows.Controls.DataGridTemplateColumn  5(      $ Usuń��6)      CellTemplate 5)      �� 5*      .R�5+      �� -   5        $��Usuń��5+   %   64   5,      5.      50      �� 52   
   $��Przydzielenie��6   $��2��6(   $��124,29,367,0q�65   $	��Top=�6K   $��26��6c   $	��NaN��6o   $��2��6{   $��2��6�   �� 53   
   -   5        $��cbPrzydzielenie��53      $��3��6*   $��124,10,347,0q�67   $	��Top=�6M   $��26��6e   $	��NaN��6q   $��2��6}   �� 55   
   $��	Kategoria��6   $��2��6$   $��1��61   $��
263,30,0,0q�6A   $	��Top=�6U   $��26��6m   $
��Left=�6y   $��71��6�   $��2��6�   �� 56   
   -   5        $��cbKategoria��56      $��3��6&   $��1��63   $��263,10,36,0q�6C   $	��Top=�6X   $��26��6p   $	��NaN��6|   6�   �� 58   
   -   5        $��btnOtworzWindow2��58      $��4��6)   $��Dodaj użytkownika��66   $��33,10,388,12q�6R   
�������
�������$	��NaN��59   O   $��2��6\   �� 5:   
   -	   5        	 ��Name$	 btnOtworzWindow3��5:      $��4��6+   $��Dodaj Kategorie��68   $��333,10,0,13q�6R   $��1��5;   ,   
�������
�������
���   �$
��Left=�6u   $	��184��6�   $	��NaN��6�   $��2��6�   5=      5>      