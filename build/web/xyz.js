/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function uname()
{
    x=document.getElementById("t1").value;
           
    if(x.length<3)
    {
        document.getElementById("s1").innerHTML="Invalid Name";
        return false;
    }
    else
    {
        return true;
    }
}
function upass()
{
    x=document.getElementById("t2").value;
           
    if(x.length<3)
    {
        document.getElementById("s2").innerHTML="Invalid pass";
        return false;
    }
    else
    {
        return true;
    }
}
function demo()
{
    document.getElementById("s1").innerHTML="";
    document.getElementById("s2").innerHTML="";
    
    if(uname() && upass())
    {
        form1.submit();
    }
}