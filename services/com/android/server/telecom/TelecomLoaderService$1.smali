.class Lcom/android/server/telecom/TelecomLoaderService$1;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get4(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 208
    :try_start_9
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get5(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 209
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v1

    if-nez v1, :cond_23

    .line 210
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    invoke-static {v1, v3}, Lcom/android/server/telecom/TelecomLoaderService;->-set2(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;

    .line 212
    :cond_23
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_45

    monitor-exit v2

    .line 213
    return-object v4

    :cond_2e
    monitor-exit v2

    .line 217
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v1

    .line 216
    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 218
    .local v0, "smsComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_48

    .line 219
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    return-object v1

    .line 207
    .end local v0    # "smsComponent":Landroid/content/ComponentName;
    :catchall_45
    move-exception v1

    monitor-exit v2

    throw v1

    .line 221
    .restart local v0    # "smsComponent":Landroid/content/ComponentName;
    :cond_48
    return-object v4
.end method
