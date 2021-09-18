//? UI -> Logic (will have to change) -> MySQL (Programming to implementation)
//~ UI -> Logic (no change) -> IDBInterface (Programming to interface) -> MySQL
//~ UI -> Logic (no change) -> IDBInterface (Programming to interface) -> Mongo


using System;
using System.Collections.Generic;

//% A class is who you are (born as)
//% You do NOT have to work to get those features
abstract class Human 
{
    public void Cry() { //% Built in behavior
        Console.WriteLine("bawawawa!");
    }
    abstract void speech();
}

//! An interface is something you have to work hard to achieve
interface Musician 
{
    void PlayMusic(); // ! You have to implement
}

interface Programmer 
{
    void WriteCode();
}

class Boopesh 
    : Human, //% I am human by birth
    Musician, 
    Programmer
{
    public void PlayMusic() 
    {
        Console.WriteLine("Goto music class and learn");
    }        
    public void WriteCode() 
    {
        Console.WriteLine("printf(\"Hello, World\");");
    }
}

class AutoPiano : Musician 
{
    public void PlayMusic()
    {
        Console.WriteLine("Piano playing");
    }
}

class Sanjay : Human, Programmer, Musician
{
    public void WriteCode() 
    {
        Console.WriteLine("print('Hello Python');");
    }
}

class World {
    public static void Main() {
        List<Musician> orchestra = new List<Musician>();
        orchestra.Add(new Boopesh());
        orchestra.Add(new AutoPiano());
        orchestra.Add(new Sanjay()); // This will throw error as Sanjay did not implement PlayMusic 
    }
}