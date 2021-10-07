.class public Lcom/android/server/ThemeService;
.super Landroid/app/IThemeService$Stub;
.source "ThemeService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThemeService$ThemeObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/IThemeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mObserver:Lcom/android/server/ThemeService$ThemeObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/ThemeService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/ThemeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ThemeService;->dispatchCallbackAdded()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/ThemeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ThemeService;->dispatchThemeSettingChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/android/server/ThemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/IThemeService$Stub;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/android/server/ThemeService$ThemeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/ThemeService$ThemeObserver;-><init>(Lcom/android/server/ThemeService;)V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mObserver:Lcom/android/server/ThemeService$ThemeObserver;

    .line 53
    iget-object v0, p0, Lcom/android/server/ThemeService;->mObserver:Lcom/android/server/ThemeService$ThemeObserver;

    invoke-virtual {v0}, Lcom/android/server/ThemeService$ThemeObserver;->register()V

    .line 50
    return-void
.end method

.method private dispatchCallbackAdded()V
    .registers 7

    .prologue
    .line 164
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 165
    iget-object v4, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IThemeCallback;

    .line 167
    .local v0, "callback":Landroid/app/IThemeCallback;
    if-eqz v0, :cond_22

    .line 168
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/ThemeService;->getAccentColor()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/ThemeService;->getTheme(I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/app/IThemeCallback;->onCallbackAdded(II)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_22} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_22} :catch_25

    .line 164
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    :catch_25
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NullPointer while calling onCallbackAdded: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 163
    .end local v0    # "callback":Landroid/app/IThemeCallback;
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2f
    return-void

    .line 170
    .restart local v0    # "callback":Landroid/app/IThemeCallback;
    :catch_30
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_22
.end method

.method private dispatchThemeSettingChanged()V
    .registers 7

    .prologue
    .line 179
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 180
    iget-object v4, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IThemeCallback;

    .line 182
    .local v0, "callback":Landroid/app/IThemeCallback;
    if-eqz v0, :cond_22

    .line 183
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/ThemeService;->getAccentColor()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/ThemeService;->getTheme(I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/app/IThemeCallback;->onThemeChanged(II)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_22} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_22} :catch_25

    .line 179
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 187
    :catch_25
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NullPointer while calling onCallbackAdded: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 178
    .end local v0    # "callback":Landroid/app/IThemeCallback;
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2f
    return-void

    .line 185
    .restart local v0    # "callback":Landroid/app/IThemeCallback;
    :catch_30
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_22
.end method

