סדר קומפילציה לפי סימולטור:
AdderSub.vhd:
 בקובץ נמצא ENTITY בשם AdderTwo שמקבל 2 וקטורים בגודל N,  ביט בשם CIN ווקטור בגודל 2 ביט של מצב הפעולה של המודול הספיציפי הזה ומוציא וקטור של N ביט של חישוב הנקבע על פי ווקטור הפעולה.
 מודול מבטיח פעולה תקינה רק עבור מצבי פעולה תקינים  "01" " 10" "10" כפי שהוגדר בקובץ הדרישות, 
זאת אומרת שאם מצב פעולה שווה ל"11" אנו לא מבטיחים פעולה תקינה מכיוון שזה לא מצב תקין עבור מודול הזה כפי שהוגדר בתרגיל אף מודול לא קורס.מודול הנוכחי משתמש בתת מודל בנמצא בקובץ FA.vhd
top.vhd:
מודול זה בעצם עוטף את כלל המערכת והוא מכיל את המודולים הבאים: BACKregister, FRONTregister, ALU.
ALU.vhd:
בתוך המודול הזה נמצאים INSTANCES הבאים: arithAndLogicEntity, selectorEntity, shiftEntity.
המודול הנוכחי הוא מקבל 2 וקטורי כניסה, CIN וOPCODE של הפקודה ומבצע חישוב המתאים. בסוף הוא מוציא וקטור פלט וסטטוס.במודל הזה קיימת כניסה של השעון עבור חישוב של MAC.
MAC.vhd
מודול ששומר את תוצאה של ACC ועבור פקודות מתאימות הוא מוציא את התוצאה או שמאפס שת ACC.מודול הזה הוא מודל היחידי בתוך CPU שדורש כניסה של CLK. מודל הנוכחי עבר סינטזה.
backRegister.vhd:
מודול זה אחראי על פליטת הקלט למעבד בסנכרון לאות השעון, אות האיפוס ואות האיפשור (enable).
frontRegister.vhd:
מודול זה אחראי על פליטת הקלט מהמעבד החוצה בסנכרון לאות השעון, אות האיפוס ואות האיפשור (enable).
outputSelector.vhd:
מודול זה בעצם בוחר איזה פלט המעבד יוציא לפי קוד ה-OPC שהיה בכניסה. בנוסף, הוא גם מקבל את ה-Carry של שני המודולים ומוציא בהתאם גם את ווקטור ה-Status המתאים בהתאם למצב הנתון.
shifter.vhd:
מודול זה בעצם אחראי על כל פעולות ההזזה של המעבד. הוא בוחר איזה סוג הזזה לבצע לפי ה-sel שהיה בכניסה והוא עושה את ההזזה הנבחרת על ווקטור A לפי המספר שמכיל B. בנוסף, הוא גם מקבל Carry של שני המודולים ומוציא בהתאם גם את ביט ה-carry החדש שנוצר.
עבור sel = “00” – ביצוע RLA.
עבור sel = “01” – ביצוע RLC.
עבור sel = “10” – ביצוע RRA.
עבור sel = “11” – ביצוע RRC.
ArithLogic.vhd:
מודול זה בעצם אחראי על כל הפעולות הלוגיות והאריתמטיות של המעבד. הוא בוחר איזה סוג פעולה לבצע לפי קוד ה-OPC שהיה בכניסה, והוא מכיל את המודולים הבאים: MaxMin, MACModule, AdderSub, MultSub.
MaxMin.vhd:
מודול זה בעצם אחראי על השוואה בין הכניסות A ו-B ולהוציא את המינימום/מקסימום שלהם בהתאם לסיגנל maxFlag (אם הוא '1' אז להוציא את המקסימום, אם הוא '0' אז להוציא את המינימום).
Mult.vhd:
מודול זה בעצם אחראי על פעולת הכפל בין שתי הכניסות x ו-y.
