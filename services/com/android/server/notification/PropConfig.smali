.class public Lcom/android/server/notification/PropConfig;
.super Ljava/lang/Object;
.source "PropConfig.java"


# static fields
.field private static final UNSET:Ljava/lang/String; = "UNSET"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStringArray(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 30
    const-string/jumbo v1, "UNSET"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "prop":Ljava/lang/String;
    const-string/jumbo v1, "UNSET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_17
    return-object v1

    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_17
.end method
