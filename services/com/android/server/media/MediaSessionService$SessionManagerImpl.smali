.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    const/4 v0, 0x0

    .line 641
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 646
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 647
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 1091
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 1161
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 641
    return-void
.end method

.method private dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    .registers 12
    .param p1, "suggestedStream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/4 v3, 0x0

    .line 893
    const/4 v6, 0x0

    .line 894
    .local v6, "preferSuggestedStream":Z
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 895
    invoke-static {p1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 894
    if-eqz v0, :cond_f

    .line 896
    const/4 v6, 0x1

    .line 898
    :cond_f
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 899
    const-string/jumbo v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adjusting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 900
    const-string/jumbo v2, ", suggestedStream="

    .line 899
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 901
    const-string/jumbo v2, ", preferSuggestedStream="

    .line 899
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_5b
    if-eqz p4, :cond_5f

    if-eqz v6, :cond_89

    .line 904
    :cond_5f
    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_6a

    .line 905
    const/4 v0, 0x3

    invoke-static {v0, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 917
    :cond_6a
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;III)V

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 892
    :goto_78
    return-void

    .line 906
    :cond_79
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 907
    const-string/jumbo v0, "MediaSessionService"

    const-string/jumbo v1, "No active session to adjust, skipping media only volume event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_88
    return-void

    .line 930
    :cond_89
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 931
    const/16 v4, 0x3e8

    const/4 v5, 0x1

    move-object v0, p4

    move v1, p2

    move v2, p3

    .line 930
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(IILjava/lang/String;IZ)V

    goto :goto_78
.end method

.method private dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .registers 22
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 967
    if-eqz p3, :cond_60

    .line 968
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get1()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 969
    const-string/jumbo v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_31
    if-eqz p2, :cond_3a

    .line 972
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 977
    :cond_3a
    if-eqz p2, :cond_5e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-get0(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v3

    .line 978
    :goto_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 979
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 978
    const/16 v5, 0x3e8

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    .line 976
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;ILjava/lang/String;)V

    .line 966
    :goto_5d
    return-void

    .line 977
    :cond_5e
    const/4 v3, -0x1

    goto :goto_44

    .line 982
    :cond_60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "userId$iterator":Ljava/util/Iterator;
    :cond_6c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 983
    .local v16, "userId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 984
    .local v15, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_98

    .line 985
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 988
    :cond_98
    if-eqz p2, :cond_a1

    .line 989
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 991
    :cond_a1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 992
    .local v4, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 993
    const-string/jumbo v1, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 995
    :try_start_b6
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_115

    .line 996
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get1()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 997
    const-string/jumbo v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 998
    const-string/jumbo v3, " to the last known pendingIntent "

    .line 997
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 999
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 997
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_ed
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1002
    if-eqz p2, :cond_113

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-get0(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v3

    .line 1003
    :goto_103
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v6

    .line 1001
    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1017
    :goto_112
    return-void

    .line 1002
    :cond_113
    const/4 v3, -0x1

    goto :goto_103

    .line 1005
    :cond_115
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get1()Z

    move-result v1

    if-eqz v1, :cond_146

    .line 1006
    const-string/jumbo v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to the restored intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1007
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1006
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_146
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1011
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1010
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_b6 .. :try_end_15c} :catch_15d

    goto :goto_112

    .line 1013
    :catch_15d
    move-exception v14

    .line 1014
    .local v14, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error sending key event to media button receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1015
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1014
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_112

    .line 1019
    .end local v4    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v14    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v15    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v16    # "userId":I
    :cond_17d
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 1020
    const-string/jumbo v1, "MediaSessionService"

    const-string/jumbo v2, "Sending media key ordered broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_18c
    if-eqz p2, :cond_199

    .line 1023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1026
    :cond_199
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1027
    .local v6, "keyIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1028
    const-string/jumbo v1, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1029
    if-eqz p2, :cond_1b9

    .line 1030
    const-string/jumbo v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1033
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1034
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1033
    invoke-virtual/range {v5 .. v13}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_5d
.end method

.method private handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .registers 10
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 937
    if-eqz p3, :cond_10

    const/high16 v3, 0x10000

    invoke-virtual {p3, v3}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 939
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 940
    return-void

    .line 942
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 943
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2a

    const/4 v2, 0x1

    .line 944
    .local v2, "isLongPress":Z
    :goto_1d
    if-nez v0, :cond_3c

    .line 945
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2c

    .line 946
    iput-boolean v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 947
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 936
    :cond_29
    :goto_29
    return-void

    .line 943
    .end local v2    # "isLongPress":Z
    :cond_2a
    const/4 v2, 0x0

    .restart local v2    # "isLongPress":Z
    goto :goto_1d

    .line 948
    :cond_2c
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v3, :cond_29

    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v3, :cond_29

    if-eqz v2, :cond_29

    .line 949
    iput-boolean v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 950
    invoke-direct {p0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    goto :goto_29

    .line 952
    :cond_3c
    if-ne v0, v5, :cond_29

    .line 953
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v3, :cond_29

    .line 954
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 955
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v3, :cond_29

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_29

    .line 957
    invoke-static {p1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 958
    .local v1, "downEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 959
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    goto :goto_29
.end method

.method private isUserSetupComplete()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1081
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1082
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    .line 1081
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method private isValidLocalStreamType(I)Z
    .registers 4
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1087
    if-ltz p1, :cond_7

    .line 1088
    const/4 v1, 0x5

    if-gt p1, v1, :cond_7

    const/4 v0, 0x1

    .line 1087
    :cond_7
    return v0
.end method

.method private isVoiceKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 1077
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private startVoiceInput(Z)V
    .registers 9
    .param p1, "needWakeLock"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1039
    const/4 v3, 0x0

    .line 1045
    .local v3, "voiceIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1046
    .local v2, "pm":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v5

    if-eqz v5, :cond_85

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 1047
    .local v1, "isLocked":Z
    :goto_23
    if-nez v1, :cond_87

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 1048
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v3, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "MediaSessionService"

    const-string/jumbo v5, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :goto_3c
    if-eqz p1, :cond_47

    .line 1058
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1061
    :cond_47
    if-eqz v3, :cond_79

    .line 1062
    const/high16 v4, 0x10800000

    :try_start_4b
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1064
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_6e

    const-string/jumbo v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "voiceIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_6e
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_79
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4b .. :try_end_79} :catch_ab
    .catchall {:try_start_4b .. :try_end_79} :catchall_d2

    .line 1070
    :cond_79
    if-eqz p1, :cond_84

    .line 1071
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1038
    :cond_84
    :goto_84
    return-void

    .end local v1    # "isLocked":Z
    .local v3, "voiceIntent":Landroid/content/Intent;
    :cond_85
    move v1, v4

    .line 1046
    goto :goto_23

    .line 1051
    .restart local v1    # "isLocked":Z
    :cond_87
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v3, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.speech.extras.EXTRA_SECURE"

    .line 1053
    if-eqz v1, :cond_9e

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    .line 1052
    :cond_9e
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1054
    const-string/jumbo v4, "MediaSessionService"

    const-string/jumbo v5, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1067
    :catch_ab
    move-exception v0

    .line 1068
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_ac
    const-string/jumbo v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No activity for search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_ac .. :try_end_c6} :catchall_d2

    .line 1070
    if-eqz p1, :cond_84

    .line 1071
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_84

    .line 1069
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_d2
    move-exception v4

    .line 1070
    if-eqz p1, :cond_de

    .line 1071
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1069
    :cond_de
    throw v4
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .registers 13
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 874
    const/4 v6, 0x0

    .line 875
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_d

    .line 878
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 879
    .local v6, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v6, p4}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 884
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_d
    const-string/jumbo v5, "getSessions"

    move v0, p3

    move v1, p4

    move v2, p2

    move v4, v3

    .line 883
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 887
    .local v7, "resolvedUserId":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1, p3, p4, v7}, Lcom/android/server/media/MediaSessionService;->-wrap3(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    .line 888
    return v7
.end method


# virtual methods
.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .registers 16
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 696
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 697
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 700
    .local v10, "token":J
    :try_start_c
    invoke-direct {p0, p2, p3, v5, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 701
    .local v4, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_5f

    .line 702
    :try_start_17
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v8

    .line 703
    .local v8, "index":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_2e

    .line 704
    const-string/jumbo v1, "MediaSessionService"

    const-string/jumbo v2, "ActiveSessionsListener is already added, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_5c

    :try_start_29
    monitor-exit v9
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_5f

    .line 718
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    return-void

    .line 707
    :cond_2e
    :try_start_2e
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_5c

    .line 710
    .local v0, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_37
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3f} :catch_4d
    .catchall {:try_start_37 .. :try_end_3f} :catchall_5c

    .line 715
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_5c

    :try_start_48
    monitor-exit v9
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_5f

    .line 718
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    return-void

    .line 711
    :catch_4d
    move-exception v7

    .line 712
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4e
    const-string/jumbo v1, "MediaSessionService"

    const-string/jumbo v2, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_5c

    :try_start_57
    monitor-exit v9
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_5f

    .line 718
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 713
    return-void

    .line 701
    .end local v0    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "index":I
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v9

    throw v1
    :try_end_5f
    .catchall {:try_start_5d .. :try_end_5f} :catchall_5f

    .line 717
    .end local v4    # "resolvedUserId":I
    :catchall_5f
    move-exception v1

    .line 718
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 717
    throw v1
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;
    .registers 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 653
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 654
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 656
    .local v10, "token":J
    :try_start_c
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2, p1, v1}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 658
    const-string/jumbo v5, "createSession"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move/from16 v2, p4

    move-object v6, p1

    .line 657
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 659
    .local v5, "resolvedUserId":I
    if-nez p2, :cond_2d

    .line 660
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Controller callback cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_28

    .line 664
    .end local v5    # "resolvedUserId":I
    :catchall_28
    move-exception v2

    .line 665
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    throw v2

    .line 662
    .restart local v5    # "resolvedUserId":I
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move v3, v0

    move v4, v1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->-wrap0(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_28

    move-result-object v2

    .line 665
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 662
    return-object v2
.end method

.method public dispatchAdjustVolume(III)V
    .registers 10
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    .prologue
    .line 810
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 812
    .local v2, "token":J
    :try_start_4
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_26

    .line 813
    :try_start_b
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    .line 814
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v5

    .line 813
    invoke-virtual {v1, v5}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession(Ljava/util/List;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 815
    .local v0, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_23

    :try_start_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_26

    .line 818
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 809
    return-void

    .line 812
    .end local v0    # "session":Lcom/android/server/media/MediaSessionRecord;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v4

    throw v1
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_26

    .line 817
    :catchall_26
    move-exception v1

    .line 818
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    throw v1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 16
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 750
    if-eqz p1, :cond_61

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-static {v9}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 755
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 756
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 757
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 759
    .local v2, "token":J
    :try_start_18
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 760
    const-string/jumbo v9, "MediaSessionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "dispatchMediaKeyEvent, pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", event="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v9

    if-nez v9, :cond_6b

    .line 766
    const-string/jumbo v9, "MediaSessionService"

    const-string/jumbo v10, "Not dispatching media key event because user setup is in progress."

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_18 .. :try_end_5d} :catchall_106

    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 768
    return-void

    .line 751
    .end local v0    # "pid":I
    .end local v2    # "token":J
    .end local v4    # "uid":I
    :cond_61
    const-string/jumbo v9, "MediaSessionService"

    const-string/jumbo v10, "Attempted to dispatch null or non-media key event."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void

    .line 770
    .restart local v0    # "pid":I
    .restart local v2    # "token":J
    .restart local v4    # "uid":I
    :cond_6b
    :try_start_6b
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isGlobalPriorityActive()Z

    move-result v9

    if-eqz v9, :cond_82

    const/16 v9, 0x3e8

    if-eq v4, v9, :cond_82

    .line 773
    const-string/jumbo v9, "MediaSessionService"

    const-string/jumbo v10, "Only the system can dispatch media key event to the global priority session."

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_6b .. :try_end_7e} :catchall_106

    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    return-void

    .line 778
    :cond_82
    :try_start_82
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_106

    .line 781
    const/4 v6, 0x1

    .line 782
    .local v6, "useNotPlayingSessions":Z
    :try_start_8a
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "userId$iterator":Ljava/util/Iterator;
    :cond_94
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_bd

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 783
    .local v7, "userId":I
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 784
    .local v5, "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v9

    if-nez v9, :cond_bc

    .line 785
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_94

    .line 786
    :cond_bc
    const/4 v6, 0x0

    .line 791
    .end local v5    # "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v7    # "userId":I
    :cond_bd
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v9

    if-eqz v9, :cond_dd

    .line 792
    const-string/jumbo v9, "MediaSessionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "dispatchMediaKeyEvent, useNotPlayingSessions="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_dd
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v9

    .line 796
    iget-object v11, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v11}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v11

    .line 795
    invoke-virtual {v9, v11, v6}, Lcom/android/server/media/MediaSessionStack;->getDefaultMediaButtonSession(Ljava/util/List;Z)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 797
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v9

    if-eqz v9, :cond_ff

    .line 798
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    :try_end_fa
    .catchall {:try_start_8a .. :try_end_fa} :catchall_103

    :goto_fa
    :try_start_fa
    monitor-exit v10
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_106

    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 749
    return-void

    .line 800
    :cond_ff
    :try_start_ff
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_103

    goto :goto_fa

    .line 778
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v8    # "userId$iterator":Ljava/util/Iterator;
    :catchall_103
    move-exception v9

    :try_start_104
    monitor-exit v10

    throw v9
    :try_end_106
    .catchall {:try_start_104 .. :try_end_106} :catchall_106

    .line 803
    .end local v6    # "useNotPlayingSessions":Z
    :catchall_106
    move-exception v9

    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 803
    throw v9
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 842
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3a

    .line 844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: can\'t dump MediaSessionService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 845
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 844
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 846
    const-string/jumbo v4, ", uid="

    .line 844
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 846
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 844
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    return-void

    .line 850
    :cond_3a
    const-string/jumbo v3, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 853
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 854
    :try_start_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " sessions listeners."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get2(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 856
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " Sessions:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8d
    if-ge v1, v0, :cond_a7

    .line 858
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get2(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v5, ""

    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 859
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    .line 861
    :cond_a7
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 863
    const-string/jumbo v3, "User Records:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 865
    const/4 v1, 0x0

    :goto_c4
    if-ge v1, v0, :cond_e5

    .line 866
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 867
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    const-string/jumbo v3, ""

    invoke-virtual {v2, p2, v3}, Lcom/android/server/media/MediaSessionService$UserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_e2
    .catchall {:try_start_4a .. :try_end_e2} :catchall_e7

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    .end local v2    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :cond_e5
    monitor-exit v4

    .line 841
    return-void

    .line 853
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_e7
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 14
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 672
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 673
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 676
    .local v6, "token":J
    :try_start_c
    invoke-direct {p0, p1, p2, v2, v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 677
    .local v4, "resolvedUserId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v0, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_49

    .line 679
    :try_start_1c
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 681
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 682
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v5, :cond_41

    .line 683
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v9

    invoke-interface {v9}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_46

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_41
    :try_start_41
    monitor-exit v10
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_49

    .line 688
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    return-object v0

    .line 678
    .end local v1    # "i":I
    .end local v3    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v5    # "size":I
    :catchall_46
    move-exception v9

    :try_start_47
    monitor-exit v10

    throw v9
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_49

    .line 687
    .end local v0    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "resolvedUserId":I
    :catchall_49
    move-exception v9

    .line 688
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 687
    throw v9
.end method

.method public isGlobalPriorityActive()Z
    .registers 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->isGlobalPriorityActive()Z

    move-result v0

    return v0
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 726
    :try_start_7
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v1

    .line 727
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_28

    .line 728
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2a

    .line 730
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1c
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get1(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_2d
    .catchall {:try_start_1c .. :try_end_28} :catchall_2a

    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_28
    :goto_28
    monitor-exit v4

    .line 724
    return-void

    .line 725
    .end local v1    # "index":I
    :catchall_2a
    move-exception v3

    monitor-exit v4

    throw v3

    .line 731
    .restart local v1    # "index":I
    .restart local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :catch_2d
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_28
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .registers 8
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    .prologue
    .line 824
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 825
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 826
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 828
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string/jumbo v5, "listen for volume changes"

    invoke-static {v4, v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->-wrap5(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 829
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4, p1}, Lcom/android/server/media/MediaSessionService;->-set0(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 831
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    return-void

    .line 830
    :catchall_1d
    move-exception v4

    .line 831
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    throw v4
.end method
