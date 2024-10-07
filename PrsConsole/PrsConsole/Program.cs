using PrsConsole.Models;
using PrsConsole.Db;
using System.IO;

namespace PrsConsole
{
    internal class Program
    {
        static UserDb userDb = new UserDb();

        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to the PRS Manager");

            string command = "";
            while (command != "exit")
            {
                DisplayMenu();
                command = PromptInput("\nCommand: ");

                switch (command)
                {
                    case "menu":
                        DisplayMenu();
                        break;
                    case "list users":
                        ListUsers();
                        break;
                    case "get user":
                        GetUser();
                        break;
                    case "add user":
                        AddUser();
                        break;
                    case "del user":
                        DeleteUser();
                        break;
                    case "exit":
                        break;
                    default:
                        Console.WriteLine("Invalid command. Try again");
                        break;
                }
            }
            Console.WriteLine("Bye!");
        }

        private static void DisplayMenu()
        {
            Console.WriteLine("\nMENU: ");
            Console.WriteLine("================");
            Console.WriteLine("menu - display menu ");
            Console.WriteLine("list users - list all users");
            Console.WriteLine("get user - get user by id");
            Console.WriteLine("add user - add an user");            
            Console.WriteLine("del user - delete an user");
            Console.WriteLine("exit - exit application");
        }

        private static void ListUsers()
        {
            Console.WriteLine("\nUsers List:");
            Console.WriteLine("==============================");
            // do bizz
            List<User> users = userDb.GetUsers();
            foreach (User user in users)
            {
                Console.WriteLine(user);
            }
        }



        private static void GetUser()
        {
            Console.WriteLine("\nGet User By ID");
            Console.WriteLine("=======================");
            // do bizz
            int id = Int32.Parse(PromptInput("User ID: "));
            User u = userDb.FindUsers(id);
            if (u != null)
            {
                Console.WriteLine($"User Found: {u}");
            }
            else
            {
                Console.WriteLine($"No user found for id: {id}");
            }
        }

        private static void AddUser()
        {
            Console.WriteLine("\nAdd User: ");
            Console.WriteLine("==========================");
            // do bizz
            string username = PromptInput("Usernaem: ");
            string password = PromptInput("Password: ");
            string firstName = PromptInput("First Name: ");
            string lastName = PromptInput("Last Name: ");
            string phoneNumer = PromptInput("PhoneNumer: ");
            string email = PromptInput("Email: ");
            User u = new User(username, password, firstName, lastName, phoneNumer, email);
            userDb.AddUser(u);
            Console.WriteLine($"User {username} added: ");
        }

        private static void DeleteUser()
        {
            Console.WriteLine("\nDelete User");
            Console.WriteLine("==============================");
            // do bizz
            int id = Int32.Parse(PromptInput("User ID: "));
            User u = userDb.FindUsers(id);
            if (u != null)
            {
                userDb.RemoveUser(u);
                Console.WriteLine($"User '{u.Username}' has been Deleted");
            }
            else
            {
                Console.WriteLine($"No user found for id: {id}");
            }
        }

        static string PromptInput(string prompt)
        {
            Console.Write(prompt);
            return Console.ReadLine();
        }
    }
}
