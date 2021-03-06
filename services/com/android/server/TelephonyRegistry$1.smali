.class Lcom/android/server/TelephonyRegistry$1;
.super Landroid/os/Handler;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_6a

    .line 213
    :cond_5
    :goto_5
    return-void

    .line 217
    :pswitch_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 218
    .local v2, "numPhones":I
    const/4 v5, 0x0

    .local v5, "sub":I
    :goto_f
    if-ge v5, v2, :cond_5

    .line 219
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 220
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->-get0(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;

    move-result-object v7

    aget-object v7, v7, v5

    .line 219
    invoke-virtual {v6, v5, v7}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 218
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 225
    .end local v2    # "numPhones":I
    .end local v5    # "sub":I
    :pswitch_21
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 226
    .local v0, "newDefaultPhoneId":I
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 236
    .local v1, "newDefaultSubId":I
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 237
    :try_start_32
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "r$iterator":Ljava/util/Iterator;
    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 238
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v6, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v8, 0x7fffffff

    if-ne v6, v8, :cond_3c

    .line 239
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6, v3, v0}, Lcom/android/server/TelephonyRegistry;->-wrap1(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    :try_end_54
    .catchall {:try_start_32 .. :try_end_54} :catchall_55

    goto :goto_3c

    .line 236
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    :catchall_55
    move-exception v6

    monitor-exit v7

    throw v6

    .line 242
    .restart local v4    # "r$iterator":Ljava/util/Iterator;
    :cond_58
    :try_start_58
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-wrap2(Lcom/android/server/TelephonyRegistry;)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_55

    monitor-exit v7

    .line 244
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6, v1}, Lcom/android/server/TelephonyRegistry;->-set1(Lcom/android/server/TelephonyRegistry;I)I

    .line 245
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6, v0}, Lcom/android/server/TelephonyRegistry;->-set0(Lcom/android/server/TelephonyRegistry;I)I

    goto :goto_5

    .line 214
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_21
    .end packed-switch
.end method
