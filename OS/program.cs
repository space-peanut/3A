using System;
using System.Threading;

public class MainClass
{
	private static int counter = 0;
		
	public static void Main(string[] args)
	{
		Thread thread = new Thread(() =>
		{
			while (true)
			{
				Console.WriteLine($"Compteur : {counter}");
				counter++;
				Thread.Sleep(1000);
			}
		});
		
		thread.Start();
		thread.Join();
	}
}