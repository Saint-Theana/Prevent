.class final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;
.super Ljava/lang/Object;
.source "HdmiCecStandbyModeHandler.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserControlProcessedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_8
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 74
    const/4 v0, 0x1

    return v0

    .line 76
    :cond_10
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->-get0(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0
.end method
