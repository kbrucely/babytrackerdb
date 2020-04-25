using System;
using System.Reflection;
using DbUp;

namespace babyfeedtrackerdb

{
    class Program
    {
        static int Main(string[] args)
        {
            var connectionString=Environment.GetEnvironmentVariable("DB_CONNECTION_STRING");
            var scriptDir = Environment.GetEnvironmentVariable("DB_SCRIPT_DIR");
            var upgrader =
                DeployChanges.To
                    .SqlDatabase(connectionString)
                    .WithScriptsFromFileSystem(scriptDir)
                    .LogToConsole()
                    .Build();

            var result = upgrader.PerformUpgrade();

            if (!result.Successful)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine(result.Error);
                Console.ResetColor();
#if DEBUG
                Console.ReadLine();
#endif
                return -1;
            }

            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine("Success!");
            Console.ResetColor();
            return 0;
        }
    }
}
