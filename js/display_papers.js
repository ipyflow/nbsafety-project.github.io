function contains(e,t){for(var i=e.length;i--;)if(e[i]===t)return!0;return!1}function display_papers(e,t,i){for(var n in t&&document.write("<ol>"),entities)0!=e.length&&!contains(e,n)||0==i||(i--,t&&document.write("<li>"),null==entities[n].location?document.write('<span class="label label-primary">PRE-PRINT</span> '):document.write('<span class="label label-primary">PAPER</span> '),document.write("<a href="+entities[n].link+">"+entities[n].title+"</a>. <br/>"),document.write(entities[n].authors+". "),null==entities[n].location?document.write(entities[n].venue+". "+entities[n].date+"<br/>"):document.write("<b>"+entities[n].venue+"</b>, "+entities[n].location+". "+entities[n].date+"<br/>"),null!=entities[n].special&&document.write('<span class="badge">'+entities[n].special+"</span><br/>"),t&&document.write("</li>"));t&&document.write("</ol>")}function display_papers_year(e,t,i){for(var n in t&&document.write("<ol>"),old_year="1000",entities)0!=e.length&&!contains(e,n)||0==i||(i--,full_date=entities[n].date,year=full_date.substr(full_date.length-4),year!=old_year&&(old_year=year,document.write("</ol>"),document.write("<h2>"+year+"</h2>"),document.write("<ol>")),t&&document.write("<li>"),null==entities[n].location?document.write('<span class="label label-primary">PRE-PRINT</span> '):document.write('<span class="label label-primary">PAPER</span> '),document.write("<a href="+entities[n].link+">"+entities[n].title+"</a>. <br/>"),document.write(entities[n].authors+". "),null==entities[n].location?document.write(entities[n].type+". "+entities[n].date+"<br/>"):document.write("<b>"+entities[n].type+"</b>, "+entities[n].location+". "+entities[n].date+"<br/>"),null!=entities[n].special&&document.write('<span class="badge">'+entities[n].special+"</span><br/>"),t&&document.write("</li>"));t&&document.write("</ol>")}