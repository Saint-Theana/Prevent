.class Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodFileManager"
.end annotation


# static fields
.field private static final ADDITIONAL_SUBTYPES_FILE_NAME:Ljava/lang/String; = "subtypes.xml"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_IME_SUBTYPE_EXTRA_VALUE:Ljava/lang/String; = "imeSubtypeExtraValue"

.field private static final ATTR_IME_SUBTYPE_ID:Ljava/lang/String; = "subtypeId"

.field private static final ATTR_IME_SUBTYPE_LANGUAGE_TAG:Ljava/lang/String; = "languageTag"

.field private static final ATTR_IME_SUBTYPE_LOCALE:Ljava/lang/String; = "imeSubtypeLocale"

.field private static final ATTR_IME_SUBTYPE_MODE:Ljava/lang/String; = "imeSubtypeMode"

.field private static final ATTR_IS_ASCII_CAPABLE:Ljava/lang/String; = "isAsciiCapable"

.field private static final ATTR_IS_AUXILIARY:Ljava/lang/String; = "isAuxiliary"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final INPUT_METHOD_PATH:Ljava/lang/String; = "inputmethod"

.field private static final NODE_IMI:Ljava/lang/String; = "imi"

.field private static final NODE_SUBTYPE:Ljava/lang/String; = "subtype"

.field private static final NODE_SUBTYPES:Ljava/lang/String; = "subtypes"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "system"


# instance fields
.field private final mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

