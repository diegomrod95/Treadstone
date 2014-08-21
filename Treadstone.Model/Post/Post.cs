using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Treadstone.Model {
    
    [Serializable]
    public class Post : Entidade {
        
        public Int32 Id { get; set; }
        public Usuario UsuarioRef { get; set; }
        // Todo:

    }
}
