.class final Lcom/android/server/print/RemotePrintService$MyHandler;
.super Landroid/os/Handler;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_BINDER_DIED:I = 0xc

.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x1

.field public static final MSG_DESTROY:I = 0xb

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x2

.field public static final MSG_ON_ALL_PRINT_JOBS_HANDLED:I = 0x8

.field public static final MSG_ON_PRINT_JOB_QUEUED:I = 0xa

.field public static final MSG_ON_REQUEST_CANCEL_PRINT_JOB:I = 0x9

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x3

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0x6

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x4

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0x7

.field public static final MSG_VALIDATE_PRINTERS:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 647
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 646
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 653
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_66

    .line 652
    :goto_5
    return-void

    .line 655
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap2(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    .line 659
    :pswitch_c
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap3(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    .line 663
    :pswitch_12
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 664
    .local v3, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v3}, Lcom/android/server/print/RemotePrintService;->-wrap8(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    goto :goto_5

    .line 668
    .end local v3    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_1c
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap10(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    .line 672
    :pswitch_22
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 673
    .local v2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v2}, Lcom/android/server/print/RemotePrintService;->-wrap12(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    goto :goto_5

    .line 677
    .end local v2    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_2c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    .line 678
    .local v1, "printerId":Landroid/print/PrinterId;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v1}, Lcom/android/server/print/RemotePrintService;->-wrap9(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto :goto_5

    .line 682
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :pswitch_36
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    .line 683
    .restart local v1    # "printerId":Landroid/print/PrinterId;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v1}, Lcom/android/server/print/RemotePrintService;->-wrap11(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto :goto_5

    .line 687
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :pswitch_40
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap5(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    .line 691
    :pswitch_46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 692
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v0}, Lcom/android/server/print/RemotePrintService;->-wrap7(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    goto :goto_5

    .line 696
    .end local v0    # "printJob":Landroid/print/PrintJobInfo;
    :pswitch_50
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 697
    .restart local v0    # "printJob":Landroid/print/PrintJobInfo;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v0}, Lcom/android/server/print/RemotePrintService;->-wrap6(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    goto :goto_5

    .line 701
    .end local v0    # "printJob":Landroid/print/PrintJobInfo;
    :pswitch_5a
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap4(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    .line 705
    :pswitch_60
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap1(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    .line 653
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_1c
        :pswitch_22
        :pswitch_2c
        :pswitch_36
        :pswitch_40
        :pswitch_46
        :pswitch_50
        :pswitch_5a
        :pswitch_60
    .end packed-switch
.end method
