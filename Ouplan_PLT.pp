+================================================
+                                                
+ Ouplan - Vectric machine output configuration file used for machines with knife tool
+ NOTE:
+ The Z height and depth of the cut is set by the machine controller and not by the vectric software
+ The only effect of using multiple cut depths is posting multiple passes to the PLT File
+================================================
+                                                
+ History                                        
+                                                
+ Who    When       What                         
+ ======== ========== ===========================
+ Alberto 31/10/2012   Initial Commit
+ X3msnake 24/04/2016  Info update added note                   
+================================================

POST_NAME = "Ouplan InoPLT (mm) (*.plt)"

FILE_EXTENSION = "plt"

UNITS = "MM"


+------------------------------------------------
+    Line terminating characters                 
+------------------------------------------------

LINE_ENDING = "[13][10]"

+================================================
+                                                
+    Formating for variables                     
+                                                
+================================================

VAR FEED_RATE = [F|A||1.0|0.01667]
VAR X_POSITION = [X|A||1.0|40]
VAR Y_POSITION = [Y|A||1.0|40]
VAR Z_POSITION = [Z|A||1.0|-40]
VAR X_HOME_POSITION = [XH|A||1.0|40]
VAR Y_HOME_POSITION = [YH|A||1.0|40]
VAR Z_HOME_POSITION = [ZH|A||1.0|-40]

+================================================
+                                                
+    Block definitions for toolpath output       
+                                                
+================================================

+---------------------------------------------------
+  Commands output at the start of the file
+---------------------------------------------------

begin HEADER

"IN;PA;"
"SP[T];"



+---------------------------------------------------
+  Commands output at toolchange
+---------------------------------------------------

begin TOOLCHANGE

"SP[T];"


+---------------------------------------------------
+  Commands output when feed rate changes
+---------------------------------------------------

begin FEED_RATE_CHANGE

+ Uncomment the next line to change feeds based on gcode (only works with some machines)
+"SF[F];"


+---------------------------------------------------
+  Commands output for rapid moves 
+---------------------------------------------------

begin RAPID_MOVE

"PU[X],[Y];"


+---------------------------------------------------
+  Commands output for the first feed rate move
+---------------------------------------------------

begin FIRST_FEED_MOVE

"PD[X],[Y];"


+---------------------------------------------------
+  Commands output for feed rate moves
+---------------------------------------------------

begin FEED_MOVE

"PD[X],[Y];"


+---------------------------------------------------
+  Commands output at the end of the file
+---------------------------------------------------

begin FOOTER


"SP0;"

