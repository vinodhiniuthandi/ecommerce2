<?xml version="1.0" encoding="UTF-8"?>
<flow xmlns="http://www.springframework.org/schema/webflow"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.springframework.org/schema/webflow 
      http://www.springframework.org/schema/webflow/spring-webflow-4.0.xsd">
     
     
    <view-state id="shippingAddress" view="proceed.jsp">
                <transition on="proceed" to="shippingAddress"/>
                <transition on="proceed" to="shipping"/>
                
        </view-state>
    
     <view-state id="Aboutus" view="Aboutus.jsp">
               <transition on="home" to="welcome" />
              
        </view-state>
  </flow>   