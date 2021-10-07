.class Lcom/android/server/pm/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$ref_currentTime:J

.field final synthetic val$ref_file:Ljava/io/File;

.field final synthetic val$ref_parseFlags:I

.field final synthetic val$ref_scanFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJ)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$ref_file"    # Ljava/io/File;
    .param p3, "val$ref_parseFlags"    # I
    .param p4, "val$ref_scanFlags"    # I
    .param p5, "val$ref_currentTime"    # J

    .prologue
    .line 6788
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_parseFlags:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_scanFlags:I

    iput-wide p5, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_currentTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 6791
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_parseFlags:I

    or-int/lit8 v2, v2, 0x4

    .line 6792
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_scanFlags:I

    iget-wide v4, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_currentTime:J

    const/4 v6, 0x0

    .line 6791
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->-wrap2(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
    :try_end_10
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_10} :catch_11

    .line 6789
    :cond_10
    :goto_10
    return-void

    .line 6793
    :catch_11
    move-exception v7

    .line 6794
    .local v7, "e":Lcom/android/server/pm/PackageManagerException;
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6797
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_parseFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_10

    .line 6798
    iget v0, v7, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_10

    .line 6799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Deleting invalid package at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->logCriticalInfo(ILjava/lang/String;)V

    .line 6800
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    goto :goto_10
.end method
