.class public Lcom/android/server/location/LocationRequestStatistics;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;,
        Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationStats"


# instance fields
.field public final statistics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;",
            "Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    .line 13
    return-void
.end method


# virtual methods
.method public startRequesting(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "intervalMs"    # J

    .prologue
    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 30
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-nez v1, :cond_1a

    .line 31
    new-instance v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .end local v1    # "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    invoke-direct {v1, v3}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;-><init>(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V

    .line 32
    .restart local v1    # "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1a
    invoke-static {v1, p3, p4}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->-wrap0(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;J)V

    .line 27
    return-void
.end method

.method public stopRequesting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 46
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-eqz v1, :cond_13

    .line 47
    invoke-static {v1}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->-wrap1(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V

    .line 43
    :goto_12
    return-void

    .line 50
    :cond_13
    const-string/jumbo v2, "LocationStats"

    const-string/jumbo v3, "Couldn\'t find package statistics when removing location request."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method
