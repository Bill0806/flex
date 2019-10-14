<!DOCTYPE html>
<html lang="en">
  <head>
    <style>
    body {
        font: 24px Helvetica;
        background: #999999;
    }

    #main {
        min-height: 800px;
        margin: 0;
        padding: 0;
        display: flex;
        flex-flow: row;
    }
 
    #main > article {
        margin: 4px;
        padding: 5px;
        border: 1px solid #cccc33;
        border-radius: 7pt;
        background: #dddd88;
        flex: 60%;
        order: 2;
        /*order 排行 */
    }

    #main > nav {
        margin: 4px;
        padding: 5px;
        border: 1px solid #8888bb;
        border-radius: 7pt;
        background: #ccccff;
        flex: 1 6 20%;
        order: 1;
    }
  
    #main > aside {
        margin: 4px;
        padding: 5px;
        border: 1px solid #8888bb;
        border-radius: 7pt;
        background: #ccccff;
        flex: 1 6 20%;
        order: 3;
    }
 
    header, footer {
        display: block;
        margin: 4px;
        padding: 5px;
        min-height: 100px;
        border: 1px solid #eebb55;
        border-radius: 7pt;
        background: #ffeebb;
    }
 
    /* Too narrow to support three columns */
    @media all and (max-width: 640px) {
        #main, #page {
            flex-direction: column;
        }

        #main > article, #main > nav, #main > aside {
        /* Return them to document order */
            order: 0;
        }
  
        #main > nav, #main > aside, header, footer {
            min-height: 50px;
            max-height: 50px;
        }
    }
    </style>
  </head>
  <body>
    <header>header</header>
    <div id='main'>
      <article>article</article>
      <nav>nav</nav>
      <aside>aside</aside>
    </div>
    <footer>footer</footer>
  </body>
</html>
