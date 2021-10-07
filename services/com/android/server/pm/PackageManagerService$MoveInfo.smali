.class Lcom/android/server/pm/PackageManagerService$MoveInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MoveInfo"
.end annotation


# instance fields
.field final appId:I

.field final dataAppName:Ljava/lang/String;

.field final fromUuid:Ljava/lang/String;

.field final moveId:I

.field final packageName:Ljava/lang/String;

.field final seinfo:Ljava/lang/String;

.field final targetSdkVersion:I

.field final toUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 9
    .param p1, "moveId"    # I
    .param p2, "fromUuid"    # Ljava/lang/String;
    .param p3, "toUuid"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "dataAppName"    # Ljava/lang/String;
    .param p6, "appId"    # I
    .param p7, "seinfo"    # Ljava/lang/String;
    .param p8, "targetSdkVersion"    # I

    .prologue
    .line 12922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12924
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->moveId:I

    .line 12925
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    .line 12926
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    .line 12927
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    .line 12928
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    .line 12929
    iput p6, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->appId:I

    .line 12930
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->seinfo:Ljava/lang/String;

    .line 12931
    iput p8, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->targetSdkVersion:I

    .line 12923
    return-void
.end method
