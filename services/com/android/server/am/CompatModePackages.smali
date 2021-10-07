.class public final Lcom/android/server/am/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field public static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field public static final COMPAT_FLAG_ENABLED:I = 0x2

.field private static final MSG_WRITE:I = 0x12c

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CONFIGURATION:Ljava/lang/String;

.field public static final UNSUPPORTED_ZOOM_FLAG_DONT_NOTIFY:I = 0x4


# instance fields
.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CompatModePackages;->TAG_CONFIGURATION:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .registers 19
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 85
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 86
    new-instance v12, Landroid/util/AtomicFile;

    new-instance v13, Ljava/io/File;

    const-string/jumbo v14, "packages-compat.xml"

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 87
    new-instance v12, Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v12, p0, v13}, Lcom/android/server/am/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/am/CompatModePackages;Landroid/os/Looper;)V

    iput-object v12, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    .line 89
    const/4 v6, 0x0

    .line 91
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_2b
    iget-object v12, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .line 92
    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 93
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 94
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 95
    .local v5, "eventType":I
    :goto_42
    const/4 v12, 0x2

    if-eq v5, v12, :cond_4d

    .line 96
    const/4 v12, 0x1

    if-eq v5, v12, :cond_4d

    .line 97
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_4b} :catch_c6
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_4b} :catch_b3
    .catchall {:try_start_2b .. :try_end_4b} :catchall_d7

    move-result v5

    goto :goto_42

    .line 99
    :cond_4d
    const/4 v12, 0x1

    if-ne v5, v12, :cond_58

    .line 134
    if-eqz v6, :cond_55

    .line 136
    :try_start_52
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 100
    :cond_55
    :goto_55
    return-void

    .line 137
    :catch_56
    move-exception v4

    .local v4, "e1":Ljava/io/IOException;
    goto :goto_55

    .line 103
    .end local v4    # "e1":Ljava/io/IOException;
    :cond_58
    :try_start_58
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "compat-packages"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a9

    .line 105
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 107
    :cond_69
    const/4 v12, 0x2

    if-ne v5, v12, :cond_a2

    .line 108
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 109
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a2

    .line 110
    const-string/jumbo v12, "pkg"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a2

    .line 111
    const-string/jumbo v12, "name"

    const/4 v13, 0x0

    invoke-interface {v9, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 112
    .local v10, "pkg":Ljava/lang/String;
    if-eqz v10, :cond_a2

    .line 113
    const-string/jumbo v12, "mode"

    const/4 v13, 0x0

    invoke-interface {v9, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_91} :catch_c6
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_91} :catch_b3
    .catchall {:try_start_58 .. :try_end_91} :catchall_d7

    move-result-object v7

    .line 114
    .local v7, "mode":Ljava/lang/String;
    const/4 v8, 0x0

    .line 115
    .local v8, "modeInt":I
    if-eqz v7, :cond_99

    .line 117
    :try_start_95
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_98} :catch_af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_95 .. :try_end_98} :catch_c6
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_b3
    .catchall {:try_start_95 .. :try_end_98} :catchall_d7

    move-result v8

    .line 121
    :cond_99
    :goto_99
    :try_start_99
    iget-object v12, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v7    # "mode":Ljava/lang/String;
    .end local v8    # "modeInt":I
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_a2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_a5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_99 .. :try_end_a5} :catch_c6
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a5} :catch_b3
    .catchall {:try_start_99 .. :try_end_a5} :catchall_d7

    move-result v5

    .line 127
    const/4 v12, 0x1

    if-ne v5, v12, :cond_69

    .line 134
    :cond_a9
    if-eqz v6, :cond_ae

    .line 136
    :try_start_ab
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_b1

    .line 84
    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_ae
    :goto_ae
    return-void

    .line 118
    .restart local v5    # "eventType":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "mode":Ljava/lang/String;
    .restart local v8    # "modeInt":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "tagName":Ljava/lang/String;
    :catch_af
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_99

    .line 137
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "mode":Ljava/lang/String;
    .end local v8    # "modeInt":I
    .end local v10    # "pkg":Ljava/lang/String;
    :catch_b1
    move-exception v4

    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_ae

    .line 131
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_b3
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    if-eqz v6, :cond_be

    :try_start_b6
    sget-object v12, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Error reading compat-packages"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_d7

    .line 134
    :cond_be
    if-eqz v6, :cond_ae

    .line 136
    :try_start_c0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_ae

    .line 137
    :catch_c4
    move-exception v4

    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_ae

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_c6
    move-exception v3

    .line 130
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c7
    sget-object v12, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Error reading compat-packages"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_d7

    .line 134
    if-eqz v6, :cond_ae

    .line 136
    :try_start_d1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d5

    goto :goto_ae

    .line 137
    :catch_d5
    move-exception v4

    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_ae

    .line 133
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_d7
    move-exception v12

    .line 134
    if-eqz v6, :cond_dd

    .line 136
    :try_start_da
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    .line 133
    :cond_dd
    :goto_dd
    throw v12

    .line 137
    :catch_de
    move-exception v4

    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_dd
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 149
    .local v0, "flags":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private removePackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 165
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    .line 163
    :cond_10
    return-void
