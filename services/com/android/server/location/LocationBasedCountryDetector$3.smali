.class Lcom/android/server/location/LocationBasedCountryDetector$3;
.super Ljava/lang/Object;
.source "LocationBasedCountryDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationBasedCountryDetector;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/location/LocationBasedCountryDetector;
    .param p2, "val$location"    # Landroid/location/Location;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object p2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "countryIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    if-eqz v1, :cond_e

    .line 248
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_e
    if-eqz v0, :cond_28

    .line 251
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    new-instance v2, Landroid/location/Country;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;

    .line 255
    :goto_1a
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v2, v2, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;

    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->notifyListener(Landroid/location/Country;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object v4, v1, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    .line 245
    return-void

    .line 253
    :cond_28
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object v4, v1, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;

    goto :goto_1a
.end method
