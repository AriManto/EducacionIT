using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Listas
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
             //Carga los elementos con el método Add del tipo List
            List<int> intList = new List<int>();
            intList.Add(10);
            intList.Add(20);
            intList.Add(30);
            intList.Add(40);
            intList.Add(50);

            List<string> strList = new List<string>();
            strList.Add("one");
            strList.Add("two");
            strList.Add("three");
            strList.Add("four");
            strList.Add("four");
            strList.Add(null);
            strList.Add(null);

            Console.WriteLine(intList.Count);
            
            Console.ReadKey();
            */


            // Carga los elementos cuando instancia la lista

            List<int> intList = new List<int>() { 10, 20, 30, 40, 50, 60, 70 };

            Console.WriteLine(intList.Count);

            List<Student> studentList = new List<Student>() {
                new Student(){ StudentID=1, StudentName="Bill"},
                new Student(){ StudentID=2, StudentName="Steve"},
                new Student(){ StudentID=3, StudentName="Ram"},
                new Student(){ StudentID=4, StudentName="Moin"}
            };

            Console.WriteLine(studentList.Count);

            foreach (var student in studentList)
            {
                Console.WriteLine("#" + student.StudentID + " " + student.StudentName);
            }


            Console.ReadKey();

        }
    }
}
