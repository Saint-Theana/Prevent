.class final synthetic Lcom/android/server/pm/PackageManagerServiceUtils$-void_sortPackagesByUsageDate_java_util_List_pkgs_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_sortPackagesByUsageDate_java_util_List_pkgs_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/PackageParser$Package;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->-com_android_server_pm_PackageManagerServiceUtils_lambda$1(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    return v0
.end method
