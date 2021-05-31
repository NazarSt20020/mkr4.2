using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KR4_2
{
    struct osoba //Розробляємо структуру особи
    {
        public string Name { get; set; }
        public string SecondName { get; set; }
        public string SurName { get; set; }
        public int Age { get; set; }
    }

    struct teacher //Структура професійної особи
    {
        public osoba osoba { get; set; }
        public string Position { get; set; }
        public int WorkExperienceYears { get; set; }
    }

    struct Pedrada //Структура лікарні
    {
        public List<teacher> teachers { get; set; } //Створюємо масив 

        public void GetTeacherByWorkExperiance(int expYears)
        {

            foreach (var teacher in teachers)
            {
                if (teacher.WorkExperienceYears >= expYears) //Виводимо на єкран дані
                {
                    Console.WriteLine($"Name: {teacher.osoba.Name}\nSecond Name: {teacher.osoba.SecondName} " +
                                      $"\nSurName: {teacher.osoba.SurName}\nAge: {teacher.osoba.Age}\nPosition: {teacher.Position}" +
                                      $"\nWork experience: {teacher.WorkExperienceYears}\n");
                }
            }
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Pedrada pedrada = new Pedrada() //ініціалізуємо структури
            {
                teachers = new List<teacher>()
                {
                    new teacher()
                    {
                        Position="physics-mathem",
                        WorkExperienceYears=7,
                        osoba = new  osoba()
                        {
                            Name = "Viktor",
                            SurName ="Dym",
                            SecondName = "Sergiovich",
                            Age = 42
                        }
                    },

                    new teacher()
                    {
                        Position="Programist",
                        WorkExperienceYears=20,
                        osoba = new  osoba()
                        {
                            Name = "Vera",
                            SurName ="Kun",
                            SecondName = "Bogdanivna",
                            Age = 50
                        }
                    },

                    new teacher()
                    {
                        Position="physics",
                        WorkExperienceYears=100,
                        osoba = new  osoba()
                        {
                            Name = "Yana",
                            SurName ="Lav",
                            SecondName = "Sergeevna",
                            Age = 22
                        }
                    },

                    new teacher()
                    {
                        Position="english language",
                        WorkExperienceYears=1,
                        osoba = new osoba()
                        {
                            Name = "Maria",
                            SurName = "Kora",
                            SecondName = "Ivanivna",
                            Age = 31
                        }
                    },

                    new teacher()
                    {
                        Position="History",
                        WorkExperienceYears=3,
                        osoba = new osoba()
                        {
                            Name = "Sara",
                            SurName = "Runov",
                            SecondName = "Petrivna",
                            Age = 29
                        }

                    },

                }
            };

            pedrada.GetTeacherByWorkExperiance(7); //Задаємо число стажу
            Console.ReadLine();
        }
    }

}
