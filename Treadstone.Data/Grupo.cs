//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Treadstone.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Grupo
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Descricao { get; set; }
        public Nullable<int> ImagemId { get; set; }
        public System.DateTime Cadastro { get; set; }
        public string Ativo { get; set; }
    
        public virtual Imagem Imagem { get; set; }
    }
}
