.class final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1056
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .registers 4
    .param p1, "streams"    # I

    .prologue
    .line 1062
    or-int/lit8 p1, p1, 0x26

    .line 1067
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1068
    or-int/lit8 p1, p1, 0x18

    .line 1074
    :goto_d
    return p1

    .line 1071
    :cond_e
    and-int/lit8 p1, p1, -0x19

    goto :goto_d
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 15
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v5, 0x0

    .line 1020
    move v8, p2

    .line 1021
    .local v8, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_1e

    const/4 v6, 0x1

    .line 1022
    .local v6, "isChange":Z
    :goto_5
    const/4 v0, 0x1

    if-ne p4, v0, :cond_20

    const/4 v7, 0x1

    .line 1024
    .local v7, "isVibrate":Z
    :goto_9
    const/4 v1, -0x1

    .line 1025
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_40

    .line 1044
    :cond_d
    :goto_d
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1a

    .line 1045
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v3, "ringerModeExternal"

    const/4 v2, 0x0

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->-wrap5(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1049
    :cond_1a
    invoke-static {p1, p2, p3, p4, v8}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 1051
    return v8

    .line 1021
    .end local v1    # "newZen":I
    .end local v6    # "isChange":Z
    .end local v7    # "isVibrate":Z
    :cond_1e
    const/4 v6, 0x0

    .restart local v6    # "isChange":Z
    goto :goto_5

    .line 1022
    :cond_20
    const/4 v7, 0x0

    .restart local v7    # "isVibrate":Z
    goto :goto_9

    .line 1027
    .restart local v1    # "newZen":I
    :pswitch_22
    if-eqz v6, :cond_33

    .line 1028
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 1029
    const/4 v1, 0x3

    .line 1031
    :cond_2d
    if-eqz v7, :cond_31

    const/4 v8, 0x1

    goto :goto_d

    .line 1032
    :cond_31
    const/4 v8, 0x0

    goto :goto_d

    .line 1034
    :cond_33
    move v8, p4

    goto :goto_d

    .line 1039
    :pswitch_35
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 1040
    const/4 v1, 0x0

    goto :goto_d

    .line 1025
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_22
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 15
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 979
    if-eq p1, p2, :cond_20

    const/4 v6, 0x1

    .line 981
    .local v6, "isChange":Z
    :goto_8
    move v7, p2

    .line 983
    .local v7, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .line 984
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_66

    .line 1005
    :cond_d
    :goto_d
    if-eq v1, v8, :cond_18

    .line 1006
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v3, "ringerModeInternal"

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->-wrap5(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1010
    :cond_18
    if-nez v6, :cond_1c

    if-eq v1, v8, :cond_63

    .line 1011
    :cond_1c
    :goto_1c
    invoke-static {p1, p2, p3, p4, v7}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 1014
    :cond_1f
    return v7

    .line 979
    .end local v1    # "newZen":I
    .end local v6    # "isChange":Z
    .end local v7    # "ringerModeExternalOut":I
    :cond_20
    const/4 v6, 0x0

    .restart local v6    # "isChange":Z
    goto :goto_8

    .line 986
    .restart local v1    # "newZen":I
    .restart local v7    # "ringerModeExternalOut":I
    :pswitch_22
    if-eqz v6, :cond_d

    iget-boolean v0, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v0, :cond_d

    .line 987
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eq v0, v3, :cond_39

    .line 988
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eq v0, v4, :cond_39

    .line 989
    const/4 v1, 0x3

    .line 991
    :cond_39
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/notification/ZenModeHelper;->-wrap6(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    goto :goto_d

    .line 996
    :pswitch_43
    if-eqz v6, :cond_59

    if-nez p1, :cond_59

    .line 997
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eq v0, v3, :cond_57

    .line 998
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-ne v0, v4, :cond_59

    .line 999
    :cond_57
    const/4 v1, 0x0

    .line 998
    goto :goto_d

    .line 1000
    :cond_59
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 1001
    const/4 v7, 0x0

    goto :goto_d

    .line 1010
    :cond_63
    if-eq p4, v7, :cond_1f

    goto :goto_1c

    .line 984
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_22
        :pswitch_43
        :pswitch_43
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 973
    const-string/jumbo v0, "ZenModeHelper"

    return-object v0
.end method
