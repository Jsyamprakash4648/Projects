using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using OnlineLibraryAPI.DATA;

namespace OnlineLibraryAPI.Controllers
{   
    [ApiController]
    [Route("api/[controller]")]
    
    public class UserDetailsController:ControllerBase
    {
        private readonly ApplicationDBContext _dbContext;
        public UserDetailsController(ApplicationDBContext applicationDBContext)
        {
            _dbContext=applicationDBContext;
        }


        [HttpGet]
        public IActionResult GetUserdetails()
        {
            return Ok(_dbContext.users.ToList());
        }

        //carrying data
        [HttpGet("{id}")]
        public IActionResult GetUser(int id)
        {
            var user=_dbContext.users.FirstOrDefault(user1=>user1.UserID==id);
            if(user==null)
            {
                return NotFound();
            }
            return Ok(user);
        }

        //inserting
         [HttpPost]
        public IActionResult PostUserdetails([FromBody] UserDetails user)
        {
            _dbContext.users.Add(user);
            _dbContext.SaveChanges();
            return Ok();
        }


         //update
        [HttpPut("{id}")]
         public IActionResult PutUserDetails(int id,[FromBody] UserDetails user)
         {
            var Olduser=_dbContext.users.FirstOrDefault(u=>u.UserID==id);
            if(Olduser==null)
            {
                return NotFound();
            }

            Olduser.Department=user.Department;
            Olduser.Gender=user.Gender;
            Olduser.MailID=user.MailID;
            Olduser.MobileNumber=user.MobileNumber;
            Olduser.UserID=user.UserID;
            Olduser.UserName=user.UserName;
            Olduser.WalletBalance=user.WalletBalance;
            Olduser.Password=user.Password;
            Olduser.Picture=user.Picture;

            _dbContext.SaveChanges();
            return Ok();
         }

         //Delete

         [HttpDelete("{id}")]
         public IActionResult DeleteUser(int id)
         {

            var user2=_dbContext.users.FirstOrDefault(u=> u.UserID==id);
            if(user2==null)
            {
                return NotFound();
             }
            _dbContext.users.Remove(user2);
            _dbContext.SaveChanges();
            //you might want to return NoContent or Another Appropriate content
            return Ok();

         }
 
    }
}