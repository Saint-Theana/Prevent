.class Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
        ">;"
    }
.end annotation


# instance fields
.field lastBackup:J

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "when"    # J

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    .line 662
    iput-wide p3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    .line 660
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/backup/BackupManagerService$FullBackupEntry;)I
    .registers 6
    .param p1, "other"    # Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .prologue
    .line 667
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    iget-wide v2, p1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, -0x1

    return v0

    .line 668
    :cond_a
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    iget-wide v2, p1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    return v0

    .line 669
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 666
    check-cast p1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->compareTo(Lcom/android/server/backup/BackupManagerService$FullBackupEntry;)I

    move-result v0

    return v0
.end method
