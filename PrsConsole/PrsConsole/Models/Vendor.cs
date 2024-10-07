using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace PrsConsole.Models;

[Table("Vendor")]
[Index("Code", Name = "UQ_Vendor_code", IsUnique = true)]
public partial class Vendor
{
    [Key]
    [Column("id")]
    public int Id { get; set; }

    [Column("code")]
    [StringLength(10)]
    [Unicode(false)]
    public string Code { get; set; } = null!;

    [Column("name")]
    [StringLength(255)]
    [Unicode(false)]
    public string Name { get; set; } = null!;

    [Column("address")]
    [StringLength(255)]
    [Unicode(false)]
    public string Address { get; set; } = null!;

    [Column("city")]
    [StringLength(255)]
    [Unicode(false)]
    public string City { get; set; } = null!;

    [Column("state")]
    [StringLength(2)]
    [Unicode(false)]
    public string State { get; set; } = null!;

    [Column("zip")]
    [StringLength(10)]
    [Unicode(false)]
    public string Zip { get; set; } = null!;

    [Column("phoneNumber")]
    [StringLength(12)]
    [Unicode(false)]
    public string PhoneNumber { get; set; } = null!;

    [Column("email")]
    [StringLength(100)]
    [Unicode(false)]
    public string Email { get; set; } = null!;

    [InverseProperty("Vendor")]
    public virtual ICollection<Product> Products { get; set; } = new List<Product>();

    // constructor
    public Vendor (string code, string name, string address, string city, string state, string zip, string phoneNumber, string email)
    {
        this.Code = code;
        this.Name = name;
        this.Address = address;
        this.City = city;
        this.State = state;
        this.Zip = zip;
        this.PhoneNumber = phoneNumber;
        this.Email = email;
    }

    public override string ToString()
    {
        return $"User: {Id}, {Code}, {Name}, {Address}, {City}, {State}, {Zip}, {PhoneNumber}, {Email}";
    }
}
