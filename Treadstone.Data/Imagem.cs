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
    
    public partial class Imagem
    {
        public Imagem()
        {
            this.Grupo = new HashSet<Grupo>();
            this.PostImagem = new HashSet<PostImagem>();
            this.UsuarioImagem = new HashSet<UsuarioImagem>();
        }
    
        public int Id { get; set; }
        public string Descricao { get; set; }
        public string Fisico { get; set; }
        public byte[] File { get; set; }
        public string Caminho { get; set; }
        public string Extensao { get; set; }
        public System.DateTime Cadastro { get; set; }
        public string Ativo { get; set; }
    
        public virtual ICollection<Grupo> Grupo { get; set; }
        public virtual ICollection<PostImagem> PostImagem { get; set; }
        public virtual ICollection<UsuarioImagem> UsuarioImagem { get; set; }
    }
}