.end method

.method private scheduleWrite()V
    .registers 5

    .prologue
    const/16 v2, 0x12c

    .line 194
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 195
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 196
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 193
    return-void
.end method

.method private setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .registers 16
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    .line 315
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 317
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v2

    .line 320
    .local v2, "curFlags":I
    packed-switch p2, :pswitch_data_f2

    .line 331
    sget-object v10, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unknown screen compat mode req #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "; ignoring"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 322
    :pswitch_2a
    const/4 v4, 0x0

    .line 335
    .local v4, "enable":Z
    :goto_2b
    move v6, v2

    .line 336
    .local v6, "newFlags":I
    if-eqz v4, :cond_ce

    .line 337
    or-int/lit8 v6, v2, 0x2

    .line 342
    :goto_30
    invoke-virtual {p0, p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 343
    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 344
    sget-object v10, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Ignoring compat mode change of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 345
    const-string/jumbo v12, "; compatibility never needed"

    .line 344
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v6, 0x0

    .line 348
    :cond_5b
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v10

    if-eqz v10, :cond_82

    .line 349
    sget-object v10, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Ignoring compat mode change of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 350
    const-string/jumbo v12, "; compatibility always needed"

    .line 349
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v6, 0x0

    .line 354
    :cond_82
    if-eq v6, v2, :cond_f0

    .line 355
    if-eqz v6, :cond_d2

    .line 356
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :goto_8f
    invoke-virtual {p0, p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 364
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    .line 366
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 367
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStack;->restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 370
    .local v9, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .local v5, "i":I
    :goto_aa
    if-ltz v5, :cond_e4

    .line 371
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 372
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d8

    .line 370
    :cond_be
    :goto_be
    add-int/lit8 v5, v5, -0x1

    goto :goto_aa

    .line 325
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v4    # "enable":Z
    .end local v5    # "i":I
    .end local v6    # "newFlags":I
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "starting":Lcom/android/server/am/ActivityRecord;
    :pswitch_c1
    const/4 v4, 0x1

    .line 326
    .restart local v4    # "enable":Z
    goto/16 :goto_2b

    .line 328
    .end local v4    # "enable":Z
    :pswitch_c4
    and-int/lit8 v10, v2, 0x2

    if-nez v10, :cond_cb

    const/4 v4, 0x1

    .restart local v4    # "enable":Z
    goto/16 :goto_2b

    .end local v4    # "enable":Z
    :cond_cb
    const/4 v4, 0x0

    .restart local v4    # "enable":Z
    goto/16 :goto_2b

    .line 339
    .restart local v6    # "newFlags":I
    :cond_ce
    and-int/lit8 v6, v2, -0x3

    goto/16 :goto_30

    .line 358
    .restart local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_d2
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    .line 376
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "i":I
    .restart local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v9    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_d8
    :try_start_d8
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_be

    .line 379
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v10, v7, v1}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e1} :catch_e2

    goto :goto_be

    .line 381
    :catch_e2
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_be

    .line 385
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e4
    if-eqz v9, :cond_f0

    .line 386
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 389
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 314
    .end local v5    # "i":I
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_f0
    return-void

    .line 320
    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_c1
        :pswitch_c4
    .end packed-switch
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    .line 200
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 201
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 202
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1a

    const/4 v1, 0x1

    .line 200
    :cond_1a
    invoke-direct {v0, p1, v2, v3, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 204
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    return-object v0
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .registers 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_25

    const/4 v0, 0x1

    .line 209
    .local v0, "enabled":Z
    :goto_c
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    .line 210
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 211
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 209
    invoke-direct {v1, p1, v3, v4, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 212
    .local v1, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 213
    const/4 v2, -0x2

    return v2

    .line 208
    .end local v0    # "enabled":Z
    .end local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_c

    .line 215
    .restart local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_27
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 216
    const/4 v2, -0x1

    return v2

    .line 218
    :cond_2f
    if-eqz v0, :cond_32

    const/4 v2, 0x1

    :cond_32
    return v2
.end method

.method public getFrontActivityAskCompatModeLocked()Z
    .registers 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 224
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_e

    .line 225
    const/4 v1, 0x0

    return v1

    .line 227
    :cond_e
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getFrontActivityScreenCompatModeLocked()I
    .registers 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 274
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_e

    .line 275
    const/4 v1, -0x3

    return v1

    .line 277
    :cond_e
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    return v1
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public getPackageNotifyUnsupportedZoomLocked(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_14

    move-result-object v0

    .line 295
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_b
    if-nez v0, :cond_f

    .line 296
    const/4 v2, -0x3

    return v2

    .line 298
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    return v2

    .line 293
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_14
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method

.method public getPackages()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updated"    # Z

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, p1, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_38

    move-result-object v0

    .line 176
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_b
    if-nez v0, :cond_e

    .line 177
    return-void

    .line 179
    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 180
    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v4

    if-nez v4, :cond_36

    .line 181
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v3, 0x0

    .line 183
    .local v3, "mayCompat":Z
    :goto_1f
    if-eqz p2, :cond_33

    .line 186
    if-nez v3, :cond_33

    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 187
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    .line 170
    :cond_33
    return-void

    .line 181
    .end local v3    # "mayCompat":Z
    :cond_34
    const/4 v3, 0x1

    .restart local v3    # "mayCompat":Z
    goto :goto_1f

    .line 180
    .end local v3    # "mayCompat":Z
    :cond_36
    const/4 v3, 0x0

    .restart local v3    # "mayCompat":Z
    goto :goto_1f

    .line 174
    .end local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v3    # "mayCompat":Z
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_38
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method

.method public handlePackageDataClearedLocked(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public handlePackageUninstalledLocked(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method saveCompatModes()V
    .registers 21

    .prologue
    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 397
    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_121

    .local v13, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v18

    .line 396
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 400
    const/4 v7, 0x0

    .line 403
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    .line 404
    .local v7, "fos":Ljava/io/FileOutputStream;
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 405
    .local v11, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v17 .. v17}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 406
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 407
    const-string/jumbo v17, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 408
    const-string/jumbo v17, "compat-packages"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 411
    .local v14, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 412
    .local v15, "screenLayout":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v16, v0

    .line 413
    .local v16, "smallestScreenWidthDp":I
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 414
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_8b
    :goto_8b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_129

    .line 415
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 416
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 417
    .local v12, "pkg":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_a6} :catch_106

    move-result v10

    .line 418
    .local v10, "mode":I
    if-eqz v10, :cond_8b

    .line 421
    const/4 v3, 0x0

    .line 423
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v17, 0x0

    const/16 v18, 0x0

    :try_start_ae
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v12, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_b5} :catch_127
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b5} :catch_106

    move-result-object v3

    .line 426
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_b6
    if-eqz v3, :cond_8b

    .line 429
    :try_start_b8
    new-instance v8, Landroid/content/res/CompatibilityInfo;

    .line 430
    const/16 v17, 0x0

    .line 429
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v8, v3, v15, v0, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 431
    .local v8, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v17

    if-nez v17, :cond_8b

    .line 434
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v17

    if-nez v17, :cond_8b

    .line 437
    const-string/jumbo v17, "pkg"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    const-string/jumbo v17, "name"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const-string/jumbo v17, "mode"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const-string/jumbo v17, "pkg"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_105} :catch_106

    goto :goto_8b

    .line 447
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "info":Landroid/content/res/CompatibilityInfo;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v10    # "mode":I
    .end local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    .end local v15    # "screenLayout":I
    .end local v16    # "smallestScreenWidthDp":I
    :catch_106
    move-exception v5

    .line 448
    .local v5, "e1":Ljava/io/IOException;
    sget-object v17, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "Error writing compat packages"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    if-eqz v7, :cond_120

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 394
    .end local v5    # "e1":Ljava/io/IOException;
    :cond_120
    :goto_120
    return-void

    .line 396
    .end local v13    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_121
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    .line 424
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v10    # "mode":I
    .restart local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v15    # "screenLayout":I
    .restart local v16    # "smallestScreenWidthDp":I
    :catch_127
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_b6

    .line 443
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "mode":I
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_129
    :try_start_129
    const-string/jumbo v17, "compat-packages"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_143} :catch_106

    goto :goto_120
