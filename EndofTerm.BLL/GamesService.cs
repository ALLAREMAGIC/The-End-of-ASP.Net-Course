using EndofTerm.DAL;
using System.Collections.Generic;
using System.Linq;

namespace EndofTerm.BLL
{
    public class GamesService
    {
        private EndofTermEntities db = new EndofTermEntities();

        public bool IsGameNameExisit(string gameName)
        {
            if (GetGamesInfoByGameName(gameName).Count == 0)
                return true;
            else
                return false;
        }

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
            if (games != null)
            {
                games.TypeId = typeId;
                games.Name = name.Trim();
                games.Price = price;
                games.Introduce = intro.Trim();
                games.Image = img.Trim();
                games.IsHot = isHot ? 1 : 0;

                db.SaveChanges();
            }
        }

        public void InsertType(string typeName)//插入类型
        {
            Type type = new Type();
            type.TypeName = typeName.Trim();

            db.Type.Add(type);
            db.SaveChanges();
        }

        public void UpdateType(int typeId, string typeName)//插入类型
        {
            Type type = db.Type.Find(typeId);
            if (type != null)
            {
                type.TypeName = typeName.Trim();

                db.SaveChanges();
            }
        }

        public Games GetGameInfoByGameId(int gameId)//通过gameId获取game信息
        {
            return db.Games.Where(p => p.GameId.Equals(gameId)).FirstOrDefault();
        }

        public List<Games> GetGamesInfoByTypeId(int typeId)//通过typeId获取games信息
        {
            if (GetTypeInfoByTypeId(typeId).TypeName == "热门")
                return GetHotGames();
            return db.Games.Where(p => p.TypeId.Equals(typeId)).ToList();
        }

        public List<Games> GetGamesInfoByGameName(string gameName)//通过gameName获取games信息
        {
            gameName = gameName.Trim();
            return db.Games.Where(p => p.Name.Equals(gameName)).ToList();
        }

        public List<Games> GetHotGames()
        {
            return db.Games.Where(p => p.IsHot.Equals(1)).ToList();
        }

        public Type GetTypeInfoByTypeId(int typeId)//通过typeId获取type信息
        {
            return db.Type.Where(p => p.TypeId.Equals(typeId)).FirstOrDefault();
        }

        public List<int> GetTypesId()//通过typeId获取type信息
        {
            return db.Type.Select(p => p.TypeId).ToList();
        }
    }
}