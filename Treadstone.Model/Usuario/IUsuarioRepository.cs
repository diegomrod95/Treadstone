using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Treadstone.Model {
    
    public interface IUsuarioRepository {
        Int32 Save(Usuario usuario);
        Int32 Delete(Usuario usuario);
        IList<Usuario> SearchByNome(String nome);
        Usuario GetById(Int32 id);
    }
}
