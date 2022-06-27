using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Fichines.Core;
public class Cliente
{
    public uint DNI { get; set; }
    public string Nombre { get; set; }
    public string Apellido { get; set; }
    public string Mail { get; set; }
    public uint Tarjeta { get ; set ; }
    public int Saldo {get ; set ; }
    public string Contrasena {get ; set ;}
    public Cliente(uint dni, string nombre, string apellido, string mail, uint tarjeta, int saldo, string contrasena)
    {
        DNI = dni;
        Nombre = nombre;
        Apellido = apellido;
        Mail = mail;
        Tarjeta = tarjeta;
        Saldo = saldo;
        Contrasena = contrasena;
    }
}