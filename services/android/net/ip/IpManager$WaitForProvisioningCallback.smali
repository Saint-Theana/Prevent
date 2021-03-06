.class public Landroid/net/ip/IpManager$WaitForProvisioningCallback;
.super Landroid/net/ip/IpManager$Callback;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitForProvisioningCallback"
.end annotation


# instance fields
.field private mCallbackLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/net/ip/IpManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 154
    monitor-enter p0

    .line 155
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 156
    invoke-virtual {p0}, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 153
    return-void

    .line 154
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_1
    iput-object p1, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 148
    invoke-virtual {p0}, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->notify()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 145
    return-void

    .line 146
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForProvisioning()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 136
    monitor-enter p0

    .line 138
    :try_start_1
    invoke-virtual {p0}, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_8
    .catchall {:try_start_1 .. :try_end_4} :catchall_a

    .line 140
    :goto_4
    :try_start_4
    iget-object v1, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_a

    monitor-exit p0

    return-object v1

    .line 139
    :catch_8
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_4

    .line 136
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_a
    move-exception v1

    monitor-exit p0

    throw v1
.end method
