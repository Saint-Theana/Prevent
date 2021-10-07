.class Lcom/android/server/wm/WindowList;
.super Ljava/util/ArrayList;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowList;)V
    .registers 2
    .param p1, "windowList"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    return-void
.end method