.field private final mAdditionalSubtypesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V
    .registers 2
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->deleteAllInputMethodSubtypes(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;I)V
    .registers 9
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3742
    .local p1, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3741
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3740
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    .line 3743
    if-nez p1, :cond_15

    .line 3744
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "methodMap is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3746
    :cond_15
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    .line 3747
    if-nez p2, :cond_56

    .line 3748
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3750
    .local v2, "systemDir":Ljava/io/File;
    :goto_25
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "inputmethod"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3751
    .local v0, "inputMethodDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3754
    :cond_39
    :goto_39
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "subtypes.xml"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3755
    .local v1, "subtypeFile":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    .line 3756
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7a

    .line 3759
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    .line 3758
    invoke-static {v3, v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    .line 3742
    :goto_55
    return-void

    .line 3749
    .end local v0    # "inputMethodDir":Ljava/io/File;
    .end local v1    # "subtypeFile":Ljava/io/File;
    .end local v2    # "systemDir":Ljava/io/File;
    :cond_56
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .restart local v2    # "systemDir":Ljava/io/File;
    goto :goto_25

    .line 3752
    .restart local v0    # "inputMethodDir":Ljava/io/File;
    :cond_5b
    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t create dir.: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 3762
    .restart local v1    # "subtypeFile":Ljava/io/File;
    :cond_7a
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    .line 3761
    invoke-static {v3, v4}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V

    goto :goto_55
.end method

.method private deleteAllInputMethodSubtypes(Ljava/lang/String;)V
    .registers 6
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 3767
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3768
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3770
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    .line 3769
    invoke-static {v0, v2, v3}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 3766
    return-void

    .line 3767
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V
    .registers 29
    .param p1, "subtypesFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3857
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    .line 3858
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->clear()V

    .line 3859
    const/16 v23, 0x0

    const/4 v8, 0x0

    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8

    .line 3860
    .local v8, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 3861
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v22, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v22 .. v22}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3862
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v21

    .line 3864
    .local v21, "type":I
    :cond_24
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_38

    .line 3865
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_24

    .line 3866
    :cond_38
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3867
    .local v7, "firstNodeName":Ljava/lang/String;
    const-string/jumbo v22, "subtypes"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_74

    .line 3868
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v24, "Xml doesn\'t start with subtypes"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_54} :catch_54
    .catchall {:try_start_b .. :try_end_54} :catchall_d3

    .line 3927
    .end local v7    # "firstNodeName":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catch_54
    move-exception v22

    :try_start_55
    throw v22
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v23

    move-object/from16 v26, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v26

    :goto_5d
    if-eqz v8, :cond_62

    :try_start_5f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_62} :catch_21f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_62} :catch_65
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_65
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_62} :catch_65

    :cond_62
    :goto_62
    if-eqz v23, :cond_231

    :try_start_64
    throw v23
    :try_end_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_65} :catch_65
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_65} :catch_65
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_65} :catch_65

    .line 3924
    :catch_65
    move-exception v6

    .line 3925
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v22, "InputMethodManagerService"

    const-string/jumbo v23, "Error reading subtypes"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3926
    return-void

    .line 3870
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "firstNodeName":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_74
    :try_start_74
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 3871
    .local v5, "depth":I
    const/4 v4, 0x0

    .line 3872
    .local v4, "currentImiId":Ljava/lang/String;
    const/16 v20, 0x0

    .line 3873
    .end local v4    # "currentImiId":Ljava/lang/String;
    :cond_7b
    :goto_7b
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8f

    .line 3874
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v5, :cond_215

    :cond_8f
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_215

    .line 3875
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7b

    .line 3877
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 3878
    .local v17, "nodeName":Ljava/lang/String;
    const-string/jumbo v22, "imi"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e2

    .line 3879
    const-string/jumbo v22, "id"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3880
    .local v4, "currentImiId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_d5

    .line 3881
    const-string/jumbo v22, "InputMethodManagerService"

    const-string/jumbo v24, "Invalid imi id found in subtypes.xml"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 3927
    .end local v4    # "currentImiId":Ljava/lang/String;
    .end local v5    # "depth":I
    .end local v7    # "firstNodeName":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "nodeName":Ljava/lang/String;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catchall_d3
    move-exception v22

    goto :goto_5d

    .line 3884
    .restart local v4    # "currentImiId":Ljava/lang/String;
    .restart local v5    # "depth":I
    .restart local v7    # "firstNodeName":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "nodeName":Ljava/lang/String;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_d5
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 3885
    .local v20, "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 3886
    .end local v4    # "currentImiId":Ljava/lang/String;
    .end local v20    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_e2
    const-string/jumbo v22, "subtype"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7b

    .line 3887
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_f7

    if-nez v20, :cond_119

    .line 3888
    :cond_f7
    const-string/jumbo v22, "InputMethodManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "IME uninstalled or not valid.: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7b

    .line 3892
    :cond_119
    const-string/jumbo v22, "icon"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3891
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3894
    .local v9, "icon":I
    const-string/jumbo v22, "label"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3893
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3896
    .local v15, "label":I
    const-string/jumbo v22, "imeSubtypeLocale"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3898
    .local v11, "imeSubtypeLocale":Ljava/lang/String;
    const-string/jumbo v22, "languageTag"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3900
    .local v16, "languageTag":Ljava/lang/String;
    const-string/jumbo v22, "imeSubtypeMode"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3902
    .local v12, "imeSubtypeMode":Ljava/lang/String;
    const-string/jumbo v22, "imeSubtypeExtraValue"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3903
    .local v10, "imeSubtypeExtraValue":Ljava/lang/String;
    const-string/jumbo v22, "1"

    .line 3904
    const-string/jumbo v24, "isAuxiliary"

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3903
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 3905
    .local v14, "isAuxiliary":Z
    const-string/jumbo v22, "1"

    .line 3906
    const-string/jumbo v24, "isAsciiCapable"

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3905
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 3907
    .local v13, "isAsciiCapable":Z
    new-instance v22, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v3

    .line 3917
    .local v3, "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    const-string/jumbo v22, "subtypeId"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3918
    .local v19, "subtypeIdString":Ljava/lang/String;
    if-eqz v19, :cond_208

    .line 3919
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 3921
    :cond_208
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_213
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_213} :catch_54
    .catchall {:try_start_74 .. :try_end_213} :catchall_d3

    goto/16 :goto_7b

    .line 3927
    .end local v3    # "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .end local v9    # "icon":I
    .end local v10    # "imeSubtypeExtraValue":Ljava/lang/String;
    .end local v11    # "imeSubtypeLocale":Ljava/lang/String;
    .end local v12    # "imeSubtypeMode":Ljava/lang/String;
    .end local v13    # "isAsciiCapable":Z
    .end local v14    # "isAuxiliary":Z
    .end local v15    # "label":I
    .end local v16    # "languageTag":Ljava/lang/String;
    .end local v17    # "nodeName":Ljava/lang/String;
    .end local v19    # "subtypeIdString":Ljava/lang/String;
    :cond_215
    if-eqz v8, :cond_21a

    :try_start_217
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_21a
    .catch Ljava/lang/Throwable; {:try_start_217 .. :try_end_21a} :catch_21d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_217 .. :try_end_21a} :catch_65
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_21a} :catch_65
    .catch Ljava/lang/NumberFormatException; {:try_start_217 .. :try_end_21a} :catch_65

    :cond_21a
    :goto_21a
    if-eqz v23, :cond_232

    :try_start_21c
    throw v23

    :catch_21d
    move-exception v23

    goto :goto_21a

    .end local v5    # "depth":I
    .end local v7    # "firstNodeName":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catch_21f
    move-exception v24

    if-nez v23, :cond_226

    move-object/from16 v23, v24

    goto/16 :goto_62

    :cond_226
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_62

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_62

    :cond_231
    throw v22
    :try_end_232
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21c .. :try_end_232} :catch_65
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_232} :catch_65
    .catch Ljava/lang/NumberFormatException; {:try_start_21c .. :try_end_232} :catch_65

    .line 3856
    .restart local v5    # "depth":I
    .restart local v7    # "firstNodeName":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_232
    return-void
