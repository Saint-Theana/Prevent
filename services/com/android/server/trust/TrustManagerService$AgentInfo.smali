.class final Lcom/android/server/trust/TrustManagerService$AgentInfo;
.super Ljava/lang/Object;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AgentInfo"
.end annotation


# instance fields
.field agent:Lcom/android/server/trust/TrustAgentWrapper;

.field component:Landroid/content/ComponentName;

.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field settings:Landroid/content/ComponentName;

.field userId:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService$AgentInfo;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 178
    instance-of v2, p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    if-nez v2, :cond_6

    .line 179
    return v1

    :cond_6
    move-object v0, p1

    .line 181
    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 182
    .local v0, "o":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget v3, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    add-int/2addr v0, v1

    return v0
.end method
