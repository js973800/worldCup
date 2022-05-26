<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>play</title>
        <link href="play.css?ver=1" rel="stylesheet"/>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        
        
    </head>
    <body>
    <% 
        String name = request.getParameter("20");
        Integer[] arr = {1, 2, 3, 4, 5, 6, 7, 8};
        List<Integer> list = Arrays.asList(arr);
        Collections.shuffle(list);
        
    %>
        <div class="wra">
            <div class="pwra">
                <div class="wra_co">
                    <div class="row">
                        <div class="box_co">
                            <div class="toptop"><%=name%>강</div>
                        <% 
                            if(name.equals("4")){           
                        %>    
                            <div id="wleft" class="l1">
                                <img class="a12" id="sh<%=arr[0]%>" value="<%=arr[0]%>" name="aa" src = "a/<%=arr[0]%>.jpg" onClick="save1()">
                                <img class="a12" id="sh<%=arr[2]%>" value="<%=arr[2]%>" name="aa" src = "a/<%=arr[2]%>.jpg" onClick="save2()">
                                
                            </div>

                            <div id="wright" class="l1">
                                <img class="a12" id="sh<%=arr[1]%>" value="<%=arr[1]%>" name="aa" src = "a/<%=arr[1]%>.jpg" onClick="save3()">
                                <img class="a12" id="sh<%=arr[3]%>" value="<%=arr[3]%>" name="aa" src = "a/<%=arr[3]%>.jpg" onClick="save4()">
                            </div>
                            <input type="button" id="next1" class="nextr" value="다음 강으로"><div>
                        <%  
                            }else if(name.equals("8")){
                        %>        
                            <div id="wleft" class="l1" name="">
                                <img class="a12" id="sh1" src = "a/<%=arr[0]%>.jpg" >
                                <img class="a12" id="sh2" src = "a/<%=arr[2]%>.jpg">
                                <img class="a12" id="sh5" src = "a/<%=arr[4]%>.jpg" >
                                <img class="a12" id="sh6" src = "a/<%=arr[6]%>.jpg">
                            </div>
                            <div id="wright" class="l1" name="">
                                <img class="a12" id="sh3" src = "a/<%=arr[1]%>.jpg">
                                <img class="a12" id="sh4" src = "a/<%=arr[3]%>.jpg">
                                <img class="a12" id="sh7" src = "a/<%=arr[5]%>.jpg" >
                                <img class="a12" id="sh8" src = "a/<%=arr[7]%>.jpg">
                            </div>
                        <%    
                            }
                        %>    
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script>
            $(document).ready(function() {
                $('#sh<%=arr[0]%>,#sh<%=arr[1]%>').show();
                $('#sh<%=arr[2]%>,#sh<%=arr[3]%>').hide();
        
        
            $('#sh<%=arr[0]%>').click(function(){ 
                $('#sh<%=arr[0]%>,#sh<%=arr[1]%>').hide();
                $('#sh<%=arr[2]%>,#sh<%=arr[3]%>').show();
            });
            $('#sh<%=arr[1]%>').click(function(){  
                $('#sh<%=arr[2]%>,#sh<%=arr[3]%>').show();
                $('#sh<%=arr[0]%>,#sh<%=arr[1]%>').hide();
            });
            $('#sh<%=arr[2]%>').click(function(){  
                $('#sh1,#sh3').hide();
                $('#sh2,#sh4').show();
            });
            $('#sh<%=arr[3]%>').click(function(){  
                $('#sh2').hide();
                $('#sh4').show();
            });
            });
            
            var names = [];
            function save1(){
                var name = $('#sh<%=arr[0]%>').attr('value');
                names.push(name);
            };
            function save2(){
                var name = $('#sh<%=arr[2]%>').attr('value');
                names.push(name);
                
            };
            function save3(){
                var name = $('#sh<%=arr[1]%>').attr('value');
                names.push(name);
                
            };
            function save4(){
                var name = $('#sh<%=arr[3]%>').attr('value');
                names.push(name);
                
            };
            console.log(names);
            $("#next1").click(function() {
            $.ajax({
                type: "get",
                traditional : true,
                async: false, 
                url: "next.jsp",
                data: {"names":names},
                success: function (data) {
                    //setTimeout("window.location.replace('next.jsp');",800);
                }
            });
            });

        </script>
       
    </body>
</html>