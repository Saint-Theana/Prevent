.class Lcom/android/server/audio/AudioService$MediaPlayerInfo;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerInfo"
.end annotation


# instance fields
.field private mIsfocussed:Z

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isfocussed"    # Z

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->mPackageName:Ljava/lang/String;

    .line 194
    iput-boolean p3, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->mIsfocussed:Z

    .line 192
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isFocussed()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->mIsfocussed:Z

    return v0
.end method

.method public setFocus(Z)V
    .registers 2
    .param p1, "focus"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->mIsfocussed:Z

    .line 199
    return-void
.end method
