//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace EndofTerm.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Games
    {
        public int GameId { get; set; }
        public int TypeId { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public string Introduce { get; set; }
        public string Image { get; set; }
        public byte IsHot { get; set; }
    
        public virtual Type Type { get; set; }
    }
}
