.class Lcom/android/server/backup/BackupManagerService$ClearParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearParams"
.end annotation


# instance fields
.field public packageInfo:Landroid/content/pm/PackageInfo;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ClearParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 516
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 514
    return-void
.end method
