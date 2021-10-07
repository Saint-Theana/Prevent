.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 354
    new-instance v0, Lcom/android/server/backup/Trampoline;

    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    .line 352
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .prologue
    .line 359
    const-string/jumbo v0, "backup"

    sget-object v1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 358
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 364
    if-nez p1, :cond_5c

    .line 365
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/Trampoline;->initialize(I)V

    .line 368
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap4(I)Z

    move-result v3

    if-nez v3, :cond_53

    .line 370
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v6, "Backup enable apparently not migrated"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v3, v3, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 374
    .local v2, "r":Landroid/content/ContentResolver;
    const-string/jumbo v3, "backup_enabled"

    const/4 v6, -0x1

    .line 373
    invoke-static {v2, v3, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 375
    .local v1, "enableState":I
    if-ltz v1, :cond_61

    .line 377
    const-string/jumbo v6, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Migrating enable state "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_5d

    move v3, v4

    :goto_3c
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v1, :cond_5f

    :goto_49
    invoke-static {v4, p1}, Lcom/android/server/backup/BackupManagerService;->-wrap20(ZI)V

    .line 381
    const-string/jumbo v3, "backup_enabled"

    const/4 v4, 0x0

    .line 380
    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 390
    .end local v1    # "enableState":I
    .end local v2    # "r":Landroid/content/ContentResolver;
    :cond_53
    :goto_53
    :try_start_53
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap5(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/Trampoline;->setBackupEnabled(Z)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5c} :catch_6b

    .line 363
    :cond_5c
    :goto_5c
    return-void

    .restart local v1    # "enableState":I
    .restart local v2    # "r":Landroid/content/ContentResolver;
    :cond_5d
    move v3, v5

    .line 377
    goto :goto_3c

    :cond_5f
    move v4, v5

    .line 379
    goto :goto_49

    .line 384
    :cond_61
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Backup not yet configured; retaining null enable state"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 391
    .end local v1    # "enableState":I
    .end local v2    # "r":Landroid/content/ContentResolver;
    :catch_6b
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5c
.end method
