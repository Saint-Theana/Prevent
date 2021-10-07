.class Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;,
        Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;
    }
.end annotation


# static fields
.field private static final ATTR_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTR_BITMAP_PATH:Ljava/lang/String; = "bitmap-path"

.field private static final ATTR_CALL_COUNT:Ljava/lang/String; = "call-count"

.field private static final ATTR_DISABLED_MESSAGE:Ljava/lang/String; = "dmessage"

.field private static final ATTR_DISABLED_MESSAGE_RES_ID:Ljava/lang/String; = "dmessageid"

.field private static final ATTR_DISABLED_MESSAGE_RES_NAME:Ljava/lang/String; = "dmessagename"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_RES_ID:Ljava/lang/String; = "icon-res"

.field private static final ATTR_ICON_RES_NAME:Ljava/lang/String; = "icon-resname"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INTENT_LEGACY:Ljava/lang/String; = "intent"

.field private static final ATTR_INTENT_NO_EXTRA:Ljava/lang/String; = "intent-base"

.field private static final ATTR_LAST_RESET:Ljava/lang/String; = "last-reset"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_XMLUTILS:Ljava/lang/String; = "name"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final ATTR_TEXT_RES_ID:Ljava/lang/String; = "textid"

.field private static final ATTR_TEXT_RES_NAME:Ljava/lang/String; = "textname"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleid"

.field private static final ATTR_TITLE_RES_NAME:Ljava/lang/String; = "titlename"

.field private static final KEY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field private static final KEY_BITMAP_BYTES:Ljava/lang/String; = "bitmapBytes"

.field private static final KEY_DYNAMIC:Ljava/lang/String; = "dynamic"

.field private static final KEY_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final KEY_PINNED:Ljava/lang/String; = "pinned"

.field private static final NAME_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_INTENT_EXTRAS_LEGACY:Ljava/lang/String; = "intent-extras"

.field static final TAG_ROOT:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_STRING_ARRAY_XMLUTILS:Ljava/lang/String; = "string-array"

.field private static final TAG_VERIFY:Ljava/lang/String; = "ShortcutService.verify"


# instance fields
.field private mApiCallCount:I

.field private mLastKnownForegroundElapsedTime:J

.field private mLastResetTime:J

.field private final mPackageUid:I

