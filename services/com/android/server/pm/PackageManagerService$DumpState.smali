.class Lcom/android/server/pm/PackageManagerService$DumpState;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DumpState"
.end annotation


# static fields
.field public static final DUMP_ACTIVITY_RESOLVERS:I = 0x4

.field public static final DUMP_COMPILER_STATS:I = 0x200000

.field public static final DUMP_CONTENT_RESOLVERS:I = 0x20

.field public static final DUMP_DEXOPT:I = 0x100000

.field public static final DUMP_DOMAIN_PREFERRED:I = 0x40000

.field public static final DUMP_FEATURES:I = 0x2

.field public static final DUMP_FROZEN:I = 0x80000

.field public static final DUMP_INSTALLS:I = 0x10000

.field public static final DUMP_INTENT_FILTER_VERIFIERS:I = 0x20000

.field public static final DUMP_KEYSETS:I = 0x4000

.field public static final DUMP_LIBS:I = 0x1

.field public static final DUMP_MESSAGES:I = 0x200

.field public static final DUMP_PACKAGES:I = 0x80

.field public static final DUMP_PERMISSIONS:I = 0x40

.field public static final DUMP_PREFERRED:I = 0x1000

.field public static final DUMP_PREFERRED_XML:I = 0x2000

.field public static final DUMP_PROVIDERS:I = 0x400

.field public static final DUMP_RECEIVER_RESOLVERS:I = 0x10

.field public static final DUMP_SERVICE_RESOLVERS:I = 0x8

.field public static final DUMP_SHARED_USERS:I = 0x100

.field public static final DUMP_VERIFIERS:I = 0x800

.field public static final DUMP_VERSION:I = 0x8000

.field public static final OPTION_SHOW_FILTERS:I = 0x1


# instance fields
.field private mOptions:I

.field private mSharedUser:Lcom/android/server/pm/SharedUserSetting;

.field private mTitlePrinted:Z

.field private mTypes:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 18459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSharedUser()Lcom/android/server/pm/SharedUserSetting;
    .registers 2

    .prologue
    .line 18528
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    return-object v0
.end method

.method public getTitlePrinted()Z
    .registers 2

    .prologue
    .line 18520
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    return v0
.end method

.method public isDumping(I)Z
    .registers 5
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18494
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    if-nez v2, :cond_b

    const/16 v2, 0x2000

    if-eq p1, v2, :cond_b

    .line 18495
    return v0

    .line 18498
    :cond_b
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public isOptionEnabled(I)Z
    .registers 4
    .param p1, "option"    # I

    .prologue
    const/4 v0, 0x0

    .line 18506
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public onTitlePrinted()Z
    .registers 3

    .prologue
    .line 18514
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    .line 18515
    .local v0, "printed":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    .line 18516
    return v0
.end method

.method public setDump(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 18502
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    .line 18501
    return-void
.end method

.method public setOptionEnabled(I)V
    .registers 3
    .param p1, "option"    # I

    .prologue
    .line 18510
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    .line 18509
    return-void
.end method

.method public setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V
    .registers 2
    .param p1, "user"    # Lcom/android/server/pm/SharedUserSetting;

    .prologue
    .line 18532
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 18531
    return-void
.end method

.method public setTitlePrinted(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 18524
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    .line 18523
    return-void
.end method
