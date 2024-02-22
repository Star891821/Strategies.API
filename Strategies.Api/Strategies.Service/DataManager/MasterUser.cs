using AutoMapper;
using Microsoft.Extensions.Configuration;
using Strategies.Api.Models.ModelsDto;
using Strategies.Domain.Models;
using Strategies.Service.Interfaces;

namespace Strategies.Service.DataManager
{
    public class MasterUser : IUserService<MstUserDto>
    {
        private IMapper _mapper;
        private readonly IConfiguration _configuration;
        public MasterUser(IMapper mapper, IConfiguration configuration)
        {
            _mapper = mapper;
            _configuration = configuration;
        }
        public bool Delete(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                var entity = dbContext.MstUsers.FirstOrDefault(e => e.UserId == id);
                if (entity != null)
                {
                    dbContext.MstUsers.Remove(entity);
                    dbContext.SaveChanges();
                }
                return true;
            }
        }

        public List<MstUserDto>? GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                var result = dbContext.MstUsers.ToList();
                return _mapper.Map<List<MstUserDto>>(result);
            }
        }

        public MstUserDto? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                var result = dbContext.MstUsers?.FirstOrDefault(e => e.UserId.Equals(id));
                return _mapper.Map<MstUserDto>(result);
            }
        }
        public MstUserDto? GetByName(string userName)
        {
            using (var dbContext = new StrategyDbContext())
            {
                var result = dbContext.MstUsers?.FirstOrDefault(e => e.Username.Equals(userName));
                return _mapper.Map<MstUserDto>(result);
            }
        }
        public bool InsertOrUpdate(MstUserDto entity)
        {
            using (var dbContext = new StrategyDbContext())
            {
                if (entity != null)
                {

                    if (entity.UserId != 0)
                    {
                        var dbentity = dbContext.MstUsers.FirstOrDefault(e => e.UserId == entity.UserId);
                        if (dbentity != null)
                        {
                            entity.Userpassword = dbentity.Userpassword;
                            entity.IsUpdated = true;
                            dbContext.Entry(dbentity).CurrentValues.SetValues(_mapper.Map<MstUser>(entity));
                        }
                        else
                        {
                            return false;
                            //throw new Exception(ErrorCode.MissingData.ToString());
                        }
                    }
                    else
                    {
                        var existingUser = dbContext.MstUsers.FirstOrDefault(x => x.Username.Equals(entity.Username));
                        if (existingUser != null)
                        {
                            // throw new Exception(ErrorCode.AlreadyExist.ToString());
                        }
                        else
                        {
                            entity.IsUpdated = true;
                            dbContext.MstUsers.Add(_mapper.Map<MstUser>(entity));
                        }

                    }
                    dbContext.SaveChanges();
                }
                return true;
            }
        }


        public string UpdatePassword(int UserId, string OldPassword, string newPassword)
        {
            using (var dbContext = new StrategyDbContext())
            {
                if (UserId != 0)
                {
                    var dbentity = dbContext.MstUsers.FirstOrDefault(e => e.UserId == UserId);

                    if (dbentity != null)
                    {
                        if (dbentity.Userpassword == OldPassword)
                        {
                            var updatedEntity = dbentity;
                            updatedEntity.Userpassword = newPassword;
                            dbContext.Entry(dbentity).CurrentValues.SetValues(updatedEntity);
                            dbContext.SaveChanges();
                            return "Password Updated Successfully";
                        }
                        else
                        {
                            return "Existing Password is not valid";
                        }
                    }
                    else
                    {
                        return "User doesn't exist";
                    }


                }
                else
                {
                    return "";
                }

            }
        }

        public bool CheckEmailExists(string EmailId)
        {
            using (var dbContext = new StrategyDbContext())
            {
                if (!String.IsNullOrEmpty(EmailId))
                {
                    var dbentity = dbContext.MstUsers.FirstOrDefault(e => e.Useremail == EmailId);

                    if (dbentity != null)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }


                }
                else
                {
                    return false;
                }

            }
        }

        public bool UpdateOTP(string OTP, string EmailId)
        {
            using (var dbContext = new StrategyDbContext())
            {
                if (!String.IsNullOrEmpty(OTP) && !String.IsNullOrEmpty(EmailId))
                {
                    var dbentity = dbContext.MstUsers.FirstOrDefault(e => e.Useremail == EmailId);

                    if (dbentity != null)
                    {
                        var updatedEntity = dbentity;
                        updatedEntity.Otp = OTP;
                        updatedEntity.OtpgeneratedDate = DateTime.Now;
                        dbContext.Entry(dbentity).CurrentValues.SetValues(updatedEntity);
                        dbContext.SaveChanges();
                        return true;
                    }
                    else
                    {
                        return false;
                    }


                }
                else
                {
                    return false;
                }

            }
        }

        public bool IsOtpValid(string EmailId, string OTP)
        {
            using (var dbContext = new StrategyDbContext())
            {
                if (!String.IsNullOrEmpty(EmailId) && !String.IsNullOrEmpty(OTP))
                {
                    var dbentity = dbContext.MstUsers.FirstOrDefault(e => e.Useremail == EmailId && e.Otp == OTP);

                    if (dbentity != null)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }


                }
                else
                {
                    return false;
                }

            }
        }

        public bool IsOtpExpired(string EmailId)
        {
            var otpExpirationMinutes = _configuration["EmailConfiguration:OTPExpireDuration"];
            using (var dbContext = new StrategyDbContext())
            {
                if (!String.IsNullOrEmpty(EmailId))
                {
                    var dbentity = dbContext.MstUsers.FirstOrDefault(e => e.Useremail == EmailId);

                    if (dbentity != null && IsOtpExpired(dbentity.OtpgeneratedDate, Convert.ToInt32(otpExpirationMinutes)))
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }


                }
                else
                {
                    return false;
                }

            }
        }

        public bool UpdatePassword(string newPassword, string EmailId)
        {
            using (var dbContext = new StrategyDbContext())
            {
                if (!String.IsNullOrEmpty(EmailId))
                {
                    var dbentity = dbContext.MstUsers.FirstOrDefault(e => e.Useremail == EmailId);

                    if (dbentity != null)
                    {
                        if (dbentity != null)
                        {
                            var updatedEntity = dbentity;
                            updatedEntity.Userpassword = newPassword;
                            updatedEntity.Otp = null;
                            updatedEntity.OtpgeneratedDate = null;
                            updatedEntity.LastPwdChangedDate = DateTime.Now;
                            dbContext.Entry(dbentity).CurrentValues.SetValues(updatedEntity);
                            dbContext.SaveChanges();
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                    else
                    {
                        return false;
                    }


                }
                else
                {
                    return false;
                }

            }
        }

        public string InsertOrUpdateUser(MstUserDto entity)
        {
            using (var dbContext = new StrategyDbContext())
            {
                if (entity != null)
                {

                    if (entity.UserId != 0)
                    {
                        var dbentity = dbContext.MstUsers.FirstOrDefault(e => e.UserId == entity.UserId);
                        if (dbentity != null)
                        {
                            entity.Userpassword = dbentity.Userpassword;
                            dbContext.Entry(dbentity).CurrentValues.SetValues(_mapper.Map<MstUser>(entity));
                            dbContext.SaveChanges();
                            return "User Updated Successfully";
                        }
                        else
                        {
                            return "User Doesn't Exists";
                        }
                    }
                    else
                    {
                        var existingUser = dbContext.MstUsers.FirstOrDefault(x => x.Username.Equals(entity.Username));
                        if (existingUser != null)
                        {
                            return "User Name Already Exists";
                        }
                        if (!string.IsNullOrEmpty(entity.Userpassword))
                        {
                            dbContext.MstUsers.Add(_mapper.Map<MstUser>(entity));
                            dbContext.SaveChanges();
                            entity.UserId = dbContext.MstUsers.OrderBy(x => x.UserId).Last().UserId;
                            return "User Added Successfully";
                        }
                        else
                        {
                            return "Password is not valid";
                        }

                    }

                }
                else
                {
                    return "User Data is null";
                }

            }
        }

        static bool IsOtpExpired(DateTime? otpCreationTime, int otpExpirationMinutes)
        {
            if (otpCreationTime == null)
                return true; // or handle the case when OTP creation time is not available

            return DateTime.Now > otpCreationTime.Value.AddMinutes(otpExpirationMinutes);
        }

        public MstUserDto? ValidateUser(int UserId, string Password)
        {
            using (var dbContext = new StrategyDbContext())
            {

                if (UserId != 0)
                {
                    var dbentity = dbContext.MstUsers.FirstOrDefault(e => e.UserId == UserId && 
                    e.Userpassword == Password);
                    if (dbentity != null)
                    {
                        return _mapper.Map<MstUserDto>(dbentity);
                        
                    }
                }
                return default;
            }
        }
    }
}
