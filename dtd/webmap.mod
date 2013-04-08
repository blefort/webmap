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

<!-- webmap -->
<!ENTITY % webmap.content 
 "(
    (%websitetitle;)?,
    (%webmeta;)?,
    (%header;)?,
    (%nav;)?,
    (%homepage;),
    (%pageset;)*,
    (%page;)*,
    (%footer;)?
    
  )
 "
>
<!ENTITY % webmap.attributes
  " id                  ID          #IMPLIED
    %conref-atts;
    anchorref           CDATA       #IMPLIED
    outputclass         CDATA       #IMPLIED
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


<!-- template-info -->
<!ENTITY % template.content
    "(
    	(%header;)?, (%nav;)?, (%footer;)?
    )"
>
<!ENTITY % template.attributes
"   id                  ID          #IMPLIED
    %conref-atts;
    anchorref           CDATA       #IMPLIED
    outputclass         CDATA       #IMPLIED
    %localization-atts;
    %select-atts;"
>

<!ELEMENT template    %template.content;>
<!ATTLIST template    %template.attributes;>

<!-- html5 nav element -->
<!ENTITY % nav.content
    "
    ((%topicmeta;)?,(%topicref;)*)  
    "
>
<!ENTITY % nav.attributes
"   id                  ID          #IMPLIED
    destinationuri                 CDATA      #IMPLIED
    %conref-atts;
    anchorref           CDATA       #IMPLIED
    outputclass         CDATA       #IMPLIED
    %localization-atts;
    %select-atts;"
>

<!ELEMENT nav   %nav.content;>
<!ATTLIST nav   %nav.attributes;>


<!-- html5 header element -->
<!ENTITY % header.content
    "
    ( (%topicmeta;)?,
      (%topicref;)*    
    )  
    "
>
<!ENTITY % header.attributes
"   id                  ID          #IMPLIED
    destinationuri                 CDATA      #IMPLIED
    %conref-atts;
    anchorref           CDATA       #IMPLIED
    outputclass         CDATA       #IMPLIED
    %localization-atts;
    %select-atts;"
>

<!ELEMENT header   %header.content;>
<!ATTLIST header   %header.attributes;>

<!-- html5 footer element -->
<!ENTITY % footer.content
    "
    ((%topicmeta;)?,
    (%topicref;)*)  
    "
>
<!ENTITY % footer.attributes
"   id                  ID          #IMPLIED
    destinationuri                 CDATA      #IMPLIED
    %conref-atts;
    anchorref           CDATA       #IMPLIED
    outputclass         CDATA       #IMPLIED
    %localization-atts;
    %select-atts;"
>

<!ELEMENT footer   %footer.content;>
<!ATTLIST footer   %footer.attributes;>


<!-- page -->
<!ENTITY % page.content
    "
     ((%webmeta;)?, (%webpagetitle;)?, (%widget;)?, (%topicref;)*)
    "
>
<!ENTITY % page.attributes
"   id                  ID          #IMPLIED
    destination         CDATA      #IMPLIED
    %conref-atts;
    anchorref           CDATA       #IMPLIED
    outputclass         CDATA       #IMPLIED
    %localization-atts;
    %topicref-atts;
    %select-atts;"
>
<!ENTITY % homepage.attributes
"   id                  ID          #IMPLIED
    %conref-atts;
    anchorref           CDATA       #IMPLIED
    outputclass         CDATA       #IMPLIED
    %localization-atts;
    %topicref-atts;
    %select-atts;"
>

<!ELEMENT page    %page.content;>
<!ATTLIST page    %page.attributes;>
<!ELEMENT homepage    %page.content;>
<!ATTLIST homepage    %homepage.attributes;>


<!-- pageset -->
<!ENTITY % pageset.content
 	"(
 	  (%webmeta;)?, 
 	  ((%topicref;)* |
      (%page;)*)
    )"
>

<!ENTITY % pageset.attributes
            "%id-atts;
              %localization-atts;
              base 
                        CDATA 
                                  #IMPLIED
              %base-attribute-extensions;
              outputclass
                        CDATA 
                                  #IMPLIED"
>

<!ELEMENT pageset    %pageset.content;>
<!ATTLIST pageset    %pageset.attributes;>


<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->


<!ATTLIST footer      %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/footer ">
<!ATTLIST homepage    %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/page webmap-d/homepage ">
<!ATTLIST header      %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/header ">
<!ATTLIST nav         %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/nav ">
<!ATTLIST pageset     %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/pageset ">

<!ATTLIST page        %global-atts; class CDATA "+ map/topicref mapgroup-d/topichead webmap-d/page ">

<!ATTLIST webmap      %global-atts; class CDATA "- map/map webmap/webmap ">
<!-- ================== End webmap Declaration Set  ===================== -->