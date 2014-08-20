using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Treadstone.Model {
    
    [Serializable]
    public abstract class Entidade {

        public Char Ativo { get; set; }
        public DateTime Cadastro { get; set; }
    }
}
