<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
 
<html>
<head>
    <title>Dynamically Add Remove Table Rows in JavaScript</title>

    <style>
        table 
        {
            width: 70%;
            font: 17px Calibri;
        }
        table, th, td 
        {
            border: solid 1px #DDD;
            border-collapse: collapse;
            padding: 2px 3px;
            text-align: center;
        }
    </style>
</head> 
<body onload="createTable()">
    <form action="try2.jsp">
    <p>
        <input type="button"  value="Add New Row" onclick="addRow();" />
        
        <b id="demo"></b>
    </p>
    <script>
    // ARRAY FOR HEADER.
    var arrHead = new Array();
    arrHead = ['','Sr','  Name of Staff', 'Designation of Staff',' No of  papers', 'Remu. Rate'];      // SIMPLY ADD OR REMOVE VALUES IN THE ARRAY FOR TABLE HEADERS.

    // FIRST CREATE A TABLE STRUCTURE BY ADDING A FEW HEADERS AND
    // ADD THE TABLE TO YOUR WEB PAGE.
    
    
    function createTable() {
        var empTable = document.createElement('table');
        empTable.setAttribute('id', 'empTable');            // SET THE TABLE ID.

        var tr = empTable.insertRow(-1);

        for (var h = 0; h < arrHead.length; h++) {
            var th = document.createElement('th');          // TABLE HEADER.
            th.innerHTML = arrHead[h];
            tr.appendChild(th);
        }

        var div = document.getElementById('cont');
        div.appendChild(empTable);    // ADD THE TABLE TO YOUR WEB PAGE.
    }
var sum=0;
    // ADD A NEW ROW TO THE TABLE.s
    function addRow() {
    
    
    var x=10;
    document.getElementById("demo").innerHTML=x;
    
           sum=sum+1;
        var ch8,ch9,ch10;
        var ch7="Prof_name"+sum;
         ch8="post"+sum;
         ch9="sets"+sum; ch10="remu_rate"+sum
        var empTab = document.getElementById('empTable');

        var rowCnt = empTab.rows.length;        // GET TABLE ROW COUNT.
        var tr = empTab.insertRow(rowCnt);      // TABLE ROW.
        tr = empTab.insertRow(rowCnt);

        for (var c = 0; c < arrHead.length; c++) {
            var td = document.createElement('td');          // TABLE DEFINITION.
            td = tr.insertCell(c);

            if (c == 0) {           // FIRST COLUMN.
                // ADD A BUTTON.
                var button = document.createElement('input');

                // SET INPUT ATTRIBUTE.
                button.setAttribute('type', 'button');
                button.setAttribute('value', 'Remove');

                // ADD THE BUTTON's 'onclick' EVENT.
                button.setAttribute('onclick', 'removeRow(this)');

                td.appendChild(button);
            }
            else { 
            
            if (c == 1){
                // CREATE AND ADD TEXTBOX IN EACH CELL.
                var ele = document.createElement('input');
                ele.setAttribute('type', 'text');
                ele.setAttribute('value', sum);
                 ele.setAttribute('name', sum);
                td.appendChild(ele);}
                
                else  {
                
                      if(c==2){
                      
                        var ele = document.createElement('input');
                ele.setAttribute('type', 'text');
                ele.setAttribute('value', '');
                 ele.setAttribute('name', ch7);
                td.appendChild(ele);
                      
                      
                      }
                
                else{
                
                
               if(c==3){
                 var ele = document.createElement('input');
                ele.setAttribute('type', 'text');
                ele.setAttribute('value', '');
                    ele.setAttribute('value', '');
                 ele.setAttribute('name', ch8);
                td.appendChild(ele);}
                else{
                if(c==4){
                 var ele = document.createElement('input');
                ele.setAttribute('type', 'number');
                ele.setAttribute('value', '');
                    ele.setAttribute('value', '');
                 ele.setAttribute('name', ch9);
                td.appendChild(ele);}
                else{
                
                 var ele = document.createElement('input');
                ele.setAttribute('type', 'number');
                ele.setAttribute('value', '');
                    ele.setAttribute('value', '');
                 ele.setAttribute('name', ch10);
                td.appendChild(ele);
                
                
                
                
                }
                
                
                }
                
                }
                
                
                }
            }
        }
    }

    // DELETE TABLE ROW.
    function removeRow(oButton) {
        var empTab = document.getElementById('empTable');
        empTab.deleteRow(oButton.parentNode.parentNode.rowIndex);       // BUTTON -> TD -> TR.
    }

    // EXTRACT AND SUBMIT TABLE DATA.
    function sumbit() {
        var myTab = document.getElementById('empTable');
        var values = new Array();

        // LOOP THROUGH EACH ROW OF THE TABLE.
        for (row = 1; row < myTab.rows.length - 1; row++) {
            for (c = 0; c < myTab.rows[row].cells.length; c++) {   // EACH CELL IN A ROW.

                var element = myTab.rows.item(row).cells[c];
                if (element.childNodes[0].getAttribute('type') == 'text') {
                    values.push("'" + element.childNodes[0].value + "'");
                }
            }
        }
        console.log(values);
    }
</script>
    <!--THE CONTAINER WHERE WE'll ADD THE DYNAMIC TABLE-->
    <div id="cont"></div>

    <input type="Submit">
    </form>
</body>


</html>
<%@include file="footer.jsp" %>