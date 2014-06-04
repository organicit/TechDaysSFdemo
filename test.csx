// var currentProcess = System.Diagnostics.Process.GetCurrentProcess();
// Console.WriteLine(currentProcess);

using System.Diagnostics;
Process[] all = Process.GetProcesses();
foreach (Process thisProc in all) {
    string Name = thisProc.ProcessName;
    Console.WriteLine(Name);
}