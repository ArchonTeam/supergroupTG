do

function run(msg, matches)

local mods = [[ 
راهنما فارسی مدیران :
@Soft_TG

!kick [Username | ID | Reply]

!kickinactive [ID | Reply | Username]

!mute [ ID | Reply | Username]

!unmute [ ID | Reply | Username]

!ban [username | ID | Reply]

!unban [Username | ID | Reply]

!banlist

!id [Username | Id | Reply]

!res @username

!res [Reply]

!lock [ads | name | tag | leave | badw | member | chat | farsi | bots| english | join | username ]

!unlock [ads | name | tag | leave | badw | member | chat | farsi | bots | english | join | username]

!all

!addsudo

!set[photo | name]

!set [rules | about]

!tagall [MSG]

!who

!filter [+-?] [word]

!set [value] [MSG]

!info [Username | ID | Reply]

!plugins [-+] (Plug Name) chat


==========================
به علاوه تمامی دستورات رنک :
member
==========================
 جهت دریافت راهنمای رنک های دیگر میتوانید از دستورات زیر استفاده کنید :
 
 !help owner 
 راهنمای صاحبان
 
 !help mod
راهنمای مدیران

!help member
راهنمای اعضای معمولی
به زودی با ساپورت کامل سوپرگروه
 ]]

 
 local admin = [[ 
 
 راهنمای فارسی ادمین ها :
 @Soft_TG
 
 !banall [Reply | ID | Username]
 
 !unbanall [ID]
 
 !add 
 
 !rem
 
 !leave
 
 !setowner [ID | Reply]
 
 !kill chat [ID]
 
 !bc [GP-ID] [MSG]
 
 !all [GP-ID]
 ==========================
 به علاوه تمامی دستورات رنک های :
 owner
 و
 mod
 و
 member
========================== 
 جهت دریافت راهنمای رنک های دیگر میتوانید از دستورات زیر استفاده کنید :
 
 !help owner 
 راهنمای صاحبان
 
 !help mod
راهنمای مدیران

!help member
راهنمای اعضای معمولی
 
 ]]
 
 local owner = [[
 
 راهنمای فارسی صاحبان گروه :
 @Soft_TG
 
 !promote [Reply | ID | Username]
 
 !demote [Reply | ID | Username]
 
 !setowner [ID | Reply]
 
 !addsudo
 
 !setrank [Reply | ID | Username]
 ==========================
 به علاوه تمامی دستورات رنک های :
 mod
 و
 member
 ==========================
 جهت دریافت راهنمای رنک های دیگر میتوانید از دستورات زیر استفاده کنید :
 
 !help owner 
 راهنمای صاحبان
 
 !help mod
راهنمای مدیران

!help member
راهنمای اعضای معمولی
 
 ]]
 
 local member = [[
 
 راهنمای فارسی عضو ها :
 @Soft_TG
 
 !calc [formula]
 
 !get [Value]
 
 !filterlist
 
 !info
 
 !id
 
 !me
 
 !voice [MSG]
 
 !time
 
 !time [Area]
 
 !tex [Msg]
 
 !feedback [msg]
 
 !share
 
 !shortlink [link]
 
 !weater [city]
 
 !praytime [city]
 
 !sticker [TXT]
 ==========================
 جهت دریافت راهنمای رنک های دیگر میتوانید از دستورات زیر استفاده کنید :
 
 !help owner 
 راهنمای صاحبان
 
 !help mod
راهنمای مدیران

!help member
راهنمای اعضای معمولی
 
 ]]
 
 local sudo = [[
 
 راهنما فارسی سودو ها :
 @Soft_TG
 
 !addadmin [ID | Username]
 
 !removeadmin [ID | Username]
 
 !creategroup [Name]
 
 !up [Name.format] [Text]
 
 !dl [name.format]
 
 !echo> [name.format] [Text]
 
 !invite [Username | ID | Reply]
 
 !stats bot
 
 !plugins 
 
 !plugins [+-] [Plugname]
 
 !reload
 
 ==========================
 به علاوه دسترسی به تمامی دستورات رنک های دیگر
 ==========================
 جهت دریافت راهنمای رنک های دیگر میتوانید از دستورات زیر استفاده کنید :
 
 !help owner 
 راهنمای صاحبان
 
 !help mod
راهنمای مدیران

!help member
راهنمای اعضای معمولی
 ]]
 
 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2] == nil then 
     
    if is_sudo(msg) then 
        return sudo
    elseif is_admin(msg) then 
        return admin 
    elseif is_owner(msg) then 
        return owner
    elseif is_momod(msg) then 
         return mods
    else 
        return member
        end
end
 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'owner' then 
     if is_owner(msg) then 
         return owner
    else return 'Only Admins or higher can See this !'
    end 
end

 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'mod' then
     if is_momod(msg) then 
         return mods
    else return 'only Owners Or higher Can See this !'
    end 
end 

 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'member' then
         return member
    end 
end

    
return {
 
  patterns = {
    "^!(help)$",
	"^([Hh]elp)$",
	"^/(help)$",
	
	"^!(help) (mod)$",
	"^!(help) (owner)$",
	"^!(help) (member)$",
	"^!(help) (sudo)$",
  }, 
  run = run 
}

end




--  -_-_-_-_-_-_-_-_-_-   ||-_-_-_-_-_   ||             ||-_-_-_-_-_
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||-_-_-_-_-_   ||             ||-_-_-_-_-_
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||-_-_-_-_-_   ||-_-_-_-_-_   ||-_-_-_-_-_
--
--
--                               /\                              /\             /-_-_-_-_-_    ||-_-_-_-_-_   ||-_-_-_-_-_
--  ||\\            //||        //\\        ||      //||        //\\           //              ||             ||         //
--  || \\          // ||       //  \\       ||     // ||       //  \\         //               ||             ||       //
--  ||  \\        //  ||      //    \\      ||    //  ||      //    \\       ||                ||             ||    //
--  ||   \\      //   ||     //______\\     ||   //   ||     //______\\      ||      -_-_-_-   ||-_-_-_-_-_   || //
--  ||    \\    //    ||    //        \\    ||  //    ||    //        \\     ||           ||   ||             ||  \\ 
--  ||     \\  //     ||   //          \\   || //     ||   //          \\     \\          ||   ||             ||     \\
--  ||      \\//      ||  //            \\  ||//      ||  //            \\     \\-_-_-_-_-||   ||-_-_-_-_-_   ||        \\
--
--
--  ||-_-_-_-    ||           ||           ||               //-_-_-_-_-_-
--  ||     ||    ||           ||           ||              //
--  ||_-_-_||    ||           ||           ||             //
--  ||           ||           ||           ||             \\
--  ||           ||           \\           //              \\
--  ||           ||            \\         //               //
--  ||           ||-_-_-_-_     \\-_-_-_-//    -_-_-_-_-_-//
--
--By @ali_ghoghnoos
--@telemanager_ch