.end method

.method public setFrontActivityAskCompatModeLocked(Z)V
    .registers 4
    .param p1, "ask"    # Z

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 240
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_11

    .line 241
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 238
    :cond_11
    return-void
.end method

.method public setFrontActivityScreenCompatModeLocked(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 282
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_15

    .line 283
    sget-object v1, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 286
    :cond_15
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 280
    return-void
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .line 247
    .local v0, "curFlags":I
    if-eqz p2, :cond_19

    and-int/lit8 v1, v0, -0x2

    .line 248
    .local v1, "newFlags":I
    :goto_8
    if-eq v0, v1, :cond_18

    .line 249
    if-eqz v1, :cond_1c

    .line 250
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :goto_15
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    .line 245
    :cond_18
    return-void

    .line 247
    .end local v1    # "newFlags":I
    :cond_19
    or-int/lit8 v1, v0, 0x1

    goto :goto_8

    .line 252
    .restart local v1    # "newFlags":I
    :cond_1c
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15
.end method

.method public setPackageNotifyUnsupportedZoomLocked(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, "curFlags":I
    if-eqz p2, :cond_19

    and-int/lit8 v1, v0, -0x5

    .line 262
    .local v1, "newFlags":I
    :goto_8
    if-eq v0, v1, :cond_18

    .line 263
    if-eqz v1, :cond_1c

    .line 264
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :goto_15
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    .line 258
    :cond_18
    return-void

    .line 261
    .end local v1    # "newFlags":I
    :cond_19
    or-int/lit8 v1, v0, 0x4

    goto :goto_8

    .line 266
    .restart local v1    # "newFlags":I
    :cond_1c
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_2b

    move-result-object v0

    .line 307
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_b
    if-nez v0, :cond_27

    .line 308
    sget-object v2, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void

    .line 311
    :cond_27
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 301
    return-void

    .line 305
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_2b
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method