.method private getAccentColor()I
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    const-string/jumbo v1, "theme_accent_color"

    const/4 v2, 0x0

    .line 152
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPrimaryTheme(I)I
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_10

    .line 142
    :pswitch_3
    const v0, 0x10302fa

    return v0

    .line 136
    :pswitch_7
    const v0, 0x10302f5

    return v0

    .line 138
    :pswitch_b
    const v0, 0x10302f8

    return v0

    .line 134
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_b
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private getTheme(I)I
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    const/4 v0, 0x1

    .line 89
    .local v0, "isDarkMode":Z
    :goto_8
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    const/4 v1, 0x1

    .line 90
    .local v1, "isGreymode":Z
    :goto_10
    packed-switch p1, :pswitch_data_b0

    .line 129
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/ThemeService;->getPrimaryTheme(I)I

    move-result v2

    return v2

    .line 88
    .end local v0    # "isDarkMode":Z
    .end local v1    # "isGreymode":Z
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "isDarkMode":Z
    goto :goto_8

    .line 89
    :cond_1e
    const/4 v1, 0x0

    .restart local v1    # "isGreymode":Z
    goto :goto_10

    .line 92
    :pswitch_20
    if-eqz v0, :cond_26

    const v2, 0x103030e

    :goto_25
    return v2

    .line 93
    :cond_26
    if-eqz v1, :cond_2c

    const v2, 0x103030f

    goto :goto_25

    .line 94
    :cond_2c
    const v2, 0x1030310

    goto :goto_25

    .line 96
    :pswitch_30
    if-eqz v0, :cond_36

    const v2, 0x1030326

    :goto_35
    return v2

    .line 97
    :cond_36
    if-eqz v1, :cond_3c

    const v2, 0x1030327

    goto :goto_35

    .line 98
    :cond_3c
    const v2, 0x1030328

    goto :goto_35

    .line 100
    :pswitch_40
    if-eqz v0, :cond_46

    const v2, 0x1030302

    :goto_45
    return v2

    .line 101
    :cond_46
    if-eqz v1, :cond_4c

    const v2, 0x1030303

    goto :goto_45

    .line 102
    :cond_4c
    const v2, 0x1030304

    goto :goto_45

    .line 104
    :pswitch_50
    if-eqz v0, :cond_56

    const v2, 0x1030314

    :goto_55
    return v2

    .line 105
    :cond_56
    if-eqz v1, :cond_5c

    const v2, 0x1030315

    goto :goto_55

    .line 106
    :cond_5c
    const v2, 0x1030316

    goto :goto_55

    .line 108
    :pswitch_60
    if-eqz v0, :cond_66

    const v2, 0x1030308

    :goto_65
    return v2

    .line 109
    :cond_66
    if-eqz v1, :cond_6c

    const v2, 0x1030309

    goto :goto_65

    .line 110
    :cond_6c
    const v2, 0x103030a

    goto :goto_65

    .line 112
    :pswitch_70
    if-eqz v0, :cond_76

    const v2, 0x10302fc

    :goto_75
    return v2

    .line 113
    :cond_76
    if-eqz v1, :cond_7c

    const v2, 0x10302fd

    goto :goto_75

    .line 114
    :cond_7c
    const v2, 0x10302fe

    goto :goto_75

    .line 116
    :pswitch_80
    if-eqz v0, :cond_86

    const v2, 0x1030320

    :goto_85
    return v2

    .line 117
    :cond_86
    if-eqz v1, :cond_8c

    const v2, 0x1030321

    goto :goto_85

    .line 118
    :cond_8c
    const v2, 0x1030322

    goto :goto_85

    .line 120
    :pswitch_90
    if-eqz v0, :cond_96

    const v2, 0x103031a

    :goto_95
    return v2

    .line 121
    :cond_96
    if-eqz v1, :cond_9c

    const v2, 0x103031b

    goto :goto_95

    .line 122
    :cond_9c
    const v2, 0x103031c

    goto :goto_95

    .line 124
    :pswitch_a0
    if-eqz v0, :cond_a6

    const v2, 0x103032c

    :goto_a5
    return v2

    .line 125
    :cond_a6
    if-eqz v1, :cond_ac

    const v2, 0x103032d

    goto :goto_a5

    .line 126
    :cond_ac
    const v2, 0x103032e

    goto :goto_a5

    .line 90
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_30
        :pswitch_40
        :pswitch_50
        :pswitch_60
        :pswitch_70
        :pswitch_80
        :pswitch_90
        :pswitch_a0
    .end packed-switch
.end method

.method private getThemeMode()I
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "theme_primary_color"

    const/4 v2, 0x0

    .line 147
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static returnToDefaultTheme(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "theme_primary_color"

    .line 157
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "theme_accent_color"

    .line 159
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/app/IThemeCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/IThemeCallback;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 80
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 81
    iget-object v0, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_10
    invoke-direct {p0}, Lcom/android/server/ThemeService;->dispatchCallbackAdded()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 78
    return-void

    .line 79
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public binderDied()V
    .registers 8

    .prologue
    .line 58
    iget-object v5, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_8
    if-ltz v4, :cond_49

    .line 59
    iget-object v5, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IThemeCallback;

    .line 61
    .local v0, "callback":Landroid/app/IThemeCallback;
    :try_start_12
    iget-object v5, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/ThemeService;->returnToDefaultTheme(Landroid/content/Context;)V

    .line 62
    if-eqz v0, :cond_28

    .line 63
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/ThemeService;->getAccentColor()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/ThemeService;->getTheme(I)I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/app/IThemeCallback;->onThemeChanged(II)V
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_28} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_28} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_28} :catch_2b

    .line 58
    :cond_28
    :goto_28
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 69
    :catch_2b
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/NullPointerException;
    sget-object v5, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "NullPointer while calling onThemeChanged: "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 67
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_35
    move-exception v2

    .line 68
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed to call onThemeChanged: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 65
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_3f
    move-exception v1

    .line 66
    .local v1, "e":Landroid/os/DeadObjectException;
    sget-object v5, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Death object while calling onThemeChanged: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 73
    .end local v0    # "callback":Landroid/app/IThemeCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_49
    iget-object v5, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 74
    iget-object v5, p0, Lcom/android/server/ThemeService;->mObserver:Lcom/android/server/ThemeService$ThemeObserver;

    invoke-virtual {v5}, Lcom/android/server/ThemeService$ThemeObserver;->unregister()V

    .line 57
    return-void
.end method
