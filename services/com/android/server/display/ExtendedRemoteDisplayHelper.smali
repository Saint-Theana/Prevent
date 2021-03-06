.class Lcom/android/server/display/ExtendedRemoteDisplayHelper;
.super Ljava/lang/Object;
.source "ExtendedRemoteDisplayHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedRemoteDisplayHelper"

.field private static sExtRemoteDisplayClass:Ljava/lang/Class;

.field private static sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

.field private static sExtRemoteDisplayListen:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 61
    :try_start_0
    const-string/jumbo v2, "com.qualcomm.wfd.ExtendedRemoteDisplay"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_47

    .line 66
    .local v1, "t":Ljava/lang/Throwable;
    :goto_9
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v2, :cond_46

    .line 68
    const-string/jumbo v2, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v3, "ExtendedRemoteDisplay Is available. Find Methods"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v2, 0x4

    :try_start_17
    new-array v0, v2, [Ljava/lang/Class;

    .line 71
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 72
    const-class v2, Landroid/media/RemoteDisplay$Listener;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 73
    const-class v2, Landroid/os/Handler;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 75
    .end local v1    # "t":Ljava/lang/Throwable;
    .local v0, "args":[Ljava/lang/Class;
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string/jumbo v3, "listen"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_38} :catch_52

    .line 81
    .end local v0    # "args":[Ljava/lang/Class;
    :goto_38
    const/4 v2, 0x0

    :try_start_39
    new-array v0, v2, [Ljava/lang/Class;

    .line 82
    .restart local v0    # "args":[Ljava/lang/Class;
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string/jumbo v3, "dispose"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_46} :catch_5d

    .line 39
    .end local v0    # "args":[Ljava/lang/Class;
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_46
    :goto_46
    return-void

    .line 62
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_47
    move-exception v1

    .line 63
    .restart local v1    # "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v3, "ExtendedRemoteDisplay Not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 76
    :catch_52
    move-exception v1

    .line 77
    const-string/jumbo v2, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v3, "ExtendedRemoteDisplay.listen Not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 83
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_5d
    move-exception v1

    .line 84
    .restart local v1    # "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v3, "ExtendedRemoteDisplay.dispose Not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispose(Ljava/lang/Object;)V
    .registers 6
    .param p0, "extRemoteDisplay"    # Ljava/lang/Object;

    .prologue
    .line 130
    const-string/jumbo v3, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v4, "ExtendedRemoteDisplay.dispose"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_9
    sget-object v3, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_11} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_11} :catch_12

    .line 129
    :goto_11
    return-void

    .line 143
    :catch_12
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v4, "ExtendedRemoteDisplay.dispose-IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_11

    .line 133
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_20
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v3, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v4, "ExtendedRemoteDisplay.dispose - InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 136
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_35

    .line 137
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 138
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_35
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_3c

    .line 139
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 141
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_3c
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isAvailable()Z
    .registers 2

    .prologue
    .line 154
    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v0, :cond_17

    .line 155
    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    .line 156
    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    .line 157
    const-string/jumbo v0, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v1, "ExtendedRemoteDisplay isAvailable() : Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_17
    const-string/jumbo v0, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v1, "ExtendedRemoteDisplay isAvailable() : Not Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Landroid/content/Context;)Ljava/lang/Object;
    .registers 11
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, "extRemoteDisplay":Ljava/lang/Object;
    const-string/jumbo v4, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v5, "ExtendedRemoteDisplay.listen"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v4, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_28

    sget-object v4, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_28

    .line 106
    :try_start_12
    sget-object v4, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 107
    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    .line 106
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_27} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_27} :catch_29

    move-result-object v3

    .line 123
    .end local v3    # "extRemoteDisplay":Ljava/lang/Object;
    :cond_28
    :goto_28
    return-object v3

    .line 118
    .restart local v3    # "extRemoteDisplay":Ljava/lang/Object;
    :catch_29
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v5, "ExtendedRemoteDisplay.listen -IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    .line 108
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_37
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v5, "ExtendedRemoteDisplay.listen - InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 111
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_4c

    .line 112
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 113
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_4c
    instance-of v4, v0, Ljava/lang/Error;

    if-eqz v4, :cond_53

    .line 114
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 116
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_53
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
