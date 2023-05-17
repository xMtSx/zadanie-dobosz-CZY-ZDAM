using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

namespace WpfApp1
{
    public partial class Window3 : Window
    {
        private string connectionString;
        public Window3()
        {
            InitializeComponent();
            connectionString = "Server=localhost;Database = zadanieskryzniarzmateusz;Uid = root; Pwd = ;";
            LoadKategorie();
        }
        private void btnDodajKategorie_Click(object sender, RoutedEventArgs e)
        {
            string nazwa = tbNazwa.Text;
            string opis = tbOpis.Text;
            if (string.IsNullOrEmpty(nazwa) || string.IsNullOrEmpty(opis))
            {
                MessageBox.Show("Nazwa i opis nie mogą być puste.");
                return;
            }
            if (!char.IsUpper(nazwa, 0))
            {
                MessageBox.Show("Nazwa użytkownika musi zaczynać się od dużej litery.");
                return;
            }
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand($"INSERT INTO kategoria VALUES (NULL, '{tbNazwa.Text}', '{tbOpis.Text}')", connection);
                command.ExecuteNonQuery();
            }
            LoadKategorie();
        }

        private void LoadKategorie()
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM kategoria", connection);
                command.ExecuteNonQuery();
                MySqlDataReader Reader = command.ExecuteReader();
                IList<Kategoria> kategorie = new List<Kategoria>();
                while (Reader.Read())
                {
                    kategorie.Add(new Kategoria() { ID = Reader.GetInt32("ID"), Nazwa = Reader.GetString("Nazwa"), Opis = Reader.GetString("Opis") });
                }
                dgKategoria.ItemsSource = kategorie;
            }
        }

        private void btnUsunKategoria_Click(object sender, RoutedEventArgs e)
        {
            Kategoria row = (Kategoria)((Button)e.Source).DataContext;
            int id = (int)row.ID;
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand("DELETE FROM Kategoria WHERE id = @id", connection);
                command.Parameters.AddWithValue("@id", id);
                command.ExecuteNonQuery();
            }
            LoadKategorie();
        }
    }
}