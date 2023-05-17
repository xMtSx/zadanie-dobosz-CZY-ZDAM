using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Windows.Controls;
using System.Windows;
using WpfApp1;

namespace WpfApp1
{
    public partial class UzytkownikWindow : Window
    {
        private readonly string connectionString;
        private int pobraniUzytkownicy = 0;

        public UzytkownikWindow()
        {
            InitializeComponent();
            connectionString = "Server=localhost;Database=zadanieskryzniarzmateusz;Uid=root;Pwd=";
            LoadUzytkownicy();
        }

        private void btnDodajUzytkownika_Click(object sender, RoutedEventArgs e)
        {
            string imie = tbImie.Text;
            string nazwisko = tbNazwisko.Text;
            string email = tbEmail.Text;
            string numerTelefonu = tbNumerTelefonu.Text;

            if (string.IsNullOrEmpty(imie) || string.IsNullOrEmpty(nazwisko) || string.IsNullOrEmpty(email))
            {
                MessageBox.Show("Pola Imię, Nazwisko i Email nie mogą być puste.");
                return;
            }

            if (!char.IsUpper(imie, 0))
            {
                MessageBox.Show("Imię musi zaczynać się od dużej litery.");
                return;
            }

            if (!char.IsUpper(nazwisko, 0))
            {
                MessageBox.Show("Nazwisko musi zaczynać się od dużej litery.");
                return;
            }

            if (pobraniUzytkownicy >= 20)
            {
                MessageBox.Show("Osiągnięto maksymalną liczbę użytkowników.");
                return;
            }

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand($"INSERT INTO uzytkownik (Imie, Naziwsko, Email, Numer_Telefonu) VALUES ('{imie}', '{nazwisko}', '{email}', '{numerTelefonu}')", connection);
                command.ExecuteNonQuery();
            }

            LoadUzytkownicy();
        }

        private void LoadUzytkownicy()
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM uzytkownik", connection);
                MySqlDataReader Reader = command.ExecuteReader();
                IList<uzytkownik> f = new List<uzytkownik>();
                while (Reader.Read())
                {
                    f.Add(new uzytkownik()
                    {
                        ID = Reader.GetInt32("id"),
                        Imie = Reader.GetString("imie"),
                        Nazwisko = Reader.GetString("naziwsko"),
                        Email = Reader.GetString("email"),
                        NumerTelefonu = Reader.GetString("numer_Telefonu")
                    });
                }
                dgUzytkownicy.ItemsSource = f;
                pobraniUzytkownicy = f.Count;
            }
        }

        private void btnUsunUzytkownika_Click(object sender, RoutedEventArgs e)
        {
            uzytkownik row = (uzytkownik)((Button)e.Source).DataContext;
            int id = row.ID;
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand($"DELETE FROM uzytkownik WHERE ID = {id}", connection);
                command.ExecuteNonQuery();
            }
            LoadUzytkownicy();
        }
    }
}