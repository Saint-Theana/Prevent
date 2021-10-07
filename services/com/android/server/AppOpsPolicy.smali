.class public Lcom/android/server/AppOpsPolicy;
.super Ljava/lang/Object;
.source "AppOpsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsPolicy$PolicyOp;,
        Lcom/android/server/AppOpsPolicy$PolicyPkg;
    }
.end annotation


# static fields
.field public static final CONTROL_NOSHOW:I = 0x1

.field public static final CONTROL_SHOW:I = 0x0

.field public static final CONTROL_UNKNOWN:I = 0x2

.field static final DEBUG:Z = false

.field public static final RATE_LIMIT_OPS_TOTAL_PKG_COUNT:I = 0x4

.field public static final RATE_LIMIT_OP_COUNT:I = 0x3

.field public static final RATE_LIMIT_OP_DELAY_CEILING:I = 0xa

.field static final TAG:Ljava/lang/String; = "AppOpsPolicy"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mFile:Ljava/io/File;

.field mPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsPolicy$PolicyPkg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    .line 81
    iput-object p1, p0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    .line 82
    iput-object p2, p0, Lcom/android/server/AppOpsPolicy;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private getAppType(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "appType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 336
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_24

    .line 338
    :try_start_6
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 339
    const/4 v4, 0x0

    .line 338
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_10} :catch_1d

    move-result-object v0

    .line 343
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_11
    if-eqz v0, :cond_1c

    .line 344
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_20

    .line 345
    const-string/jumbo v1, "system-app"

    .line 353
    .end local v1    # "appType":Ljava/lang/String;
    :cond_1c
    :goto_1c
    return-object v1

    .line 340
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "appType":Ljava/lang/String;
    :catch_1d
    move-exception v2

    .line 341
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_11

    .line 347
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_20
    const-string/jumbo v1, "user-app"

    .local v1, "appType":Ljava/lang/String;
    goto :goto_1c

    .line 351
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "appType":Ljava/lang/String;
    :cond_24
    const-string/jumbo v3, "AppOpsPolicy"

    const-string/jumbo v4, "Context is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method private readApplicationPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 218
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 220
    .local v0, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4c

    .line 221
    if-ne v2, v6, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4c

    .line 222
    :cond_14
    if-eq v2, v6, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 225
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsPolicy;->readPkgPolicy(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 229
    :cond_2a
    const-string/jumbo v3, "AppOpsPolicy"

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown element under <application>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 231
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 230
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 217
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_4c
    return-void
.end method

.method private readDefaultPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 194
    const-string/jumbo v3, "user-app"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 195
    const-string/jumbo v3, "system-app"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 199
    :cond_14
    const-string/jumbo v3, "permission"

    .line 198
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->stringToMode(Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "mode":I
    const-string/jumbo v3, "show"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/AppOpsPolicy;->stringToControl(Ljava/lang/String;)I

    move-result v2

    .line 201
    .local v2, "show":I
    if-ne v0, v5, :cond_30

    if-ne v2, v5, :cond_30

    .line 202
    return-void

    .line 196
    .end local v0    # "mode":I
    .end local v2    # "show":I
    :cond_2f
    return-void

    .line 204
    .restart local v0    # "mode":I
    .restart local v2    # "show":I
    :cond_30
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 205
    .local v1, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-nez v1, :cond_45

    .line 206
    new-instance v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .end local v1    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    invoke-direct {v1, p2, v0, v2, p2}, Lcom/android/server/AppOpsPolicy$PolicyPkg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 207
    .restart local v1    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :goto_44
    return-void

    .line 209
    :cond_45
    const-string/jumbo v3, "AppOpsPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Duplicate policy found for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 210
    const-string/jumbo v5, " of type: "

    .line 209
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput v0, v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 212
    iput v2, v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    goto :goto_44
.end method

.method private readOpPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/AppOpsPolicy$PolicyPkg;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkg"    # Lcom/android/server/AppOpsPolicy$PolicyPkg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 279
    if-nez p2, :cond_5

    .line 280
    return-void

    .line 282
    :cond_5
    const-string/jumbo v5, "name"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "opName":Ljava/lang/String;
    if-nez v3, :cond_18

    .line 284
    const-string/jumbo v5, "AppOpsPolicy"

    const-string/jumbo v6, "Op name is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 287
    :cond_18
    invoke-static {v3}, Landroid/app/AppOpsManager;->stringOpToOp(Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, "code":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3a

    .line 289
    const-string/jumbo v5, "AppOpsPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown Op: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 293
    :cond_3a
    const-string/jumbo v5, "permission"

    .line 292
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/app/AppOpsManager;->stringToMode(Ljava/lang/String;)I

    move-result v1

    .line 294
    .local v1, "mode":I
    const-string/jumbo v5, "show"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/AppOpsPolicy;->stringToControl(Ljava/lang/String;)I

    move-result v4

    .line 295
    .local v4, "show":I
    if-ne v1, v7, :cond_55

    if-ne v4, v7, :cond_55

    .line 296
    return-void

    .line 298
    :cond_55
    invoke-virtual {p2, v0}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 299
    .local v2, "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    if-nez v2, :cond_66

    .line 300
    new-instance v2, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .end local v2    # "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    invoke-direct {v2, v0, v1, v4}, Lcom/android/server/AppOpsPolicy$PolicyOp;-><init>(III)V

    .line 301
    .restart local v2    # "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    invoke-virtual {p2, v0, v2}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->put(ILjava/lang/Object;)V

    .line 278
    :goto_65
    return-void

    .line 303
    :cond_66
    const-string/jumbo v5, "AppOpsPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Duplicate policy found for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 304
    iget-object v7, p2, Lcom/android/server/AppOpsPolicy$PolicyPkg;->packageName:Ljava/lang/String;

    .line 303
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 304
    const-string/jumbo v7, " type: "

    .line 303
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 304
    iget-object v7, p2, Lcom/android/server/AppOpsPolicy$PolicyPkg;->type:Ljava/lang/String;

    .line 303
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 304
    const-string/jumbo v7, " op: "

    .line 303
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 304
    iget v7, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->op:I

    .line 303
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput v1, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->mode:I

    .line 306
    iput v4, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->show:I

    goto :goto_65
.end method

.method private readPkgPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v10, 0x0

    .line 239
    const-string/jumbo v9, "name"

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_c

    .line 241
    return-void

    .line 242
    :cond_c
    const-string/jumbo v9, "type"

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "appType":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 244
    return-void

    .line 246
    :cond_16
    const-string/jumbo v9, "permission"

    .line 245
    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/app/AppOpsManager;->stringToMode(Ljava/lang/String;)I

    move-result v2

    .line 247
    .local v2, "mode":I
    const-string/jumbo v9, "show"

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/AppOpsPolicy;->stringToControl(Ljava/lang/String;)I

    move-result v6

    .line 248
    .local v6, "show":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 250
    .local v5, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-nez v5, :cond_81

    .line 251
    new-instance v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .end local v5    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    invoke-direct {v5, v4, v2, v6, v0}, Lcom/android/server/AppOpsPolicy$PolicyPkg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 252
    .restart local v5    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    iget-object v9, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :goto_58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 262
    .local v3, "outerDepth":I
    :cond_5c
    :goto_5c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_cd

    .line 263
    if-ne v8, v12, :cond_6b

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_cd

    .line 264
    :cond_6b
    if-eq v8, v12, :cond_5c

    const/4 v9, 0x4

    if-eq v8, v9, :cond_5c

    .line 267
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "op"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 269
    invoke-direct {p0, p1, v5}, Lcom/android/server/AppOpsPolicy;->readOpPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/AppOpsPolicy$PolicyPkg;)V

    goto :goto_5c

    .line 254
    .end local v3    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_81
    const-string/jumbo v9, "AppOpsPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Duplicate policy found for package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 255
    const-string/jumbo v11, " of type: "

    .line 254
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput v2, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 257
    iput v6, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    goto :goto_58

    .line 271
    .restart local v3    # "outerDepth":I
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_ab
    const-string/jumbo v9, "AppOpsPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element under <pkg>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5c

    .line 238
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_cd
    return-void
.end method

.method public static stringToControl(Ljava/lang/String;)I
    .registers 2
    .param p0, "show"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 70
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_b
    const-string/jumbo v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_16
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method debugPoilcy()V
    .registers 7

    .prologue
    .line 311
    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 313
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsPolicy$PolicyPkg;>;>;"
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 318
    .local v4, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v4, :cond_a

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    invoke-virtual {v4}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    .line 326
    invoke-virtual {v4, v0}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 325
    .local v3, "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 310
    .end local v0    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    .end local v4    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    :cond_36
    return-void
.end method

.method public getDefualtMode(ILjava/lang/String;)I
    .registers 11
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 398
    const/4 v1, 0x2

    .line 403
    .local v1, "mode":I
    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    if-nez v5, :cond_7

    .line 404
    return v1

    .line 409
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsPolicy;->getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, "type":Ljava/lang/String;
    if-eqz v4, :cond_1e

    .line 412
    move-object v0, v4

    .line 413
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 414
    .local v3, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v3, :cond_1e

    iget v5, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    if-eq v5, v7, :cond_1e

    .line 417
    iget v1, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 421
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    :cond_1e
    move-object v0, p2

    .line 422
    .restart local v0    # "key":Ljava/lang/String;
    if-eqz v4, :cond_39

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_39
    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 426
    .restart local v3    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v3, :cond_57

    .line 427
    iget v5, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    if-eq v5, v7, :cond_49

    .line 430
    iget v1, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 433
    :cond_49
    invoke-virtual {v3, p1}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 434
    .local v2, "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    if-eqz v2, :cond_57

    .line 435
    iget v5, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->mode:I

    if-eq v5, v7, :cond_57

    .line 438
    iget v1, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->mode:I

    .line 444
    .end local v2    # "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    :cond_57
    return v1
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 357
    const/4 v0, 0x1

    .line 358
    .local v0, "isShow":Z
    const/4 v4, 0x2

    .line 363
    .local v4, "show":I
    iget-object v6, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    if-nez v6, :cond_8

    .line 364
    return v0

    .line 367
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsPolicy;->getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "type":Ljava/lang/String;
    if-eqz v5, :cond_1f

    .line 369
    move-object v1, v5

    .line 370
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 371
    .local v3, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v3, :cond_1f

    iget v6, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    if-eq v6, v8, :cond_1f

    .line 372
    iget v4, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    .line 375
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    :cond_1f
    move-object v1, p2

    .line 376
    .restart local v1    # "key":Ljava/lang/String;
    if-eqz v5, :cond_3a

    .line 377
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    :cond_3a
    iget-object v6, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 380
    .restart local v3    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v3, :cond_58

    .line 381
    iget v6, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    if-eq v6, v8, :cond_4a

    .line 382
    iget v4, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    .line 384
    :cond_4a
    invoke-virtual {v3, p1}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 385
    .local v2, "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    if-eqz v2, :cond_58

    .line 386
    iget v6, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->show:I

    if-eq v6, v8, :cond_58

    .line 387
    iget v4, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->show:I

    .line 391
    .end local v2    # "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    :cond_58
    const/4 v6, 0x1

    if-ne v4, v6, :cond_5c

    .line 392
    const/4 v0, 0x0

    .line 394
    :cond_5c
    return v0
.end method

.method readPolicy()V
    .registers 19

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    monitor-enter v15

    .line 128
    :try_start_5
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_5d
    .catchall {:try_start_5 .. :try_end_e} :catchall_20b

    .line 134
    .local v10, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 136
    .local v11, "success":Z
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 137
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    invoke-interface {v9, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 139
    const/4 v11, 0x1

    .line 140
    :cond_18
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x2

    if-eq v13, v14, :cond_22

    .line 141
    const/4 v14, 0x1

    if-ne v13, v14, :cond_18

    .line 144
    :cond_22
    const/4 v14, 0x2

    if-eq v13, v14, :cond_8d

    .line 145
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "no start tag found"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_30} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_30} :catch_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_30} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_30} :catch_157
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_30} :catch_1c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_30} :catch_198
    .catchall {:try_start_f .. :try_end_30} :catchall_1fb

    .line 168
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_30
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_31
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_1fb

    .line 181
    if-nez v11, :cond_58

    .line 182
    :try_start_51
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_20b

    .line 185
    :cond_58
    :try_start_58
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_1f8
    .catchall {:try_start_58 .. :try_end_5b} :catchall_20b

    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_5b
    monitor-exit v15

    .line 124
    return-void

    .line 129
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catch_5d
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5e
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "App ops policy file ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 131
    const-string/jumbo v17, ") not found; Skipping."

    .line 130
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_5e .. :try_end_8b} :catchall_20b

    monitor-exit v15

    .line 132
    return-void

    .line 148
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    .restart local v13    # "type":I
    :cond_8d
    :try_start_8d
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 149
    .local v8, "outerDepth":I
    :cond_91
    :goto_91
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_187

    .line 150
    const/4 v14, 0x3

    if-ne v13, v14, :cond_a1

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_187

    .line 151
    :cond_a1
    const/4 v14, 0x3

    if-eq v13, v14, :cond_91

    .line 152
    const/4 v14, 0x4

    if-eq v13, v14, :cond_91

    .line 156
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "user-app"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_bd

    .line 158
    const-string/jumbo v14, "system-app"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 157
    if-eqz v14, :cond_f3

    .line 159
    :cond_bd
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/server/AppOpsPolicy;->readDefaultPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/IllegalStateException; {:try_start_8d .. :try_end_c2} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_8d .. :try_end_c2} :catch_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_c2} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_c2} :catch_157
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_c2} :catch_1c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8d .. :try_end_c2} :catch_198
    .catchall {:try_start_8d .. :try_end_c2} :catchall_1fb

    goto :goto_91

    .line 170
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_c3
    move-exception v5

    .line 171
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_c4
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_c4 .. :try_end_e2} :catchall_1fb

    .line 181
    if-nez v11, :cond_eb

    .line 182
    :try_start_e4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_eb
    .catchall {:try_start_e4 .. :try_end_eb} :catchall_20b

    .line 185
    :cond_eb
    :try_start_eb
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_f0
    .catchall {:try_start_eb .. :try_end_ee} :catchall_20b

    goto/16 :goto_5b

    .line 186
    :catch_f0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_5b

    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_f3
    :try_start_f3
    const-string/jumbo v14, "application"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_132

    .line 161
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/AppOpsPolicy;->readApplicationPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_101
    .catch Ljava/lang/IllegalStateException; {:try_start_f3 .. :try_end_101} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_f3 .. :try_end_101} :catch_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_f3 .. :try_end_101} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f3 .. :try_end_101} :catch_157
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_101} :catch_1c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f3 .. :try_end_101} :catch_198
    .catchall {:try_start_f3 .. :try_end_101} :catchall_1fb

    goto :goto_91

    .line 172
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_102
    move-exception v6

    .line 173
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_103
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_103 .. :try_end_121} :catchall_1fb

    .line 181
    if-nez v11, :cond_12a

    .line 182
    :try_start_123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_12a
    .catchall {:try_start_123 .. :try_end_12a} :catchall_20b

    .line 185
    :cond_12a
    :try_start_12a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_12f
    .catchall {:try_start_12a .. :try_end_12d} :catchall_20b

    goto/16 :goto_5b

    .line 186
    :catch_12f
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_5b

    .line 163
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_132
    :try_start_132
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown element under <appops-policy>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 164
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 163
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_155
    .catch Ljava/lang/IllegalStateException; {:try_start_132 .. :try_end_155} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_132 .. :try_end_155} :catch_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_132 .. :try_end_155} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_132 .. :try_end_155} :catch_157
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_155} :catch_1c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_132 .. :try_end_155} :catch_198
    .catchall {:try_start_132 .. :try_end_155} :catchall_1fb

    goto/16 :goto_91

    .line 174
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_157
    move-exception v7

    .line 175
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_158
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catchall {:try_start_158 .. :try_end_176} :catchall_1fb

    .line 181
    if-nez v11, :cond_17f

    .line 182
    :try_start_178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_17f
    .catchall {:try_start_178 .. :try_end_17f} :catchall_20b

    .line 185
    :cond_17f
    :try_start_17f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_184
    .catchall {:try_start_17f .. :try_end_182} :catchall_20b

    goto/16 :goto_5b

    .line 186
    :catch_184
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_5b

    .line 181
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    :cond_187
    if-nez v11, :cond_190

    .line 182
    :try_start_189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_190
    .catchall {:try_start_189 .. :try_end_190} :catchall_20b

    .line 185
    :cond_190
    :try_start_190
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_195
    .catchall {:try_start_190 .. :try_end_193} :catchall_20b

    goto/16 :goto_5b

    .line 186
    :catch_195
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_5b

    .line 178
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_198
    move-exception v4

    .line 179
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_199
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b7
    .catchall {:try_start_199 .. :try_end_1b7} :catchall_1fb

    .line 181
    if-nez v11, :cond_1c0

    .line 182
    :try_start_1b9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_1c0
    .catchall {:try_start_1b9 .. :try_end_1c0} :catchall_20b

    .line 185
    :cond_1c0
    :try_start_1c0
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1c3
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1c3} :catch_1c5
    .catchall {:try_start_1c0 .. :try_end_1c3} :catchall_20b

    goto/16 :goto_5b

    .line 186
    :catch_1c5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_5b

    .line 176
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1c8
    move-exception v2

    .line 177
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_1c9
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e7
    .catchall {:try_start_1c9 .. :try_end_1e7} :catchall_1fb

    .line 181
    if-nez v11, :cond_1f0

    .line 182
    :try_start_1e9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_1f0
    .catchall {:try_start_1e9 .. :try_end_1f0} :catchall_20b

    .line 185
    :cond_1f0
    :try_start_1f0
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_1f3} :catch_1f5
    .catchall {:try_start_1f0 .. :try_end_1f3} :catchall_20b

    goto/16 :goto_5b

    .line 186
    :catch_1f5
    move-exception v2

    goto/16 :goto_5b

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1f8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_5b

    .line 180
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_1fb
    move-exception v14

    .line 181
    if-nez v11, :cond_207

    .line 182
    :try_start_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V
    :try_end_207
    .catchall {:try_start_1fe .. :try_end_207} :catchall_20b

    .line 185
    :cond_207
    :try_start_207
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_207 .. :try_end_20a} :catch_20e
    .catchall {:try_start_207 .. :try_end_20a} :catchall_20b

    .line 180
    :goto_20a
    :try_start_20a
    throw v14
    :try_end_20b
    .catchall {:try_start_20a .. :try_end_20b} :catchall_20b

    .line 126
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catchall_20b
    move-exception v14

    monitor-exit v15

    throw v14

    .line 186
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    :catch_20e
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_20a
.end method
