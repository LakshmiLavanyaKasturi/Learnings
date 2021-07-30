<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Resume</title>
                <h1 style="text-align:center">Resume</h1>
            </head>
            <body>
                
                <xsl:apply-templates/>
                
            </body>
        </html>
  
    </xsl:template>
   
    <xsl:template match="school"> 
        <h2>Education</h2>
        <xsl:value-of select="name" /> 
        <xsl:text> , </xsl:text> 
        <xsl:value-of select="degree"/> 
        <xsl:text> , </xsl:text>
        <xsl:value-of select="year"/> 
        <xsl:text>  </xsl:text> 
     </xsl:template>
    
    <xsl:template match="skill">
        <h2>Technical skills</h2>
           
                <style>
                    table, th, td {
                    border: 1px solid black;
                    border-collapse: collapse;
                    }
                    th, td {
                    padding: 5px;
                    }
                    th {
                    text-align: left;
                    }
                </style>
                <table style="width:50%">
                    <tr>
                        <td>Programming Languages</td>
                        <td>
                        <xsl:value-of select="programming_languages"/>
                        </td>
                        <xsl:text>  </xsl:text>
                                                
                    </tr>
                    <tr>
                        <td>Webtechnologies</td>
                        <td>
                            <xsl:value-of select="webtechnologies"/>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>Database Languages</td>
                        <td>
                            <xsl:value-of select="database_languages"/>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>Software methodologies</td>
                        <td>
                            <xsl:value-of select="Software_methodologies"/>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>Tools</td>
                        
                        <td><xsl:value-of select="tools"/></td>
                        
                    </tr>
                </table>
            
        
    </xsl:template>
   
    <xsl:template match="work_history">
        <h2>Work history</h2>
        <xsl:for-each select="experience">
            <tr>
                <div>
                <td><xsl:value-of select="company_name"/></td>
                <td><xsl:value-of select="title"/></td>
                <td><xsl:value-of select="duration"/></td>
                </div>
            </tr>
        </xsl:for-each>
        
    </xsl:template>
    
    <xsl:template match="contact_info">
        <h2>Contact Information</h2>
        
            <xsl:value-of select="name"/> 
            <xsl:text>  </xsl:text> 
            
          
                <xsl:value-of select="Address/House_number"/>
                <xsl:value-of select="Address/Street"/>
               <xsl:text> , </xsl:text>
                <xsl:value-of select="Address/City"/> 
               <xsl:text> , </xsl:text>
                <xsl:value-of select="Address/State"/> 
               <xsl:text> , </xsl:text>
                <xsl:value-of select="Address/Zipcode"/> 
               <xsl:text> . </xsl:text> 
               <xsl:text> Phone: </xsl:text> 
               <xsl:value-of select="phone_number"/> 
               <xsl:text>  </xsl:text> 
            
            
        
    </xsl:template>
     
 </xsl:stylesheet>