.field final mShortcutRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutTypeAndRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$1(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 4
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 896
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 899
    :cond_c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 900
    const/4 v0, 0x1

    return v0

    .line 897
    :cond_1a
    const/4 v0, -0x1

    return v0

    .line 902
    :cond_1c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$2(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 5
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 1059
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1060
    .local v0, "ret":I
    if-eqz v0, :cond_f

    .line 1061
    return v0

    .line 1068
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v2

    if-eq v1, v2, :cond_23

    .line 1069
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, -0x1

    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x1

    goto :goto_20

    .line 1073
    :cond_23
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1074
    if-eqz v0, :cond_32

    .line 1075
    return v0

    .line 1080
    :cond_32
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$4(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 4
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 1539
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$5(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 1543
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$6(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 1546
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .registers 5
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 133
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 6
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "spi"    # Lcom/android/server/pm/ShortcutPackageInfo;

    .prologue
    .line 128
    if-eqz p4, :cond_23

    .line 127
    .end local p4    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 894
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    .line 1057
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    .line 130
    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 126
    return-void

    .line 128
    .restart local p4    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :cond_23
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p4

    goto :goto_2
.end method

.method private addShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .registers 5
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 211
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 214
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcut(ILandroid/content/pm/ShortcutInfo;)V

    .line 215
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 216
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method private areAllActivitiesStillEnabled()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 587
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_b

    .line 588
    return v7

    .line 590
    :cond_b
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 594
    .local v3, "s":Lcom/android/server/pm/ShortcutService;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 596
    .local v1, "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1d
    if-ltz v2, :cond_42

    .line 597
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 598
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 600
    .local v0, "activity":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 596
    :cond_31
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 603
    :cond_34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v5

    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result v5

    if-nez v5, :cond_31

    .line 606
    return v6

    .line 609
    .end local v0    # "activity":Landroid/content/ComponentName;
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_42
    return v7
.end method

.method private deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;
    .registers 8
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disable"    # Z
    .param p3, "overrideImmutable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 349
    .local v0, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 352
    if-nez p3, :cond_16

    .line 353
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    .line 355
    :cond_16
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 357
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 358
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 359
    if-eqz p2, :cond_2c

    .line 360
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 362
    :cond_2c
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 364
    return-object v0

    .line 350
    :cond_38
    return-object v2

    .line 366
    :cond_39
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 367
    return-object v2
.end method

.method private deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 200
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_1a

    .line 201
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/ShortcutService;->removeIcon(ILandroid/content/pm/ShortcutInfo;)V

    .line 202
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 205
    :cond_1a
    return-object v0
.end method

.method private disableDynamicWithId(Ljava/lang/String;)Z
    .registers 5
    .param p1, "shortcutId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 321
    .local v0, "disabled":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_9

    :goto_8
    return v1

    :cond_9
    move v1, v2

    goto :goto_8
.end method

.method private ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V
    .registers 5
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 175
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Manifest shortcut ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    const-string/jumbo v2, " may not be manipulated via APIs"

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_2d
    return-void
.end method

.method private ensureNotImmutable(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    .line 182
    return-void
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 575
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 576
    .local v0, "sep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 577
    return-object p0

    .line 579
    :cond_a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .registers 6
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ComponentName;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 933
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 934
    .local v0, "oldValue":Ljava/lang/Integer;
    if-nez v0, :cond_d

    .line 935
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 938
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    return-void
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .registers 14
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1341
    const-string/jumbo v7, "name"

    .line 1340
    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1343
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/ShortcutPackage;

    .line 1344
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v7

    .line 1343
    invoke-direct {v3, p1, v7, v2}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    .line 1347
    .local v3, "ret":Lcom/android/server/pm/ShortcutPackage;
    const-string/jumbo v7, "call-count"

    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 1346
    iput v7, v3, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 1349
    const-string/jumbo v7, "last-reset"

    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 1348
    iput-wide v8, v3, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 1351
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1353
    .local v1, "outerDepth":I
    :cond_26
    :goto_26
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_75

    .line 1354
    const/4 v7, 0x3

    if-ne v6, v7, :cond_36

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_75

    .line 1355
    :cond_36
    const/4 v7, 0x2

    if-ne v6, v7, :cond_26

    .line 1358
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1359
    .local v0, "depth":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1360
    .local v5, "tag":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    if-ne v0, v7, :cond_71

    .line 1361
    const-string/jumbo v7, "package-info"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 1363
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_26

    .line 1361
    :cond_56
    const-string/jumbo v7, "shortcut"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 1367
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v7

    .line 1366
    invoke-static {p2, v2, v7}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 1370
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    iget-object v7, v3, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 1374
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_71
    invoke-static {v0, v5}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    goto :goto_26

    .line 1376
    .end local v0    # "depth":I
    .end local v5    # "tag":Ljava/lang/String;
    :cond_75
    return-object v3
.end method

.method private static parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1489
    const-string/jumbo v5, "intent-base"

    .line 1488
    invoke-static {p0, v5}, Lcom/android/server/pm/ShortcutService;->parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1491
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1493
    .local v2, "outerDepth":I
    :cond_b
    :goto_b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3c

    .line 1494
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1b

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_3c

    .line 1495
    :cond_1b
    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 1498
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1499
    .local v0, "depth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1504
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v5, "extras"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1507
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 1506
    invoke-static {v1, v5}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    goto :goto_b

    .line 1510
    :cond_37
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1512
    .end local v0    # "depth":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_3c
    return-object v1
.end method

.method private static parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .registers 41
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1394
    const/16 v31, 0x0

    .line 1395
    .local v31, "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1397
    .local v32, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/16 v21, 0x0

    .line 1403
    .local v21, "extras":Landroid/os/PersistableBundle;
    const/16 v18, 0x0

    .line 1405
    .local v18, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v3, "id"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1407
    .local v5, "id":Ljava/lang/String;
    const-string/jumbo v3, "activity"

    .line 1406
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 1408
    .local v7, "activityComponent":Landroid/content/ComponentName;
    const-string/jumbo v3, "title"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1409
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v3, "titleid"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 1410
    .local v10, "titleResId":I
    const-string/jumbo v3, "titlename"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1411
    .local v11, "titleResName":Ljava/lang/String;
    const-string/jumbo v3, "text"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1412
    .local v12, "text":Ljava/lang/String;
    const-string/jumbo v3, "textid"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v13

    .line 1413
    .local v13, "textResId":I
    const-string/jumbo v3, "textname"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1414
    .local v14, "textResName":Ljava/lang/String;
    const-string/jumbo v3, "dmessage"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1416
    .local v15, "disabledMessage":Ljava/lang/String;
    const-string/jumbo v3, "dmessageid"

    .line 1415
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v16

    .line 1418
    .local v16, "disabledMessageResId":I
    const-string/jumbo v3, "dmessagename"

    .line 1417
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1419
    .local v17, "disabledMessageResName":Ljava/lang/String;
    const-string/jumbo v3, "intent"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v30

    .line 1420
    .local v30, "intentLegacy":Landroid/content/Intent;
    const-string/jumbo v3, "rank"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v20, v0

    .line 1421
    .local v20, "rank":I
    const-string/jumbo v3, "timestamp"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v22

    .line 1422
    .local v22, "lastChangedTimestamp":J
    const-string/jumbo v3, "flags"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v24, v0

    .line 1423
    .local v24, "flags":I
    const-string/jumbo v3, "icon-res"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v25, v0

    .line 1424
    .local v25, "iconResId":I
    const-string/jumbo v3, "icon-resname"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1425
    .local v26, "iconResName":Ljava/lang/String;
    const-string/jumbo v3, "bitmap-path"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1427
    .local v27, "bitmapPath":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v33

    .line 1429
    .end local v18    # "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "extras":Landroid/os/PersistableBundle;
    .end local v31    # "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    .local v33, "outerDepth":I
    :cond_c0
    :goto_c0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    .local v35, "type":I
    const/4 v3, 0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_16c

    .line 1430
    const/4 v3, 0x3

    move/from16 v0, v35

    if-ne v0, v3, :cond_d6

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v33

    if-le v3, v0, :cond_16c

    .line 1431
    :cond_d6
    const/4 v3, 0x2

    move/from16 v0, v35

    if-ne v0, v3, :cond_c0

    .line 1434
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v28

    .line 1435
    .local v28, "depth":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v34

    .line 1440
    .local v34, "tag":Ljava/lang/String;
    const-string/jumbo v3, "intent-extras"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 1442
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v31

    .local v31, "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    goto :goto_c0

    .line 1440
    .end local v31    # "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    :cond_f3
    const-string/jumbo v3, "intent"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 1445
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    .line 1440
    :cond_108
    const-string/jumbo v3, "extras"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_118

    .line 1448
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v21

    .local v21, "extras":Landroid/os/PersistableBundle;
    goto :goto_c0

    .line 1440
    .end local v21    # "extras":Landroid/os/PersistableBundle;
    :cond_118
    const-string/jumbo v3, "categories"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c0

    const-string/jumbo v3, "string-array"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_163

    .line 1454
    const-string/jumbo v3, "categories"

    .line 1455
    const-string/jumbo v4, "name"

    .line 1454
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 1457
    const-string/jumbo v3, "string-array"

    const/4 v4, 0x0

    .line 1456
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1458
    .local v2, "ar":[Ljava/lang/String;
    new-instance v18, Landroid/util/ArraySet;

    array-length v3, v2

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 1459
    .local v18, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_154
    array-length v3, v2

    move/from16 v0, v29

    if-ge v0, v3, :cond_c0

    .line 1460
    aget-object v3, v2, v29

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1459
    add-int/lit8 v29, v29, 0x1

    goto :goto_154

    .line 1465
    .end local v2    # "ar":[Ljava/lang/String;
    .end local v18    # "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v29    # "i":I
    :cond_163
    move/from16 v0, v28

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1468
    .end local v28    # "depth":I
    .end local v34    # "tag":Ljava/lang/String;
    :cond_16c
    if-eqz v30, :cond_17b

    .line 1470
    invoke-static/range {v30 .. v31}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1471
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    .line 1472
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    :cond_17b
    new-instance v3, Landroid/content/pm/ShortcutInfo;

    .line 1480
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/Intent;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/content/Intent;

    .line 1476
    const/4 v8, 0x0

    move/from16 v4, p2

    move-object/from16 v6, p1

    .line 1475
    invoke-direct/range {v3 .. v27}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private publishManifestShortcuts(Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 764
    .local p1, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 767
    .local v0, "changed":Z
    const/4 v8, 0x0

    .line 768
    .local v8, "toDisableList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .end local v8    # "toDisableList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_2b

    .line 769
    iget-object v10, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 771
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v10

    if-eqz v10, :cond_28

    .line 772
    if-nez v8, :cond_21

    .line 773
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 775
    :cond_21
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 780
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2b
    if-eqz p1, :cond_9b

    .line 781
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 783
    .local v4, "newListSize":I
    const/4 v1, 0x0

    :goto_32
    if-ge v1, v4, :cond_9b

    .line 784
    const/4 v0, 0x1

    .line 786
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 787
    .local v5, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_7f

    const/4 v3, 0x0

    .line 789
    .local v3, "newDisabled":Z
    :goto_42
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, "id":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 792
    .local v6, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v9, 0x0

    .line 794
    .local v9, "wasPinned":Z
    if-eqz v6, :cond_8c

    .line 795
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v10

    if-nez v10, :cond_81

    .line 796
    const-string/jumbo v10, "ShortcutService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Shortcut with ID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 797
    const-string/jumbo v12, " exists but is not from AndroidManifest.xml, not updating."

    .line 796
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_7c
    :goto_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 787
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "newDisabled":Z
    .end local v6    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v9    # "wasPinned":Z
    :cond_7f
    const/4 v3, 0x1

    .restart local v3    # "newDisabled":Z
    goto :goto_42

    .line 801
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v6    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v9    # "wasPinned":Z
    :cond_81
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v10

    if-eqz v10, :cond_8c

    .line 802
    const/4 v9, 0x1

    .line 803
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 806
    :cond_8c
    if-eqz v3, :cond_90

    if-eqz v9, :cond_7c

    .line 815
    :cond_90
    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->addShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 817
    if-nez v3, :cond_7c

    if-eqz v8, :cond_7c

    .line 819
    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 825
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "newDisabled":Z
    .end local v4    # "newListSize":I
    .end local v5    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v9    # "wasPinned":Z
    :cond_9b
    if-eqz v8, :cond_b8

    .line 831
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    :goto_a3
    if-ltz v1, :cond_b5

    .line 832
    const/4 v0, 0x1

    .line 834
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 836
    .restart local v2    # "id":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 837
    const/4 v12, 0x1

    .line 836
    invoke-virtual {p0, v2, v10, v11, v12}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 831
    add-int/lit8 v1, v1, -0x1

    goto :goto_a3

    .line 839
    .end local v2    # "id":Ljava/lang/String;
    :cond_b5
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 841
    :cond_b8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 842
    return v0
.end method

.method private pushOutExcessShortcuts()Z
    .registers 10

    .prologue
    .line 850
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v6, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 851
    .local v6, "service":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v4

    .line 853
    .local v4, "maxShortcuts":I
    const/4 v1, 0x0

    .line 856
    .local v1, "changed":Z
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v0

    .line 857
    .local v0, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "outer":I
    :goto_13
    if-ltz v5, :cond_4e

    .line 858
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 859
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v4, :cond_24

    .line 857
    :cond_21
    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    .line 863
    :cond_24
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 866
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "inner":I
    :goto_2f
    if-lt v2, v4, :cond_21

    .line 867
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 869
    .local v7, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 872
    const-string/jumbo v8, "Found manifest shortcuts in excess list."

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 866
    :goto_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 875
    :cond_46
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;)Z

    goto :goto_43

    .line 879
    .end local v2    # "inner":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_4e
    return v1
.end method

.method private removeOrphans()V
    .registers 5

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 259
    .local v1, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .end local v1    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_2b

    .line 260
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 262
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 259
    :goto_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 264
    :cond_1c
    if-nez v1, :cond_23

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    :cond_23
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 269
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2b
    if-eqz v1, :cond_41

    .line 270
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_33
    if-ltz v0, :cond_41

    .line 271
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 270
    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    .line 256
    :cond_41
    return-void
.end method

.method private static saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;Z)V
    .registers 12
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1272
    if-eqz p2, :cond_11

    .line 1273
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v5

    :cond_e
    if-nez v5, :cond_11

    .line 1274
    return-void

    .line 1277
    :cond_11
    const-string/jumbo v5, "shortcut"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1278
    const-string/jumbo v5, "id"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1280
    const-string/jumbo v5, "activity"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1282
    const-string/jumbo v5, "title"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1283
    const-string/jumbo v5, "titleid"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1284
    const-string/jumbo v5, "titlename"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1285
    const-string/jumbo v5, "text"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1286
    const-string/jumbo v5, "textid"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1287
    const-string/jumbo v5, "textname"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1288
    const-string/jumbo v5, "dmessage"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1289
    const-string/jumbo v5, "dmessageid"

    .line 1290
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    move-result v6

    int-to-long v6, v6

    .line 1289
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1291
    const-string/jumbo v5, "dmessagename"

    .line 1292
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    move-result-object v6

    .line 1291
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1293
    const-string/jumbo v5, "timestamp"

    .line 1294
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v6

    .line 1293
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1295
    if-eqz p2, :cond_f6

    .line 1297
    const-string/jumbo v5, "flags"

    .line 1298
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, -0xe

    int-to-long v6, v6

    .line 1297
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1313
    :goto_a1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 1314
    .local v0, "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_cb

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_cb

    .line 1315
    const-string/jumbo v5, "categories"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1316
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1317
    const-string/jumbo v6, "categories"

    .line 1316
    invoke-static {v5, v6, p0}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1318
    const-string/jumbo v5, "categories"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1321
    :cond_cb
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    move-result-object v3

    .line 1322
    .local v3, "intentsNoExtras":[Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1323
    .local v2, "intentsExtras":[Landroid/os/PersistableBundle;
    array-length v4, v3

    .line 1324
    .local v4, "numIntents":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d5
    if-ge v1, v4, :cond_12d

    .line 1325
    const-string/jumbo v5, "intent"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1326
    const-string/jumbo v5, "intent-base"

    aget-object v6, v3, v1

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1327
    const-string/jumbo v5, "extras"

    aget-object v6, v2, v1

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1328
    const-string/jumbo v5, "intent"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1324
    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    .line 1304
    .end local v0    # "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "intentsExtras":[Landroid/os/PersistableBundle;
    .end local v3    # "intentsNoExtras":[Landroid/content/Intent;
    .end local v4    # "numIntents":I
    :cond_f6
    const-string/jumbo v5, "rank"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1306
    const-string/jumbo v5, "flags"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1307
    const-string/jumbo v5, "icon-res"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1308
    const-string/jumbo v5, "icon-resname"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1309
    const-string/jumbo v5, "bitmap-path"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_a1

    .line 1331
    .restart local v0    # "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "intentsExtras":[Landroid/os/PersistableBundle;
    .restart local v3    # "intentsNoExtras":[Landroid/content/Intent;
    .restart local v4    # "numIntents":I
    :cond_12d
    const-string/jumbo v5, "extras"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1333
    const-string/jumbo v5, "shortcut"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1271
    return-void
.end method

.method private sortShortcutsToActivities()Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 911
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 912
    .local v0, "activitiesToShortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_38

    .line 913
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 914
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 912
    :goto_1d
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 918
    :cond_20
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 920
    .local v1, "activity":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 921
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v3, :cond_34

    .line 922
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :cond_34
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 927
    .end local v1    # "activity":Landroid/content/ComponentName;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_38
    return-object v0
.end method

.method private verifyRanksSequential(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1598
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 1600
    .local v0, "failed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5f

    .line 1601
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1602
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v3

    if-eq v3, v1, :cond_5c

    .line 1603
    const/4 v0, 0x1

    .line 1604
    const-string/jumbo v3, "ShortcutService.verify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": shortcut "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1605
    const-string/jumbo v5, " rank="

    .line 1604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1605
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v5

    .line 1604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1605
    const-string/jumbo v5, " but expected to be "

    .line 1604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1608
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_5f
    return v0
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutPackage_lambda$3(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 8
    .param p1, "launcherShortcuts"    # Lcom/android/server/pm/ShortcutLauncher;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v5

    .line 394
    invoke-virtual {p1, v4, v5}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v2

    .line 397
    .local v2, "pinned":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_15

    .line 398
    :cond_14
    return-void

    .line 400
    :cond_15
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1b
    if-ltz v0, :cond_35

    .line 401
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 403
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v3, :cond_30

    .line 400
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 410
    :cond_30
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    goto :goto_2d

    .line 0
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_35
    return-void
.end method

.method public addOrUpdateDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V
    .registers 6
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    .line 227
    const-string/jumbo v3, "add/setDynamicShortcuts() cannot publish disabled shortcuts"

    .line 226
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 229
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 231
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 235
    .local v0, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_27

    .line 236
    const/4 v1, 0x0

    .line 246
    :goto_1d
    if-eqz v1, :cond_23

    .line 247
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 250
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->addShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 224
    return-void

    .line 240
    :cond_27
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;)V

    .line 242
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    .local v1, "wasPinned":Z
    goto :goto_1d
.end method

.method public adjustRanks()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 1087
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v8, v12, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1088
    .local v8, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v4

    .line 1091
    .local v4, "now":J
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v1, v12, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_30

    .line 1092
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 1093
    .local v9, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 1094
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v12

    if-eqz v12, :cond_2d

    .line 1095
    invoke-virtual {v9, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1096
    invoke-virtual {v9, v13}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1091
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 1106
    .end local v9    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_30
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1107
    .local v0, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "outer":I
    :goto_3a
    if-ltz v3, :cond_82

    .line 1108
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1111
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    invoke-static {v2, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1113
    const/4 v6, 0x0

    .line 1115
    .local v6, "rank":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1116
    .local v10, "size":I
    const/4 v1, 0x0

    move v7, v6

    .end local v6    # "rank":I
    .local v7, "rank":I
    :goto_4e
    if-ge v1, v10, :cond_7f

    .line 1117
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 1118
    .restart local v9    # "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v12

    if-eqz v12, :cond_61

    move v6, v7

    .line 1116
    .end local v7    # "rank":I
    .restart local v6    # "rank":I
    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6    # "rank":I
    .restart local v7    # "rank":I
    goto :goto_4e

    .line 1123
    :cond_61
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v12

    if-nez v12, :cond_6f

    .line 1124
    const-string/jumbo v12, "Non-dynamic shortcut found."

    invoke-virtual {v8, v12}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    move v6, v7

    .line 1125
    .end local v7    # "rank":I
    .restart local v6    # "rank":I
    goto :goto_5d

    .line 1127
    .end local v6    # "rank":I
    .restart local v7    # "rank":I
    :cond_6f
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "rank":I
    .restart local v6    # "rank":I
    move v11, v7

    .line 1128
    .local v11, "thisRank":I
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v12

    if-eq v12, v7, :cond_5d

    .line 1129
    invoke-virtual {v9, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1130
    invoke-virtual {v9, v7}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    goto :goto_5d

    .line 1107
    .end local v6    # "rank":I
    .end local v9    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v11    # "thisRank":I
    .restart local v7    # "rank":I
    :cond_7f
    add-int/lit8 v3, v3, -0x1

    goto :goto_3a

    .line 1086
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "rank":I
    .end local v10    # "size":I
    :cond_82
    return-void
.end method

.method public clearAllImplicitRanks()V
    .registers 4

    .prologue
    .line 1048
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1049
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 1050
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->clearImplicitRankAndRankChangedFlag()V

    .line 1048
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1047
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_18
    return-void
.end method

.method public deleteAllDynamicShortcuts()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 280
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v2

    .line 282
    .local v2, "now":J
    const/4 v0, 0x0

    .line 283
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_30

    .line 284
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 285
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 286
    const/4 v0, 0x1

    .line 288
    invoke-virtual {v4, v2, v3}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 289
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 290
    invoke-virtual {v4, v6}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 283
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 293
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_30
    if-eqz v0, :cond_35

    .line 294
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 279
    :cond_35
    return-void
.end method

.method public deleteDynamicWithId(Ljava/lang/String;)Z
    .registers 4
    .param p1, "shortcutId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 308
    .local v0, "removed":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public disableWithId(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disabledMessage"    # Ljava/lang/String;
    .param p3, "disabledMessageResId"    # I
    .param p4, "overrideImmutable"    # Z

    .prologue
    .line 330
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, p4}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 333
    .local v0, "disabled":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_c

    .line 334
    if-eqz p2, :cond_d

    .line 335
    invoke-virtual {v0, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    .line 329
    :cond_c
    :goto_c
    return-void

    .line 336
    :cond_d
    if-eqz p3, :cond_c

    .line 337
    invoke-virtual {v0, p3}, Landroid/content/pm/ShortcutInfo;->setDisabledMessageResId(I)V

    .line 339
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_c
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1148
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1150
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1151
    const-string/jumbo v8, "Package: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1153
    const-string/jumbo v8, "  UID: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    iget v8, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1155
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1158
    const-string/jumbo v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1159
    const-string/jumbo v8, "Calls: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1161
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1164
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    const-string/jumbo v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v8, "Last known FG: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1167
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 1168
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1171
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    const-string/jumbo v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1173
    const-string/jumbo v8, "Last reset: ["

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1174
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 1175
    const-string/jumbo v8, "] "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {v8, v9}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1179
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1182
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    const-string/jumbo v8, "  Shortcuts:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    const-wide/16 v6, 0x0

    .line 1185
    .local v6, "totalBitmapSize":J
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1186
    .local v1, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1187
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a7
    if-ge v0, v5, :cond_e8

    .line 1188
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1189
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1190
    const-string/jumbo v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->toInsecureString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e5

    .line 1193
    new-instance v8, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1194
    .local v2, "len":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    const-string/jumbo v8, "      "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1196
    const-string/jumbo v8, "bitmap size="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1199
    add-long/2addr v6, v2

    .line 1187
    .end local v2    # "len":J
    :cond_e5
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 1202
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_e8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1203
    const-string/jumbo v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1204
    const-string/jumbo v8, "Total bitmap size: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1206
    const-string/jumbo v8, " ("

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v8, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v8, v8, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1208
    const-string/jumbo v8, ")"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 16
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1213
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 1215
    .local v5, "result":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 1216
    .local v2, "numDynamic":I
    const/4 v4, 0x0

    .line 1217
    .local v4, "numPinned":I
    const/4 v3, 0x0

    .line 1218
    .local v3, "numManifest":I
    const/4 v1, 0x0

    .line 1219
    .local v1, "numBitmaps":I
    const-wide/16 v10, 0x0

    .line 1221
    .local v10, "totalBitmapSize":J
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1222
    .local v6, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1223
    .local v8, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v8, :cond_4a

    .line 1224
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1226
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v9

    if-eqz v9, :cond_21

    add-int/lit8 v2, v2, 0x1

    .line 1227
    :cond_21
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v9

    if-eqz v9, :cond_29

    add-int/lit8 v3, v3, 0x1

    .line 1228
    :cond_29
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_31

    add-int/lit8 v4, v4, 0x1

    .line 1230
    :cond_31
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_47

    .line 1231
    add-int/lit8 v1, v1, 0x1

    .line 1232
    new-instance v9, Ljava/io/File;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 1223
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1236
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_4a
    const-string/jumbo v9, "dynamic"

    invoke-virtual {v5, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1237
    const-string/jumbo v9, "manifest"

    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1238
    const-string/jumbo v9, "pinned"

    invoke-virtual {v5, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1239
    const-string/jumbo v9, "bitmaps"

    invoke-virtual {v5, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1240
    const-string/jumbo v9, "bitmapBytes"

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1244
    return-object v5
.end method

.method public enableWithId(Ljava/lang/String;)V
    .registers 4
    .param p1, "shortcutId"    # Ljava/lang/String;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 373
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_12

    .line 374
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    .line 375
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 371
    :cond_12
    return-void
.end method

.method public enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V
    .registers 15
    .param p2, "operation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 956
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v6, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 961
    .local v6, "service":Lcom/android/server/pm/ShortcutService;
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v8, 0x4

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    .line 962
    .local v0, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_3e

    .line 963
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 965
    .local v7, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 966
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {p0, v0, v8, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 962
    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 967
    :cond_2e
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_2b

    if-eqz p2, :cond_2b

    .line 968
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {p0, v0, v8, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_2b

    .line 972
    .end local v7    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_3e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_44
    if-ltz v1, :cond_8d

    .line 973
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 974
    .local v3, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 975
    .local v2, "newActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_5d

    .line 976
    if-eq p2, v11, :cond_5a

    .line 977
    const-string/jumbo v8, "Activity must not be null at this point"

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 972
    :cond_5a
    :goto_5a
    add-int/lit8 v1, v1, -0x1

    goto :goto_44

    .line 983
    :cond_5d
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 984
    .local v5, "original":Landroid/content/pm/ShortcutInfo;
    if-nez v5, :cond_71

    .line 985
    if-eq p2, v11, :cond_5a

    .line 990
    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_5a

    .line 993
    :cond_71
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_79

    if-eq p2, v11, :cond_5a

    .line 1001
    :cond_79
    if-eqz p2, :cond_89

    .line 1002
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    .line 1003
    .local v4, "oldActivity":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-nez v8, :cond_89

    .line 1004
    const/4 v8, -0x1

    invoke-direct {p0, v0, v4, v8}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1007
    .end local v4    # "oldActivity":Landroid/content/ComponentName;
    :cond_89
    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_5a

    .line 1011
    .end local v2    # "newActivity":Landroid/content/ComponentName;
    .end local v3    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "original":Landroid/content/pm/ShortcutInfo;
    :cond_8d
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_93
    if-ltz v1, :cond_a5

    .line 1012
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->enforceMaxActivityShortcuts(I)V

    .line 1011
    add-int/lit8 v1, v1, -0x1

    goto :goto_93

    .line 955
    :cond_a5
    return-void
.end method

.method public ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 194
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;)V

    .line 193
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 192
    :cond_18
    return-void
.end method

.method public ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 188
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;)V

    .line 187
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 186
    :cond_14
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V
    .registers 10
    .param p3, "cloneFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    .line 502
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V
    .registers 15
    .param p3, "cloneFlag"    # I
    .param p4, "callingLauncher"    # Ljava/lang/String;
    .param p5, "launcherUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 518
    return-void

    .line 521
    :cond_b
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v6, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 524
    .local v4, "s":Lcom/android/server/pm/ShortcutService;
    if-nez p4, :cond_3a

    const/4 v3, 0x0

    .line 528
    :goto_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_69

    .line 529
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 534
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz p4, :cond_4f

    .line 535
    if-eqz v3, :cond_51

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 537
    :goto_2f
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 538
    if-nez v2, :cond_53

    .line 528
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 525
    .end local v1    # "i":I
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v6

    invoke-virtual {v4, p4, v6, p5}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v6

    .line 526
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v8

    .line 525
    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v3

    .local v3, "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_12

    .line 534
    .end local v3    # "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_4f
    const/4 v2, 0x1

    .local v2, "isPinnedByCaller":Z
    goto :goto_2f

    .line 535
    .end local v2    # "isPinnedByCaller":Z
    :cond_51
    const/4 v2, 0x0

    .restart local v2    # "isPinnedByCaller":Z
    goto :goto_2f

    .line 542
    .end local v2    # "isPinnedByCaller":Z
    :cond_53
    invoke-virtual {v5, p3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 546
    .local v0, "clone":Landroid/content/pm/ShortcutInfo;
    if-nez v2, :cond_5d

    .line 547
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 549
    :cond_5d
    if-eqz p2, :cond_65

    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 550
    :cond_65
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 515
    .end local v0    # "clone":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_69
    return-void
.end method

.method public findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method getAllShortcutsForTest()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getApiCallCount()I
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 425
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 431
    .local v4, "s":Lcom/android/server/pm/ShortcutService;
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v5

    if-nez v5, :cond_19

    .line 432
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 433
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->getUidLastForegroundElapsedTimeLocked(I)J

    move-result-wide v8

    .line 432
    cmp-long v5, v6, v8

    if-gez v5, :cond_22

    .line 434
    :cond_19
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 435
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 442
    :cond_22
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v0

    .line 444
    .local v0, "last":J
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v2

    .line 445
    .local v2, "now":J
    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v5

    if-eqz v5, :cond_46

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v6, v2

    if-lez v5, :cond_46

    .line 446
    const-string/jumbo v5, "ShortcutService"

    const-string/jumbo v6, "Clock rewound"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iput-wide v2, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 449
    iput v10, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 450
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5

    .line 454
    :cond_46
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v6, v0

    if-gez v5, :cond_50

    .line 459
    iput v10, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 460
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 462
    :cond_50
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5
.end method

.method public getOwnerUserId()I
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v0

    return v0
.end method

.method public getPackageResources()Landroid/content/res/Resources;
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 150
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    return v0
.end method

.method public getUsedBitmapFiles()Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 565
    .local v2, "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_31

    .line 566
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 567
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 568
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/ShortcutPackage;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 571
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_31
    return-object v2
.end method

.method public hasNonManifestShortcuts()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1138
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1e

    .line 1139
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 1140
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1141
    const/4 v2, 0x1

    return v2

    .line 1138
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1144
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1e
    return v3
.end method

.method protected onRestoreBlocked()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 154
    return-void
.end method

.method protected onRestored()V
    .registers 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 160
    return-void
.end method

.method public refreshPinnedFlags()V
    .registers 4

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_19

    .line 388
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 387
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 392
    :cond_19
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 393
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    .line 392
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 415
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 385
    return-void
.end method

.method public rescanPackageIfNeeded(ZZ)Z
    .registers 22
    .param p1, "isNewApp"    # Z
    .param p2, "forceRescan"    # Z

    .prologue
    .line 627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v10, v14, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 628
    .local v10, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v12

    .line 632
    .local v12, "start":J
    :try_start_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v14, v14, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v16

    .line 632
    invoke-virtual/range {v14 .. v16}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_82

    move-result-object v8

    .line 634
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    if-nez v8, :cond_25

    .line 635
    const/4 v14, 0x0

    .line 665
    const/16 v15, 0xe

    invoke-virtual {v10, v15, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 635
    return v14

    .line 640
    :cond_25
    :try_start_25
    const-string/jumbo v14, "com.android.settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_82

    move-result v5

    .line 642
    .local v5, "isSettings":Z
    if-nez p1, :cond_34

    if-eqz p2, :cond_57

    .line 659
    :cond_34
    if-eqz v5, :cond_36

    .line 665
    :cond_36
    const/16 v14, 0xe

    invoke-virtual {v10, v14, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 669
    const/4 v7, 0x0

    .line 671
    .local v7, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v14, v14, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v16

    .line 671
    invoke-static/range {v14 .. v16}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Ljava/util/List;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_4d} :catch_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_4d} :catch_89

    move-result-object v7

    .line 676
    .end local v7    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :goto_4e
    if-nez v7, :cond_94

    const/4 v6, 0x0

    .line 682
    .local v6, "manifestShortcutSize":I
    :goto_51
    if-eqz p1, :cond_99

    if-nez v6, :cond_99

    .line 687
    const/4 v14, 0x0

    return v14

    .line 642
    .end local v6    # "manifestShortcutSize":I
    :cond_57
    if-nez v5, :cond_34

    .line 653
    :try_start_59
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()I

    move-result v14

    iget v15, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v14, v15, :cond_34

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/ShortcutPackageInfo;->getLastUpdateTime()J

    move-result-wide v14

    iget-wide v0, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_34

    .line 655
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->areAllActivitiesStillEnabled()Z
    :try_end_78
    .catchall {:try_start_59 .. :try_end_78} :catchall_82

    move-result v14

    .line 653
    if-eqz v14, :cond_34

    .line 656
    const/4 v14, 0x0

    .line 665
    const/16 v15, 0xe

    invoke-virtual {v10, v15, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 656
    return v14

    .line 664
    .end local v5    # "isSettings":Z
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_82
    move-exception v14

    .line 665
    const/16 v15, 0xe

    invoke-virtual {v10, v15, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 664
    throw v14

    .line 673
    .restart local v5    # "isSettings":Z
    .restart local v7    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v8    # "pi":Landroid/content/pm/PackageInfo;
    :catch_89
    move-exception v3

    .line 674
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "ShortcutService"

    const-string/jumbo v15, "Failed to load shortcuts from AndroidManifest.xml."

    invoke-static {v14, v15, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 677
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_94
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .restart local v6    # "manifestShortcutSize":I
    goto :goto_51

    .line 695
    :cond_99
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/android/server/pm/ShortcutPackageInfo;->updateVersionInfo(Landroid/content/pm/PackageInfo;)V

    .line 697
    const/4 v2, 0x0

    .line 701
    .local v2, "changed":Z
    if-nez p1, :cond_117

    .line 702
    const/4 v9, 0x0

    .line 704
    .local v9, "publisherRes":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    .end local v9    # "publisherRes":Landroid/content/res/Resources;
    .local v4, "i":I
    :goto_ae
    if-ltz v4, :cond_117

    .line 705
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ShortcutInfo;

    .line 707
    .local v11, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v14

    if-eqz v14, :cond_103

    .line 708
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v15

    invoke-virtual {v10, v14, v15}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v14

    if-nez v14, :cond_102

    .line 709
    const-string/jumbo v14, "ShortcutService"

    .line 710
    const-string/jumbo v15, "%s is no longer main activity. Disabling shorcut %s."

    .line 709
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v16, v18

    .line 709
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/pm/ShortcutPackage;->disableDynamicWithId(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_102

    .line 704
    :cond_ff
    :goto_ff
    add-int/lit8 v4, v4, -0x1

    goto :goto_ae

    .line 717
    :cond_102
    const/4 v2, 0x1

    .line 720
    :cond_103
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->hasAnyResources()Z

    move-result v14

    if-eqz v14, :cond_ff

    .line 721
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v14

    if-nez v14, :cond_139

    .line 722
    if-nez v9, :cond_136

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 724
    .local v9, "publisherRes":Landroid/content/res/Resources;
    if-nez v9, :cond_136

    .line 741
    .end local v4    # "i":I
    .end local v9    # "publisherRes":Landroid/content/res/Resources;
    .end local v11    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_117
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/pm/ShortcutPackage;->publishManifestShortcuts(Ljava/util/List;)Z

    move-result v14

    or-int/2addr v2, v14

    .line 743
    .local v2, "changed":Z
    if-eqz v7, :cond_125

    .line 744
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->pushOutExcessShortcuts()Z

    move-result v14

    or-int/2addr v2, v14

    .line 747
    :cond_125
    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 749
    if-eqz v2, :cond_142

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v15

    invoke-virtual {v10, v14, v15}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 756
    :goto_135
    return v2

    .line 732
    .local v2, "changed":Z
    .restart local v4    # "i":I
    .restart local v11    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_136
    invoke-virtual {v11, v9}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceIds(Landroid/content/res/Resources;)V

    .line 734
    :cond_139
    const/4 v2, 0x1

    .line 735
    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    goto :goto_ff

    .line 754
    .end local v4    # "i":I
    .end local v11    # "si":Landroid/content/pm/ShortcutInfo;
    .local v2, "changed":Z
    :cond_142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    goto :goto_135
.end method

.method public resetRateLimiting()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 487
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-lez v0, :cond_12

    .line 488
    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 489
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 483
    :cond_12
    return-void
.end method

.method public resetRateLimitingForCommandLineNoSaving()V
    .registers 3

    .prologue
    .line 494
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 495
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 493
    return-void
.end method

.method public resetThrottling()V
    .registers 2

    .prologue
    .line 556
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 555
    return-void
.end method

.method public resolveResourceStrings()V
    .registers 9

    .prologue
    .line 1020
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1021
    .local v3, "s":Lcom/android/server/pm/ShortcutService;
    const/4 v0, 0x0

    .line 1023
    .local v0, "changed":Z
    const/4 v2, 0x0

    .line 1024
    .local v2, "publisherRes":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .end local v2    # "publisherRes":Landroid/content/res/Resources;
    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_27

    .line 1025
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1027
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1028
    const/4 v0, 0x1

    .line 1030
    if-nez v2, :cond_35

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1032
    .local v2, "publisherRes":Landroid/content/res/Resources;
    if-nez v2, :cond_35

    .line 1041
    .end local v2    # "publisherRes":Landroid/content/res/Resources;
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_27
    if-eqz v0, :cond_34

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1019
    :cond_34
    return-void

    .line 1037
    .restart local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_35
    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 1038
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1024
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1250
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1252
    .local v1, "size":I
    if-nez v1, :cond_e

    iget v2, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-nez v2, :cond_e

    .line 1253
    return-void

    .line 1256
    :cond_e
    const-string/jumbo v2, "package"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1258
    const-string/jumbo v2, "name"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1259
    const-string/jumbo v2, "call-count"

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    int-to-long v4, v3

    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1260
    const-string/jumbo v2, "last-reset"

    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1263
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_37
    if-ge v0, v1, :cond_47

    .line 1264
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1, v2, p2}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;Z)V

    .line 1263
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 1267
    :cond_47
    const-string/jumbo v2, "package"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1249
    return-void
.end method

.method public tryApiCall()Z
    .registers 4

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 475
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount()I

    move-result v1

    iget v2, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    if-lt v1, v2, :cond_e

    .line 476
    const/4 v1, 0x0

    return v1

    .line 478
    :cond_e
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 479
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 480
    const/4 v1, 0x1

    return v1
.end method

.method public verifyStates()V
    .registers 12

    .prologue
    .line 1522
    invoke-super {p0}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    .line 1524
    const/4 v2, 0x0

    .line 1527
    .local v2, "failed":Z
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1530
    .local v0, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "outer":I
    :goto_e
    if-ltz v6, :cond_9a

    .line 1531
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1532
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v9, v9, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v9

    if-le v8, v9, :cond_6e

    .line 1533
    const/4 v2, 0x1

    .line 1534
    const-string/jumbo v9, "ShortcutService.verify"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ": activity "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1535
    const-string/jumbo v10, " has "

    .line 1534
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1535
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1534
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1535
    const-string/jumbo v10, " shortcuts."

    .line 1534
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_6e
    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;

    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1542
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1543
    .local v1, "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;

    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1545
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1546
    .local v5, "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;

    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1548
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 1549
    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 1530
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_e

    .line 1553
    .end local v1    # "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v5    # "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :cond_9a
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_a2
    if-ltz v3, :cond_284

    .line 1554
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1555
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    if-nez v8, :cond_24a

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_24a

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    :goto_bc
    if-nez v8, :cond_f3

    .line 1556
    const/4 v2, 0x1

    .line 1557
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1558
    const-string/jumbo v10, " is not manifest, dynamic or pinned."

    .line 1557
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_f3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    if-eqz v8, :cond_134

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_134

    .line 1561
    const/4 v2, 0x1

    .line 1562
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1563
    const-string/jumbo v10, " is both dynamic and manifest at the same time."

    .line 1562
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_134
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_16f

    .line 1566
    const/4 v2, 0x1

    .line 1567
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1568
    const-string/jumbo v10, " has null activity."

    .line 1567
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_16f
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_17b

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_181

    :cond_17b
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_24d

    .line 1575
    :cond_181
    :goto_181
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_1ca

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v8

    if-eqz v8, :cond_1ca

    .line 1576
    const/4 v2, 0x1

    .line 1577
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1578
    const-string/jumbo v10, " is floating, but has rank="

    .line 1577
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1578
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v10

    .line 1577
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_1ca
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-eqz v8, :cond_205

    .line 1581
    const/4 v2, 0x1

    .line 1582
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1583
    const-string/jumbo v10, " still has an icon"

    .line 1582
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_205
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v8

    if-eqz v8, :cond_246

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v8

    if-eqz v8, :cond_246

    .line 1586
    const/4 v2, 0x1

    .line 1587
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1588
    const-string/jumbo v10, " has both resource and bitmap icons"

    .line 1587
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_246
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_a2

    .line 1555
    :cond_24a
    const/4 v8, 0x1

    goto/16 :goto_bc

    .line 1571
    :cond_24d
    const/4 v2, 0x1

    .line 1572
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1573
    const-string/jumbo v10, " is not floating, but is disabled."

    .line 1572
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_181

    .line 1592
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_284
    if-eqz v2, :cond_28f

    .line 1593
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "See logcat for errors"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1521
    :cond_28f
    return-void
.end method
