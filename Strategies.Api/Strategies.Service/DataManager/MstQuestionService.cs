using AutoMapper;
using Strategies.Api.Models.ModelsDto;
using Strategies.Domain.Models;
using Strategies.Service.Repository;

namespace Strategies.Service.DataManager
{
    public class MstQuestionService : IGenericService<MstQuestionDto>
    {
        private IMapper _mapper;
        public MstQuestionService(IMapper mapper)
        {
            _mapper = mapper;
        }
        public bool Delete(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                var entity = dbContext.MstQuestions.FirstOrDefault(e => e.QuestionId == id);
                if (entity != null)
                {
                    dbContext.MstQuestions.Remove(entity);
                    dbContext.SaveChanges();
                }
                return true;
            }
        }

        public List<MstQuestionDto> GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                var result = dbContext.MstQuestions.ToList();
                return _mapper.Map<List<MstQuestionDto>>(result);
            }
        }

        public MstQuestionDto? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                var result = dbContext.MstQuestions?.FirstOrDefault(e => e.QuestionId.Equals(id));
                return _mapper.Map<MstQuestionDto>(result);
            }
        }

        public bool InsertOrUpdate(MstQuestionDto entity)
        {
            using (var dbContext = new StrategyDbContext())
            {
                if (entity != null)
                {
                    if (entity.QuestionId != 0)
                    {
                        var dbentity = dbContext.MstQuestions.FirstOrDefault(e => e.QuestionId == entity.QuestionId);

                        if (dbentity != null)
                        {
                            dbContext.Entry(dbentity).CurrentValues.SetValues(_mapper.Map<MstQuestion>(entity));
                        }
                    }
                    else
                    {
                        dbContext.MstQuestions.Add(_mapper.Map<MstQuestion>(entity));
                    }
                    dbContext.SaveChanges();
                }

                return true;
            }
        }

    }
}
