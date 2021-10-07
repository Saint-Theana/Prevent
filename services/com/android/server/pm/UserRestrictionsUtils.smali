.class public Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "UserRestrictionsUtils.java"


# static fields
.field private static final DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UserRestrictionsUtils"

.field public static final USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "no_config_wifi"

    aput-object v1, v0, v3

    .line 69
    const-string/jumbo v1, "no_modify_accounts"

    aput-object v1, v0, v4

    .line 70
    const-string/jumbo v1, "no_install_apps"

    aput-object v1, v0, v5

    .line 71
    const-string/jumbo v1, "no_uninstall_apps"

    aput-object v1, v0, v6

    .line 72
    const-string/jumbo v1, "no_share_location"

    aput-object v1, v0, v7

    .line 73
    const-string/jumbo v1, "no_install_unknown_sources"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "no_config_bluetooth"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "no_usb_file_transfer"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "no_config_credentials"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "no_remove_user"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "no_debugging_features"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "no_config_vpn"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "no_config_tethering"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "no_network_reset"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "no_factory_reset"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "no_add_user"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "ensure_verify_apps"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "no_config_cell_broadcasts"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "no_config_mobile_networks"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "no_control_apps"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "no_physical_media"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "no_unmute_microphone"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "no_adjust_volume"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "no_outgoing_calls"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "no_sms"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "no_fun"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "no_create_windows"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "no_cross_profile_copy_paste"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "no_outgoing_beam"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "no_wallpaper"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "no_safe_boot"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "allow_parent_profile_app_linking"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "no_record_audio"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "no_camera"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "no_run_in_background"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "no_data_roaming"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 104
    const-string/jumbo v1, "no_set_user_icon"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 105
    const-string/jumbo v1, "no_set_wallpaper"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 106
    const-string/jumbo v1, "no_oem_unlock"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 107
    const-string/jumbo v1, "disallow_unmute_device"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "no_su"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 67
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    .line 115
    const-string/jumbo v1, "no_record_audio"

    aput-object v1, v0, v3

    .line 114
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    .line 121
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "no_usb_file_transfer"

    aput-object v1, v0, v3

    .line 123
    const-string/jumbo v1, "no_config_tethering"

    aput-object v1, v0, v4

    .line 124
    const-string/jumbo v1, "no_network_reset"

    aput-object v1, v0, v5

    .line 125
    const-string/jumbo v1, "no_factory_reset"

    aput-object v1, v0, v6

    .line 126
    const-string/jumbo v1, "no_add_user"

    aput-object v1, v0, v7

    .line 127
    const-string/jumbo v1, "no_config_cell_broadcasts"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "no_config_mobile_networks"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "no_physical_media"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "no_sms"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "no_fun"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "no_safe_boot"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "no_create_windows"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "no_data_roaming"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "no_su"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 121
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 141
    new-array v0, v6, [Ljava/lang/String;

    .line 142
    const-string/jumbo v1, "no_record_audio"

    aput-object v1, v0, v3

    .line 143
    const-string/jumbo v1, "no_wallpaper"

    aput-object v1, v0, v4

    .line 144
    const-string/jumbo v1, "no_oem_unlock"

    aput-object v1, v0, v5

    .line 141
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    .line 151
    new-array v0, v7, [Ljava/lang/String;

    .line 152
    const-string/jumbo v1, "no_adjust_volume"

    aput-object v1, v0, v3

    .line 153
    const-string/jumbo v1, "no_run_in_background"

    aput-object v1, v0, v4

    .line 154
    const-string/jumbo v1, "no_unmute_microphone"

    aput-object v1, v0, v5

    .line 155
    const-string/jumbo v1, "disallow_unmute_device"

    aput-object v1, v0, v6

    .line 151
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 53
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Z

    .prologue
    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 342
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 344
    .local v4, "id":J
    :try_start_8
    const-string/jumbo v10, "no_config_wifi"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 346
    if-eqz p3, :cond_1a

    .line 348
    const-string/jumbo v10, "wifi_networks_available_notification_on"

    .line 349
    const/4 v11, 0x0

    .line 347
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_63

    .line 452
    :cond_1a
    :goto_1a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    return-void

    .line 344
    :cond_1e
    :try_start_1e
    const-string/jumbo v10, "no_data_roaming"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 353
    if-eqz p3, :cond_1a

    .line 357
    new-instance v9, Landroid/telephony/SubscriptionManager;

    invoke-direct {v9, p0}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    .line 359
    .local v9, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    .line 360
    .local v8, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v8, :cond_13b

    .line 361
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "subInfo$iterator":Ljava/util/Iterator;
    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 363
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "data_roaming"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 364
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    .line 363
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 364
    const-string/jumbo v11, "0"

    .line 362
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_62
    .catchall {:try_start_1e .. :try_end_62} :catchall_63

    goto :goto_38

    .line 451
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v7    # "subInfo$iterator":Ljava/util/Iterator;
    .end local v8    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v9    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :catchall_63
    move-exception v10

    .line 452
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    throw v10

    .line 344
    :cond_68
    :try_start_68
    const-string/jumbo v10, "no_share_location"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 374
    if-eqz p3, :cond_1a

    .line 376
    const-string/jumbo v10, "location_mode"

    .line 377
    const/4 v11, 0x0

    .line 375
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1a

    .line 344
    :cond_7b
    const-string/jumbo v10, "no_debugging_features"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_92

    .line 382
    if-eqz p3, :cond_1a

    .line 385
    if-nez p1, :cond_1a

    .line 387
    const-string/jumbo v10, "adb_enabled"

    const-string/jumbo v11, "0"

    .line 386
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1a

    .line 344
    :cond_92
    const-string/jumbo v10, "ensure_verify_apps"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b9

    .line 393
    if-eqz p3, :cond_1a

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 396
    const-string/jumbo v11, "package_verifier_enable"

    const-string/jumbo v12, "1"

    .line 394
    invoke-static {v10, v11, v12, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 400
    const-string/jumbo v11, "verifier_verify_adb_installs"

    const-string/jumbo v12, "1"

    .line 398
    invoke-static {v10, v11, v12, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1a

    .line 344
    :cond_b9
    const-string/jumbo v10, "no_install_unknown_sources"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cd

    .line 405
    if-eqz p3, :cond_1a

    .line 407
    const-string/jumbo v10, "install_non_market_apps"

    const/4 v11, 0x0

    .line 406
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1a

    .line 344
    :cond_cd
    const-string/jumbo v10, "no_run_in_background"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f1

    .line 412
    if-eqz p3, :cond_1a

    .line 413
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_db
    .catchall {:try_start_68 .. :try_end_db} :catchall_63

    move-result v1

    .line 414
    .local v1, "currentUser":I
    if-eq v1, p1, :cond_1a

    if-eqz p1, :cond_1a

    .line 416
    :try_start_e0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, p1, v11, v12}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_e9} :catch_eb
    .catchall {:try_start_e0 .. :try_end_e9} :catchall_63

    goto/16 :goto_1a

    .line 417
    :catch_eb
    move-exception v2

    .line 418
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_ec
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v10

    throw v10

    .line 344
    .end local v1    # "currentUser":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_f1
    const-string/jumbo v10, "no_safe_boot"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_109

    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 431
    const-string/jumbo v12, "safe_boot_disallowed"

    .line 432
    if-eqz p3, :cond_146

    const/4 v10, 0x1

    .line 429
    :goto_104
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1a

    .line 344
    :cond_109
    const-string/jumbo v10, "no_factory_reset"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_131

    .line 436
    :goto_112
    if-eqz p3, :cond_1a

    .line 438
    const-string/jumbo v10, "persistent_data_block"

    .line 437
    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 439
    .local v3, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v3, :cond_1a

    .line 440
    invoke-virtual {v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v10

    .line 439
    if-eqz v10, :cond_1a

    .line 441
    invoke-virtual {v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v10

    if-eqz v10, :cond_1a

    .line 446
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    goto/16 :goto_1a

    .line 344
    .end local v3    # "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    :cond_131
    const-string/jumbo v10, "no_oem_unlock"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_112

    .line 370
    .restart local v8    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_13b
    const-string/jumbo v10, "data_roaming"

    const-string/jumbo v11, "0"

    .line 369
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_144
    .catchall {:try_start_ec .. :try_end_144} :catchall_63

    goto/16 :goto_1a

    .line 432
    .end local v8    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v9    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_146
    const/4 v10, 0x0

    goto :goto_104
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 308
    sget-object v4, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 310
    .local v2, "newValue":Z
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 312
    .local v3, "prevValue":Z
    if-eq v2, v3, :cond_6

    .line 313
    invoke-static {p0, p1, v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_6

    .line 307
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Z
    .end local v3    # "prevValue":Z
    :cond_20
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8
    .param p0, "a"    # Landroid/os/Bundle;
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 278
    if-ne p0, p1, :cond_5

    .line 279
    return v5

    .line 281
    :cond_5
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 282
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    return v2

    .line 284
    :cond_10
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 285
    return v4

    .line 287
    :cond_17
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_1f

    .line 289
    return v4

    .line 292
    .end local v0    # "key":Ljava/lang/String;
    :cond_36
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_3e

    .line 294
    return v4

    .line 297
    .end local v0    # "key":Ljava/lang/String;
    :cond_55
    return v5
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .registers 2
    .param p0, "restriction"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "restriction"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 247
    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 248
    if-eqz p1, :cond_14

    .line 249
    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 248
    if-eqz v1, :cond_14

    .line 247
    :cond_13
    :goto_13
    return v0

    .line 248
    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static clone(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "in"    # Landroid/os/Bundle;

    .prologue
    .line 219
    if-eqz p0, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_7
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;

    .prologue
    .line 457
    const/4 v2, 0x1

    .line 458
    .local v2, "noneSet":Z
    if-eqz p2, :cond_4e

    .line 459
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    .local v0, "key":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    const/4 v2, 0x0

    goto :goto_b

    .line 465
    .end local v0    # "key":Ljava/lang/String;
    :cond_34
    if-eqz v2, :cond_4d

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_4d
    :goto_4d
    return-void

    .line 469
    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4d
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .registers 4
    .param p0, "in"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .registers 4
    .param p0, "restriction"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 163
    const-string/jumbo v0, "UserRestrictionsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown restriction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "dest"    # Landroid/os/Bundle;
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    if-eq p0, p1, :cond_e

    move v2, v3

    :goto_8
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 225
    if-nez p1, :cond_10

    .line 226
    return-void

    :cond_e
    move v2, v4

    .line 224
    goto :goto_8

    .line 228
    :cond_10
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 230
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_18

    .line 222
    .end local v0    # "key":Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method private static newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p0, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 63
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    array-length v2, p0

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    :goto_c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 64
    return-object v0

    .line 63
    :cond_10
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 1
    .param p0, "in"    # Landroid/os/Bundle;

    .prologue
    .line 204
    if-eqz p0, :cond_3

    .end local p0    # "in":Landroid/os/Bundle;
    :goto_2
    return-object p0

    .restart local p0    # "in":Landroid/os/Bundle;
    :cond_3
    new-instance p0, Landroid/os/Bundle;

    .end local p0    # "in":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_2
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 192
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 195
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_7

    .line 191
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_21
    return-void
.end method

.method public static sortToGlobalAndLocal(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "in"    # Landroid/os/Bundle;
    .param p1, "global"    # Landroid/os/Bundle;
    .param p2, "local"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 258
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 259
    :cond_9
    return-void

    .line 261
    :cond_a
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 265
    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 266
    :cond_34
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_12

    .line 268
    :cond_38
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_12

    .line 257
    .end local v0    # "key":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method public static writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 171
    if-nez p1, :cond_4

    .line 172
    return-void

    .line 175
    :cond_4
    invoke-interface {p0, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 180
    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 182
    const-string/jumbo v2, "true"

    invoke-interface {p0, v5, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .line 186
    :cond_38
    const-string/jumbo v2, "UserRestrictionsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown user restriction detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 188
    .end local v0    # "key":Ljava/lang/String;
    :cond_53
    invoke-interface {p0, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    return-void
.end method
