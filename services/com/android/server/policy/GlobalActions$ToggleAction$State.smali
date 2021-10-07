.class final enum Lcom/android/server/policy/GlobalActions$ToggleAction$State;
.super Ljava/lang/Enum;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions$ToggleAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/policy/GlobalActions$ToggleAction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;


# instance fields
.field private final inTransition:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1391
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v1, "Off"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1392
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v1, "TurningOn"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1393
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v1, "TurningOff"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1394
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v1, "On"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1390
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->$VALUES:[Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p3, "intermediate"    # Z

    .prologue
    .line 1398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1399
    iput-boolean p3, p0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition:Z

    .line 1398
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1390
    const-class v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .registers 1

    .prologue
    .line 1390
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->$VALUES:[Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method


# virtual methods
.method public inTransition()Z
    .registers 2

    .prologue
    .line 1403
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition:Z

    return v0
.end method
