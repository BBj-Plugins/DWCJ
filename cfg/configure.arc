//#charset: UTF-8

VERSION "4.0"

WINDOW 101 "Configure DWCJ Deployments" 200 200 796 436
BEGIN
    EVENTMASK 0
    NAME "Window101"
    STATICTEXT 100, "Configurations", 22, 33, 133, 25
    BEGIN
        NAME "LBL_CONFIGS"
        NOT WORDWRAP
    END

    LISTBOX 102, "", 22, 60, 159, 277
    BEGIN
        MULTISELECT
        NAME "LB_CONFIGS"
        NOT DRAGENABLED
    END

    BUTTON 103, "+", 127, 344, 25, 25
    BEGIN
        NAME "BTN_CONFIGS_ADD"
    END

    BUTTON 104, "-", 156, 344, 25, 25
    BEGIN
        NAME "BTN_CONFIGS_DEL"
    END

    STATICTEXT 105, "Edit Configuration", 260, 33, 133, 25
    BEGIN
        NAME "LBL_EDIT"
        NOT WORDWRAP
    END

    STATICTEXT 106, "Name:", 260, 67, 81, 25
    BEGIN
        NAME "LBL_NAME"
        NOT WORDWRAP
    END

    STATICTEXT 108, "DWCJ Projects:", 260, 101, 81, 25
    BEGIN
        NAME "LBL_DWCJ_PROJECTS"
        NOT WORDWRAP
    END

    LISTBOX 109, "", 364, 101, 399, 193
    BEGIN
        MULTISELECT
        NAME "LB_CFG_CPENTRIES"
        NOT DRAGENABLED
    END

    BUTTON 110, "Add JAR", 484, 300, 124, 25
    BEGIN
        NAME "BTN_CFG_ADDJAR"
    END

    BUTTON 111, "Add Class Folder", 603, 300, 124, 25
    BEGIN
        NAME "BTN_CFG_ADDCLASSFOLDER"
    END

    BUTTON 112, "Save", 619, 387, 144, 25
    BEGIN
        DISABLED
        INVISIBLE
        NAME "BTN_SAVE"
    END

    BUTTON 113, "-", 738, 300, 25, 25
    BEGIN
        NAME "BTN_CFG_CPENTRY_DEL"
    END

    BUTTON 114, "Launch", 691, 67, 72, 25
    BEGIN
        NAME "BTN_CFG_LAUNCH"
    END

    STATICTEXT 115, "Classname:", 260, 334, 81, 25
    BEGIN
        NAME "LBL_CLASSNAME"
        NOT WORDWRAP
    END

    EDIT 116, "", 364, 334, 399, 25
    BEGIN
        MAXLENGTH 32767
        NAME "ED_CLASSNAME"
        PLACEHOLDER "the fully qualified Class name extending org.dwcj.App"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    BUTTON 117, "New Project", 364, 300, 124, 25
    BEGIN
        NAME "BTN_CFG_ADDPROJECT"
    END

    INPUTE 107, "", 364, 67, 322, 25
    BEGIN
        MASK "zzzzzzzzzzzzzzzzzzzzzzzzz"
        NAME "ED_CFG_NAME"
        PADCHARACTER 32
        PLACEHOLDER "new configuration name"
        SPELLCHECKED
        NOT DRAGENABLED
    END

END

WINDOW 100 "Create new DWCJava Project..." 50 50 899 436
BEGIN
    ENTERASTAB
    EVENTMASK 0
    ICON ""
    KEYBOARDNAVIGATION
    NAME "Window100"
    STATICTEXT 101, "Project Template:", 22, 22, 129, 25
    BEGIN
        NAME "LBL_PROJECT_TEMPLATE"
        NOT WORDWRAP
    END

    LISTBOX 102, "", 22, 53, 195, 261
    BEGIN
        MULTISELECT
        NAME "LB_PROJECT_TEMPLATES"
        NOT DRAGENABLED
    END

    BUTTON 103, "Visit Template Home", 75, 396, 145, 25
    BEGIN
        NAME "BTN_TEMPLATE_HOME"
    END

    STATICTEXT 104, "Project directory:", 293, 22, 129, 25
    BEGIN
        NAME "LBL_PROJECT_DIRECTORY"
        NOT WORDWRAP
    END

    FILECHOOSER 105, "/Users/beff", 294, 63, 608, 372
    BEGIN
        NAME "DIR_SELECTOR"
        NOT OPAQUE
        DIRECTORY "/Users/beff"
        NOT ACCEPTALL
        FILESELMODE 1
        APPROVETEXT "Select"
        FILTER "Java Projects" "*.*"
        INITIALFILTER "Java Projects"
    END

    CUSTOMEDIT 106, "\n", 22, 326, 195, 60
    BEGIN
        LIMIT 32767
        MAXLENGTH 32767
        NAME "CED_DESC"
        NOT OPAQUE
        READONLY
        SPELLCHECKED
        NOT DRAGENABLED
    END

END

