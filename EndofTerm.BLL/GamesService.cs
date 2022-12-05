﻿using EndofTerm.DAL;
using System.Collections.Generic;
using System.Linq;

namespace EndofTerm.BLL
{
    public class GamesService
    {
        private EndofTermEntities db = new EndofTermEntities();

        /// <summary>
        /// 模糊查找商品名中包含指定文本的商品，再返回满足条件的商品列表
        /// </summary>
        /// <param name="searchText">指定的文本</param>
        /// <returns>满足条件的商品列表</returns>
        public List<Games> GetGameBySearchText(string searchText)
        {
            return (db.Games.Where(p => p.Name.Contains(searchText))).ToList();
        }

        /// <summary>
        /// 向MyPetShop数据库中的Customer表插入新用户记录
        /// </summary>
        /// <param name="name">用户名</param>
        /// <param name="password">密码</param>
        /// <param name="email">电子邮件地址</param>
        public void InsertGame(int typeId, string name, float price, string intro, string img, bool isHot)//插入游戏
        {
            Games games = new Games();
            games.TypeId = typeId;
            games.Name = name;
            games.Price = price;
            games.Introduce = intro;
            games.Image = img;
            games.IsHot = isHot ? 1 : 0;

            db.Games.Add(games);
            db.SaveChanges();
        }

        public void UpdateGame(int gameId, int typeId, string name, float price, string intro, string img, bool isHot)//插入游戏
        {
            Games games = db.Games.Find(gameId);
            games.TypeId = typeId;
            games.Name = name;
            games.Price = price;
            games.Introduce = intro;
            games.Image = img;
            games.IsHot = isHot ? 1 : 0;

            db.Games.Add(games);
            db.SaveChanges();
        }

        public void InsertType(string typeName)//插入类型
        {
            Type type = new Type();
            type.TypeName = typeName;

            db.Type.Add(type);
            db.SaveChanges();
        }

        public void UpdateType(int typeId, string typeName)//插入类型
        {
            Type type = db.Type.Find(typeId);
            type.TypeName = typeName;

            db.Type.Add(type);
            db.SaveChanges();
        }

        public Games GetGameInfoByGameId(int gameId)
        {
            return db.Games.Where(p => p.GameId.Equals(gameId)).FirstOrDefault();
        }

        public Type GetTypeInfoByTypeId(int typeId)
        {
            return db.Type.Where(p => p.TypeId.Equals(typeId)).FirstOrDefault();
        }
    }
}