.class final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
.super Landroid/os/Handler;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 654
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 653
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 659
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 658
    :goto_5
    return-void

    .line 661
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap2(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_5

    .line 659
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
