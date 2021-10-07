.class public Lcom/android/server/NetPluginDelegate;
.super Ljava/lang/Object;
.source "NetPluginDelegate.java"


# static fields
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnectivityExtension"

.field private static tetherExtensionClass:Ljava/lang/Class;

.field private static tetherExtensionObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    .line 50
    sput-object v0, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTetherStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .registers 9
    .param p0, "uidStats"    # Landroid/net/NetworkStats;
    .param p1, "devStats"    # Landroid/net/NetworkStats;
    .param p2, "xtStats"    # Landroid/net/NetworkStats;

    .prologue
    .line 55
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 57
    :cond_7
    :try_start_7
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "getTetherStats"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/net/NetworkStats;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 58
    const-class v4, Landroid/net/NetworkStats;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Landroid/net/NetworkStats;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 57
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 58
    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 59
    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_33} :catch_42
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_33} :catch_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_33} :catch_42
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_34

    .line 53
    :goto_33
    return-void

    .line 63
    :catch_34
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Error calling getTetherStats Method on extension jar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_42
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Failed to invoke getTetherStats()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method private static declared-synchronized loadTetherExtJar()Z
    .registers 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-class v7, Lcom/android/server/NetPluginDelegate;

    monitor-enter v7

    .line 154
    :try_start_5
    const-string/jumbo v4, "com.qualcomm.qti.tetherstatsextension.TetherStatsReporting"

    .line 155
    .local v4, "realProvider":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 156
    const-string/jumbo v8, "/framework/ConnectivityExt.jar"

    .line 155
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "realProviderPath":Ljava/lang/String;
    sget-object v6, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    if-eqz v6, :cond_2e

    sget-object v6, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_86

    if-eqz v6, :cond_2e

    monitor-exit v7

    .line 158
    return v10

    .line 160
    :cond_2e
    :try_start_2e
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    .line 161
    .local v3, "pathExists":Z
    if-nez v3, :cond_44

    .line 162
    const-string/jumbo v6, "ConnectivityExtension"

    const-string/jumbo v8, "ConnectivityExt jar file not present"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_86

    monitor-exit v7

    .line 163
    return v9

    .line 166
    :cond_44
    :try_start_44
    sget-object v6, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    if-nez v6, :cond_66

    sget-object v6, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_86

    if-nez v6, :cond_66

    .line 169
    :try_start_4c
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 170
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 169
    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 172
    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.qualcomm.qti.tetherstatsextension.TetherStatsReporting"

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    .line 173
    sget-object v6, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4c .. :try_end_66} :catch_77
    .catch Ljava/lang/InstantiationException; {:try_start_4c .. :try_end_66} :catch_77
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c .. :try_end_66} :catch_77
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_66} :catch_68
    .catchall {:try_start_4c .. :try_end_66} :catchall_86

    .end local v0    # "classLoader":Ldalvik/system/PathClassLoader;
    :cond_66
    monitor-exit v7

    .line 185
    return v10

    .line 179
    :catch_68
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    :try_start_69
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    const-string/jumbo v6, "ConnectivityExtension"

    const-string/jumbo v8, "unable to load ConnectivityExt jar"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_86

    monitor-exit v7

    .line 182
    return v9

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_77
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :try_start_78
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 177
    const-string/jumbo v6, "ConnectivityExtension"

    const-string/jumbo v8, "Failed to find, instantiate or access ConnectivityExt jar "

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_78 .. :try_end_84} :catchall_86

    monitor-exit v7

    .line 178
    return v9

    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v3    # "pathExists":Z
    .end local v5    # "realProviderPath":Ljava/lang/String;
    :catchall_86
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static natStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "intIface"    # Ljava/lang/String;
    .param p1, "extIface"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 92
    :cond_7
    :try_start_7
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "natStarted"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 93
    sget-object v2, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 92
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 93
    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 92
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_2b} :catch_3a
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_2b} :catch_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_2b} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_2c

    .line 88
    :goto_2b
    return-void

    .line 97
    :catch_2c
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Error calling natStarted Method on extension jar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3a
    move-exception v0

    .line 95
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Failed to invoke natStarted()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public static natStopped(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "intIface"    # Ljava/lang/String;
    .param p1, "extIface"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 108
    :cond_7
    :try_start_7
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "natStopped"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 109
    sget-object v2, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 108
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 109
    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 108
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_2b} :catch_3a
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_2b} :catch_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_2b} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_2c

    .line 104
    :goto_2b
    return-void

    .line 113
    :catch_2c
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Error calling natStopped Method on extension jar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3a
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Failed to invoke natStopped()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public static peekTetherStats()Landroid/net/NetworkStats;
    .registers 6

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "ret_val":Landroid/net/NetworkStats;
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()Z

    move-result v3

    if-nez v3, :cond_8

    return-object v2

    .line 75
    :cond_8
    :try_start_8
    sget-object v3, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v4, "peekTetherStats"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 76
    sget-object v4, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 75
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/NetworkStats;

    move-object v2, v0
    :try_end_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_21} :catch_30
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_21} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_21} :catch_30
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_22

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    :goto_21
    return-object v2

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_22
    move-exception v1

    .line 81
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const-string/jumbo v3, "ConnectivityExtension"

    const-string/jumbo v4, "Error calling peekTetherStats Method on extension jar"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_30
    move-exception v1

    .line 78
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const-string/jumbo v3, "ConnectivityExtension"

    const-string/jumbo v4, "Failed to invoke peekTetherStats()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public static setQuota(Ljava/lang/String;J)V
    .registers 10
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "quota"    # J

    .prologue
    .line 122
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 124
    :cond_7
    :try_start_7
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "setQuota"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 125
    sget-object v2, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 124
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 125
    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 124
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_2f} :catch_3e
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_2f} :catch_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_2f} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2f} :catch_30

    .line 120
    :goto_2f
    return-void

    .line 129
    :catch_30
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Error calling setQuota Method on extension jar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3e
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Failed to invoke setQuota()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public static setUpstream(Landroid/net/Network;)V
    .registers 7
    .param p0, "net"    # Landroid/net/Network;

    .prologue
    .line 138
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 140
    :cond_7
    :try_start_7
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "setUpstream"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/net/Network;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 141
    sget-object v2, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 140
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 141
    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 140
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_23} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_23} :catch_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_23} :catch_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_24

    .line 136
    :goto_23
    return-void

    .line 145
    :catch_24
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Error calling setUpstream Method on extension jar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_32
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Failed to invoke setUpstream()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method
