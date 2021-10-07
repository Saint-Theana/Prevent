.class Lcom/android/server/policy/PhoneWindowManager$2;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$2;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawn()V
    .registers 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$2;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpHandler:Lcom/android/server/policy/PhoneWindowManager$WakeUpHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$WakeUpHandler;->sendEmptyMessage(I)Z

    .line 484
    return-void
.end method
