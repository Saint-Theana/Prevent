.class Lcom/android/server/policy/ImmersiveModeConfirmation$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-get0(Lcom/android/server/policy/ImmersiveModeConfirmation;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 369
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-set0(Lcom/android/server/policy/ImmersiveModeConfirmation;Z)Z

    .line 370
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-wrap2(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    .line 372
    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-wrap0(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    .line 366
    return-void
.end method
