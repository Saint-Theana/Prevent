.class Lcom/android/server/hdmi/HdmiCecController$2;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecController;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$2;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/Integer;

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "address"    # Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "address":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$2;->apply(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
