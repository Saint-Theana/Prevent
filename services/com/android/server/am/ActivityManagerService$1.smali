.class final Lcom/android/server/am/ActivityManagerService$1;
.super Ljava/lang/ThreadLocal;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/android/server/am/ActivityManagerService$PriorityState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/android/server/am/ActivityManagerService$PriorityState;
    .registers 3

    .prologue
    .line 671
    new-instance v0, Lcom/android/server/am/ActivityManagerService$PriorityState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService$PriorityState;-><init>(Lcom/android/server/am/ActivityManagerService$PriorityState;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$1;->initialValue()Lcom/android/server/am/ActivityManagerService$PriorityState;

    move-result-object v0

    return-object v0
.end method
