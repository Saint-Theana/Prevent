.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get0(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 108
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get0(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 109
    .local v0, "interactor":Landroid/content/ComponentName;
    if-eqz v0, :cond_21

    .line 110
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    return-object v1

    .line 112
    :cond_21
    return-object v2
.end method
