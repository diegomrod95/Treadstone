﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Treadstone.Model {
    
    [Serializable]
    public class Usuario : Entidade {
        
        public Int32 Id { get; set; }

        public IList<Post> Posts { get; set; }
        // TODO:

        public virtual void AddPost(Post post) {
            post.UsuarioRef = this;
            Posts.Add(post);
        }
    }
}
