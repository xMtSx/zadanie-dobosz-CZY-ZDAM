using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using MySql.Data;
using MySql.Data.MySqlClient;
using WpfApp1;

namespace WpfApp1
{
    public partial class MainWindow : Window
    {
        private string connectionString;
        public MainWindow()
        {
            InitializeComponent();
            connectionString = "Server=localhost;Database=zadanieskryzniarzmateusz;Uid=root;Pwd=;";
            LoadZgloszenia();
            LoadPrzydzielenie();
            LoadKategoria();
        }

        private void LoadPrzydzielenie()
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM uzytkownik", connection);
                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                cbPrzydzielenie.ItemsSource = dt.DefaultView;
                cbPrzydzielenie.DisplayMemberPath = "Imie";
                cbPrzydzielenie.SelectedValuePath = "ID";
            }
        }

        private void LoadKategoria()
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM kategoria", connection);
                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                cbKategoria.ItemsSource = dt.DefaultView;
                cbKategoria.DisplayMemberPath = "nazwa";
                cbKategoria.SelectedValuePath = "id";
            }
        }

        private void btnDodajZgloszenie_Click(object sender, RoutedEventArgs e)
        {
            string nazwaUzytkownika = tbNazwaUzytkownika.Text;
            string opisAwarii = tbOpisAwarii.Text;
            if (string.IsNullOrEmpty(nazwaUzytkownika) || string.IsNullOrEmpty(opisAwarii))
            {
                MessageBox.Show("Nazwa użytkownika i opis awarii nie mogą być puste.");
                return;
            }
            if (!char.IsUpper(nazwaUzytkownika, 0))
            {
                MessageBox.Show("Nazwa użytkownika musi zaczynać się od dużej litery.");
                return;
            }

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand($"INSERT INTO zgloszenia VALUES (NULL, '{tbNazwaUzytkownika.Text}', '{tbOpisAwarii.Text}', '{DateTime.Now}', '{cbPrzydzielenie.SelectedValue}', 0, '{cbKategoria.SelectedValue}')", connection);
                command.ExecuteNonQuery();
            }

            LoadZgloszenia();
        }

        private void btnUsunZgloszenie_Click(object sender, RoutedEventArgs e)
        {
            zgloszenie row = (zgloszenie)((Button)e.Source).DataContext;
            int id = (int)row.Id;
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand("DELETE FROM zgloszenia WHERE id = @id", connection);

                command.Parameters.AddWithValue("@id", id);
                command.ExecuteNonQuery();
            }
            LoadZgloszenia();
        }
        private void LoadZgloszenia()
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand("Select * FROM zgloszenia JOIN kategoria ON kategoria.id=zgloszenia.Kategoria JOIN uzytkownik ON uzytkownik.ID=zgloszenia.Przydzielenie", connection);
                command.ExecuteNonQuery();
                MySqlDataReader Reader = command.ExecuteReader();
                IList<zgloszenie> s = new List<zgloszenie>();
                while (Reader.Read())
                {
                    s.Add(new zgloszenie() { Id = Reader.GetInt32("ID"), NazwaUzytkownika = Reader.GetString("Nazwa_uzytkownik"), Opis = Reader.GetString("Opis"), DataDodania = Reader.GetString("Data_dodania"), PrzydzieloneDo = Reader.GetString("Imie") + " " + Reader.GetString("Naziwsko"), Wykonane = Reader.GetInt32("Wykonane"), Kategoria = Reader.GetString("Nazwa") });

                }
                dgZgloszenia.ItemsSource = s;
            }
        }

        private void btnOtworzWindow2_Click(object sender, RoutedEventArgs e)
        {
            UzytkownikWindow window2 = new UzytkownikWindow();
            window2.ShowDialog();
        }

        private void btnOtworzWindow3_Click(object sender, RoutedEventArgs e)
        {
            Window3 window3 = new Window3();
            window3.ShowDialog();
        }
    }
}