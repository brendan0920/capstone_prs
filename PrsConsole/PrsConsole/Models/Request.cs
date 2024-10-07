﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace PrsConsole.Models;

[Table("Request")]
public partial class Request
{
    [Key]
    [Column("id")]
    public int Id { get; set; }

    [Column("userId")]
    public int UserId { get; set; }

    [Column("description")]
    [StringLength(100)]
    [Unicode(false)]
    public string Description { get; set; } = null!;

    [Column("justification")]
    [StringLength(225)]
    [Unicode(false)]
    public string Justification { get; set; } = null!;

    [Column("dateNeeded")]
    public DateOnly? DateNeeded { get; set; }

    [Column("deliveryMode")]
    [StringLength(25)]
    [Unicode(false)]
    public string DeliveryMode { get; set; } = null!;

    [Column("status")]
    [StringLength(20)]
    [Unicode(false)]
    public string Status { get; set; } = null!;

    [Column("total")]
    public double Total { get; set; }

    [Column("submittedDate", TypeName = "datetime")]
    public DateTime SubmittedDate { get; set; }

    [Column("reasonForRejection")]
    [StringLength(100)]
    [Unicode(false)]
    public string? ReasonForRejection { get; set; }

    [InverseProperty("Request")]
    public virtual ICollection<LineItem> LineItems { get; set; } = new List<LineItem>();

    [ForeignKey("UserId")]
    [InverseProperty("Requests")]
    public virtual User User { get; set; } = null!;
}
