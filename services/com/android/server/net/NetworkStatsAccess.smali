.class public final Lcom/android/server/net/NetworkStatsAccess;
.super Ljava/lang/Object;
.source "NetworkStatsAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsAccess$Level;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 108
    const-class v7, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 107
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 110
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const-string/jumbo v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 109
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 111
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_33

    .line 112
    invoke-virtual {v5, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_31

    const/4 v2, 0x1

    .line 114
    .local v2, "hasCarrierPrivileges":Z
    :goto_1c
    if-eqz v0, :cond_35

    .line 115
    const/4 v7, -0x2

    .line 114
    invoke-virtual {v0, p1, v7}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    .line 116
    :goto_23
    if-nez v2, :cond_2f

    if-nez v3, :cond_2f

    .line 117
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_37

    .line 120
    :cond_2f
    const/4 v6, 0x3

    return v6

    .line 112
    .end local v2    # "hasCarrierPrivileges":Z
    :cond_31
    const/4 v2, 0x0

    .restart local v2    # "hasCarrierPrivileges":Z
    goto :goto_1c

    .line 111
    .end local v2    # "hasCarrierPrivileges":Z
    :cond_33
    const/4 v2, 0x0

    .restart local v2    # "hasCarrierPrivileges":Z
    goto :goto_1c

    .line 114
    :cond_35
    const/4 v3, 0x0

    .local v3, "isDeviceOwner":Z
    goto :goto_23

    .line 123
    .end local v3    # "isDeviceOwner":Z
    :cond_37
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkStatsAccess;->hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    .line 124
    .local v1, "hasAppOpsPermission":Z
    if-nez v1, :cond_46

    .line 125
    const-string/jumbo v7, "android.permission.READ_NETWORK_USAGE_HISTORY"

    .line 124
    invoke-virtual {p0, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_48

    .line 126
    :cond_46
    const/4 v6, 0x2

    return v6

    .line 129
    :cond_48
    if-eqz v0, :cond_52

    .line 130
    const/4 v7, -0x1

    .line 129
    invoke-virtual {v0, p1, v7}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v4

    .line 131
    .local v4, "isProfileOwner":Z
    :goto_4f
    if-eqz v4, :cond_54

    .line 134
    return v9

    .end local v4    # "isProfileOwner":Z
    :cond_52
    move v4, v6

    .line 129
    goto :goto_4f

    .line 138
    .restart local v4    # "isProfileOwner":Z
    :cond_54
    return v6
.end method

.method private static hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 173
    if-eqz p2, :cond_27

    .line 175
    const-string/jumbo v5, "appops"

    .line 174
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 177
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v5, 0x2b

    invoke-virtual {v0, v5, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    .line 179
    .local v1, "mode":I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_22

    .line 183
    const-string/jumbo v5, "android.permission.PACKAGE_USAGE_STATS"

    .line 182
    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "permissionCheck":I
    if-nez v2, :cond_20

    :goto_1f
    return v3

    :cond_20
    move v3, v4

    goto :goto_1f

    .line 186
    .end local v2    # "permissionCheck":I
    :cond_22
    if-nez v1, :cond_25

    :goto_24
    return v3

    :cond_25
    move v3, v4

    goto :goto_24

    .line 188
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v1    # "mode":I
    :cond_27
    return v4
.end method

.method public static isAccessibleToUser(III)Z
    .registers 8
    .param p0, "uid"    # I
    .param p1, "callerUid"    # I
    .param p2, "accessLevel"    # I

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, -0x4

    const/4 v2, -0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 147
    packed-switch p2, :pswitch_data_38

    .line 167
    if-ne p0, p1, :cond_36

    :goto_b
    return v0

    .line 150
    :pswitch_c
    return v0

    .line 155
    :pswitch_d
    if-eq p0, v4, :cond_11

    if-ne p0, v3, :cond_12

    :cond_11
    :goto_11
    return v0

    .line 156
    :cond_12
    if-eq p0, v2, :cond_11

    const/4 v2, -0x1

    if-eq p0, v2, :cond_11

    .line 157
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v2, v3, :cond_11

    move v0, v1

    goto :goto_11

    .line 161
    :pswitch_23
    if-eq p0, v4, :cond_27

    if-ne p0, v3, :cond_28

    :cond_27
    :goto_27
    return v0

    .line 162
    :cond_28
    if-eq p0, v2, :cond_27

    .line 163
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v2, v3, :cond_27

    move v0, v1

    goto :goto_27

    :cond_36
    move v0, v1

    .line 167
    goto :goto_b

    .line 147
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_23
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
