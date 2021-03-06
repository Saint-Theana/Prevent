.class final Lcom/android/server/policy/GlobalKeyManager;
.super Ljava/lang/Object;
.source "GlobalKeyManager.java"


# static fields
.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_KEY_CODE:Ljava/lang/String; = "keyCode"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final GLOBAL_KEY_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlobalKeyManager"

.field private static final TAG_GLOBAL_KEYS:Ljava/lang/String; = "global_keys"

.field private static final TAG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mKeyMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalKeyManager;->loadGlobalKeys(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method private loadGlobalKeys(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v7, 0x0

    .line 95
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 96
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v9, "global_keys"

    invoke-static {v7, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v9, "version"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v7, v10, v9, v11}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 98
    .local v8, "version":I
    const/4 v9, 0x1

    if-ne v9, v8, :cond_27

    .line 100
    :cond_1e
    :goto_1e
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 101
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_24} :catch_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_24} :catch_76
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_24} :catch_66
    .catchall {:try_start_1 .. :try_end_24} :catchall_86

    move-result-object v4

    .line 102
    .local v4, "element":Ljava/lang/String;
    if-nez v4, :cond_2d

    .line 123
    .end local v4    # "element":Ljava/lang/String;
    :cond_27
    if-eqz v7, :cond_2c

    .line 124
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 92
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "version":I
    :cond_2c
    :goto_2c
    return-void

    .line 105
    .restart local v4    # "element":Ljava/lang/String;
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "version":I
    :cond_2d
    :try_start_2d
    const-string/jumbo v9, "key"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 106
    const-string/jumbo v9, "keyCode"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "keyCodeName":Ljava/lang/String;
    const-string/jumbo v9, "component"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "componentName":Ljava/lang/String;
    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    .line 109
    .local v5, "keyCode":I
    if-eqz v5, :cond_1e

    .line 110
    iget-object v9, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_55
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_55} :catch_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_55} :catch_76
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_55} :catch_66
    .catchall {:try_start_2d .. :try_end_55} :catchall_86

    goto :goto_1e

    .line 116
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "keyCode":I
    .end local v6    # "keyCodeName":Ljava/lang/String;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "version":I
    :catch_56
    move-exception v1

    .line 117
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_57
    const-string/jumbo v9, "GlobalKeyManager"

    const-string/jumbo v10, "global keys file not found"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_86

    .line 123
    if-eqz v7, :cond_2c

    .line 124
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2c

    .line 120
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_66
    move-exception v2

    .line 121
    .local v2, "e":Ljava/io/IOException;
    :try_start_67
    const-string/jumbo v9, "GlobalKeyManager"

    const-string/jumbo v10, "I/O exception reading global keys file"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_86

    .line 123
    if-eqz v7, :cond_2c

    .line 124
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2c

    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    :catch_76
    move-exception v3

    .line 119
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_77
    const-string/jumbo v9, "GlobalKeyManager"

    const-string/jumbo v10, "XML parser exception reading global keys file"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_86

    .line 123
    if-eqz v7, :cond_2c

    .line 124
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2c

    .line 122
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_86
    move-exception v9

    .line 123
    if-eqz v7, :cond_8c

    .line 124
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 122
    :cond_8c
    throw v9
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 131
    .local v1, "numKeys":I
    if-nez v1, :cond_12

    .line 132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mKeyMapping.size=0"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    return-void

    .line 135
    :cond_12
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mKeyMapping={"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    if-ge v0, v1, :cond_4c

    .line 137
    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v2, "="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 143
    :cond_4c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "}"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_34

    .line 72
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 73
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_34

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.GLOBAL_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 76
    const/high16 v3, 0x10000000

    .line 74
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 77
    const-string/jumbo v3, "android.intent.extra.KEY_EVENT"

    .line 74
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x1

    return v2

    .line 82
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_34
    return v3
.end method

.method shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