.end method

.method private static writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    .registers 16
    .param p1, "subtypesFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3804
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p2, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p2, :cond_105

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_105

    const/4 v6, 0x1

    .line 3805
    .local v6, "isSetMethodMap":Z
    :goto_9
    const/4 v2, 0x0

    .line 3807
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 3808
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3809
    .local v7, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3810
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3811
    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3812
    const-string/jumbo v10, "subtypes"

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3813
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "imiId$iterator":Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_141

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3814
    .local v4, "imiId":Ljava/lang/String;
    if-eqz v6, :cond_4f

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_108

    .line 3818
    :cond_4f
    const-string/jumbo v10, "imi"

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3819
    const-string/jumbo v10, "id"

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3820
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 3821
    .local v9, "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 3822
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_68
    if-ge v3, v0, :cond_138

    .line 3823
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3824
    .local v8, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string/jumbo v10, "subtype"

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3825
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hasSubtypeId()Z

    move-result v10

    if-eqz v10, :cond_8c

    .line 3826
    const-string/jumbo v10, "subtypeId"

    .line 3827
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getSubtypeId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 3826
    const/4 v12, 0x0

    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3829
    :cond_8c
    const-string/jumbo v10, "icon"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3830
    const-string/jumbo v10, "label"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3831
    const-string/jumbo v10, "imeSubtypeLocale"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3832
    const-string/jumbo v10, "languageTag"

    .line 3833
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v11

    .line 3832
    const/4 v12, 0x0

    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3834
    const-string/jumbo v10, "imeSubtypeMode"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3835
    const-string/jumbo v10, "imeSubtypeExtraValue"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3836
    const-string/jumbo v11, "isAuxiliary"

    .line 3837
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v10

    if-eqz v10, :cond_134

    const/4 v10, 0x1

    :goto_e0
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 3836
    const/4 v12, 0x0

    invoke-interface {v7, v12, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3838
    const-string/jumbo v11, "isAsciiCapable"

    .line 3839
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v10

    if-eqz v10, :cond_136

    const/4 v10, 0x1

    :goto_f2
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 3838
    const/4 v12, 0x0

    invoke-interface {v7, v12, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3840
    const-string/jumbo v10, "subtype"

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3822
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_68

    .line 3804
    .end local v0    # "N":I
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v5    # "imiId$iterator":Ljava/util/Iterator;
    .end local v6    # "isSetMethodMap":Z
    .end local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v9    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_105
    const/4 v6, 0x0

    .restart local v6    # "isSetMethodMap":Z
    goto/16 :goto_9

    .line 3815
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "imiId":Ljava/lang/String;
    .restart local v5    # "imiId$iterator":Ljava/util/Iterator;
    .restart local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_108
    const-string/jumbo v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IME uninstalled or not valid.: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_122} :catch_124

    goto/16 :goto_3b

    .line 3847
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v5    # "imiId$iterator":Ljava/util/Iterator;
    .end local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_124
    move-exception v1

    .line 3848
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v10, "InputMethodManagerService"

    const-string/jumbo v11, "Error writing subtypes"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3849
    if-eqz v2, :cond_133

    .line 3850
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3802
    .end local v1    # "e":Ljava/io/IOException;
    :cond_133
    :goto_133
    return-void

    .line 3837
    .restart local v0    # "N":I
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "i":I
    .restart local v4    # "imiId":Ljava/lang/String;
    .restart local v5    # "imiId$iterator":Ljava/util/Iterator;
    .restart local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v9    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_134
    const/4 v10, 0x0

    goto :goto_e0

    .line 3839
    :cond_136
    const/4 v10, 0x0

    goto :goto_f2

    .line 3842
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_138
    :try_start_138
    const-string/jumbo v10, "imi"

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3b

    .line 3844
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v9    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_141
    const-string/jumbo v10, "subtypes"

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3845
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3846
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_14e} :catch_124

    goto :goto_133
.end method


# virtual methods
.method public addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 11
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "additionalSubtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 3776
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3777
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3778
    .local v3, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v0, p2

    .line 3779
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_4b

    .line 3780
    aget-object v2, p2, v1

    .line 3781
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 3782
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3779
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3784
    :cond_1a
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Duplicated subtype definition found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3785
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 3784
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3785
    const-string/jumbo v7, ", "

    .line 3784
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3785
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    .line 3784
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_48

    goto :goto_17

    .line 3776
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_48
    move-exception v4

    monitor-exit v5

    throw v4

    .line 3788
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4b
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3790
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    .line 3789
    invoke-static {v4, v6, v7}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    :try_end_5d
    .catchall {:try_start_4b .. :try_end_5d} :catchall_48

    monitor-exit v5

    .line 3775
    return-void
.end method

.method public getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3795
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3796
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 3795
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
