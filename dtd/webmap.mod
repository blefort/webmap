<?xml version="1.0" encoding="utf-8"?>
<!-- =============================================================


     ============================================================= -->

<!-- =============================================================
     Non-DITA Namespace declarations: 
     ============================================================= -->

<!-- ============================================================= -->
<!--                   ARCHITECTURE ENTITIES                       -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   SPECIALIZATION OF DECLARED ELEMENTS         -->
<!-- ============================================================= -->




<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->
 

<!ENTITY % webmap      "webmap"                                      >


<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->


<!ENTITY included-domains 
  ""
>


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % webmap.content 
 "(
    (%websitetitle;)?,
    (%page;)*
  )
 "
>
<!ENTITY % webmap.attributes
 "title 
            CDATA 
                      #IMPLIED
  id 
            ID 
                      #IMPLIED
  %conref-atts;
  anchorref 
            CDATA 
                      #IMPLIED
  outputclass 
            CDATA 
                      #IMPLIED
  %localization-atts;
  %topicref-atts;
  %select-atts;"
>
<!ELEMENT webmap       
  %webmap.content;                  
>
<!ATTLIST webmap
  %webmap.attributes;
  %arch-atts;
  domains    
    CDATA                
    "(map mapgroup-d) (map webmap-d) (map pubmeta-d) (map d4p_enumerationMap-d) &included-domains;"    
>



<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->


<!ATTLIST webmap      %global-atts;  class CDATA "- map/map webmap/webmap ">

<!-- ================== End webmap Declaration Set  ===================== -->