.class final Lcom/android/server/Watchdog$BinderThreadMonitor;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BinderThreadMonitor"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/Watchdog$BinderThreadMonitor;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public monitor()V
    .registers 1

    .prologue
    .line 215
    invoke-static {}, Landroid/os/Binder;->blockUntilThreadAvailable()V

    .line 214
    return-void
.end method
