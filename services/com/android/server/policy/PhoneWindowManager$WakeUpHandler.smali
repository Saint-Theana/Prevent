.class Lcom/android/server/policy/PhoneWindowManager$WakeUpHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeUpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$WakeUpHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1222
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1221
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 1226
    :goto_5
    return-void

    .line 1230
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeUpHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap12(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_5

    .line 1233
    :pswitch_c
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeUpHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap12(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_5

    .line 1238
    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeUpHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap14(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_5

    .line 1227
    nop

    :pswitch_data_22
    .packed-switch 0x5
        :pswitch_6
        :pswitch_c
        :pswitch_1b
    .end packed-switch
.end method
