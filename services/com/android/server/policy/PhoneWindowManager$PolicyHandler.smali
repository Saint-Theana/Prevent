.class Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 950
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 953
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_10e

    .line 952
    :cond_8
    :goto_8
    return-void

    .line 955
    :sswitch_9
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap10(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_8

    .line 958
    :sswitch_f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap8(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_8

    .line 961
    :sswitch_15
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_8

    .line 964
    :sswitch_1f
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_8

    .line 967
    :sswitch_29
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_34

    move v2, v3

    :goto_30
    invoke-static {v5, v4, v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap23(Lcom/android/server/policy/PhoneWindowManager;ZZ)V

    goto :goto_8

    :cond_34
    move v2, v4

    goto :goto_30

    .line 970
    :sswitch_36
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_8

    .line 973
    :sswitch_3c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap16(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_8

    .line 976
    :sswitch_42
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4c

    :goto_48
    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssistWithWakeLock(Z)V

    goto :goto_8

    :cond_4c
    move v3, v4

    goto :goto_48

    .line 979
    :sswitch_4e
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_67

    :goto_5c
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5, v6, v7, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap21(Lcom/android/server/policy/PhoneWindowManager;JZI)V

    .line 980
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap13(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_8

    :cond_67
    move v3, v4

    .line 979
    goto :goto_5c

    .line 983
    :sswitch_69
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap20(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_8

    .line 986
    :sswitch_6f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_79

    :goto_75
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-wrap27(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto :goto_8

    :cond_79
    move v3, v4

    goto :goto_75

    .line 989
    :sswitch_7b
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_8c

    .line 990
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 991
    .local v1, "targetBar":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_83
    if-eqz v1, :cond_8

    .line 992
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap22(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_8

    .line 990
    .end local v1    # "targetBar":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_8c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_83

    .line 996
    :sswitch_91
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap24(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_8

    .line 999
    :sswitch_98
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap6(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1000
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap11(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_8

    .line 1003
    :sswitch_a4
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowManagerPolicy$InputConsumer;

    invoke-static {v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap9(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$InputConsumer;)V

    goto/16 :goto_8

    .line 1006
    :sswitch_af
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 1007
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mIsLongPress:Z

    .line 1008
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 1009
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1010
    invoke-static {v0, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    .line 1009
    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    goto/16 :goto_8

    .line 1014
    .end local v0    # "event":Landroid/view/KeyEvent;
    :sswitch_c7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 1015
    .restart local v0    # "event":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mIsLongPress:Z

    goto/16 :goto_8

    .line 1019
    .end local v0    # "event":Landroid/view/KeyEvent;
    :sswitch_d1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto/16 :goto_8

    .line 1022
    :sswitch_d8
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-get3(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1023
    :try_start_df
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_eb

    :goto_e5
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-set1(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    :try_end_e8
    .catchall {:try_start_df .. :try_end_e8} :catchall_ed

    monitor-exit v5

    goto/16 :goto_8

    :cond_eb
    move v3, v4

    goto :goto_e5

    .line 1022
    :catchall_ed
    move-exception v2

    monitor-exit v5

    throw v2

    .line 1027
    :sswitch_f0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v5, v4, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_8

    .line 1031
    :sswitch_f7
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap7(Lcom/android/server/policy/PhoneWindowManager;JI)V

    .line 1032
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap11(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_8

    .line 953
    nop

    :sswitch_data_10e
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_f
        0x3 -> :sswitch_15
        0x4 -> :sswitch_1f
        0x9 -> :sswitch_29
        0xa -> :sswitch_36
        0xb -> :sswitch_3c
        0xc -> :sswitch_42
        0xd -> :sswitch_4e
        0xe -> :sswitch_69
        0xf -> :sswitch_6f
        0x10 -> :sswitch_7b
        0x11 -> :sswitch_91
        0x12 -> :sswitch_98
        0x13 -> :sswitch_a4
        0x14 -> :sswitch_af
        0x15 -> :sswitch_c7
        0x17 -> :sswitch_f7
        0x1bbe -> :sswitch_d1
        0x1bc2 -> :sswitch_d8
        0x1bc3 -> :sswitch_f0
    .end sparse-switch
.end method
