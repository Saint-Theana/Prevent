.class Lcom/android/server/pm/PackageManagerService$8;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$finishedReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$flags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$targetPkg:Ljava/lang/String;

.field final synthetic val$userIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/IIntentReceiver;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$userIds"    # [I
    .param p3, "val$action"    # Ljava/lang/String;
    .param p4, "val$pkg"    # Ljava/lang/String;
    .param p5, "val$extras"    # Landroid/os/Bundle;
    .param p6, "val$targetPkg"    # Ljava/lang/String;
    .param p7, "val$flags"    # I
    .param p8, "val$finishedReceiver"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 11593
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/pm/PackageManagerService$8;->val$flags:I

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 11597
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 11598
    .local v2, "am":Landroid/app/IActivityManager;
    if-nez v2, :cond_7

    return-void

    .line 11600
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    if-nez v3, :cond_a3

    .line 11601
    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v17

    .line 11605
    .local v17, "resolvedUserIds":[I
    :goto_11
    const/4 v3, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v19, v3

    :goto_19
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b0

    aget v15, v17, v19

    .line 11606
    .local v15, "id":I
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$8;->val$action:Ljava/lang/String;

    .line 11607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    if-eqz v3, :cond_ab

    const-string/jumbo v3, "package"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 11606
    :goto_39
    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11608
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    if-eqz v3, :cond_49

    .line 11609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 11611
    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    if-eqz v3, :cond_56

    .line 11612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11615
    :cond_56
    const-string/jumbo v3, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 11616
    .local v18, "uid":I
    if-lez v18, :cond_76

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, v15, :cond_76

    .line 11617
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v15, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v18

    .line 11618
    const-string/jumbo v3, "android.intent.extra.UID"

    move/from16 v0, v18

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11620
    :cond_76
    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11621
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$flags:I

    const/high16 v5, 0x4000000

    or-int/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11629
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    .line 11631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    if-eqz v3, :cond_ad

    const/4 v13, 0x1

    .line 11629
    :goto_91
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 11630
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 11631
    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 11629
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 11605
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    goto/16 :goto_19

    .line 11603
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v17    # "resolvedUserIds":[I
    .end local v18    # "uid":I
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    move-object/from16 v17, v0
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a9} :catch_af

    .restart local v17    # "resolvedUserIds":[I
    goto/16 :goto_11

    .line 11607
    .restart local v15    # "id":I
    :cond_ab
    const/4 v3, 0x0

    goto :goto_39

    .line 11631
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v18    # "uid":I
    :cond_ad
    const/4 v13, 0x0

    goto :goto_91

    .line 11633
    .end local v2    # "am":Landroid/app/IActivityManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v17    # "resolvedUserIds":[I
    .end local v18    # "uid":I
    :catch_af
    move-exception v16

    .line 11595
    :cond_b0
    return-void
.end method
