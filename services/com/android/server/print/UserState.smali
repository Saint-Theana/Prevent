.class final Lcom/android/server/print/UserState;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
.implements Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
.implements Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/UserState$ListenerRecord;,
        Lcom/android/server/print/UserState$PrintJobForAppCache;,
        Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;,
        Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;,
        Lcom/android/server/print/UserState$UserStateHandler;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UserState"


# instance fields
.field private final mActiveServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDisabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field private mPrintJobStateChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/UserState$ListenerRecord",
            "<",
            "Landroid/printservice/recommendation/IRecommendationsChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

.field private mPrintServicesChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/UserState$ListenerRecord",
            "<",
            "Landroid/print/IPrintServicesChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

.field private final mQueryIntent:Landroid/content/Intent;

.field private final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/print/UserState;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/print/UserState;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/print/UserState;)Lcom/android/server/print/RemotePrintSpooler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;I)V
    .registers 3
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState;->handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/print/UserState;Ljava/util/List;)V
    .registers 2
    .param p1, "recommendations"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/print/UserState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/UserState;->handleDispatchPrintServicesChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "lowPriority"    # Z

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 98
    iput-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    iput-object v0, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    .line 105
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 104
    iput-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iput-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 111
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 110
    iput-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 114
    new-instance v0, Lcom/android/server/print/UserState$PrintJobForAppCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrintJobForAppCache;)V

    .line 113
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 147
    iput-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 148
    iput p2, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 149
    iput-object p3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 150
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {v0, p1, p2, p4, p0}, Lcom/android/server/print/RemotePrintSpooler;-><init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 151
    new-instance v0, Lcom/android/server/print/UserState$UserStateHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$UserStateHandler;-><init>(Lcom/android/server/print/UserState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    .line 153
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_4e
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 155
    invoke-direct {p0}, Lcom/android/server/print/UserState;->upgradePersistentStateIfNeeded()V

    .line 156
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_63

    monitor-exit v1

    .line 160
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 162
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_5e
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_66

    monitor-exit v0

    .line 146
    return-void

    .line 153
    :catchall_63
    move-exception v0

    monitor-exit v1

    throw v0

    .line 162
    :catchall_66
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private addServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_12

    .line 1041
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1038
    :cond_12
    return-void
.end method

.method private failActivePrintJobsForService(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .prologue
    .line 1061
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1062
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/UserState$6;-><init>(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1057
    :goto_16
    return-void

    .line 1069
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    goto :goto_16
.end method

.method private failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .prologue
    .line 1074
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 1075
    const/4 v7, -0x4

    const/4 v8, -0x2

    .line 1074
    invoke-virtual {v6, p1, v7, v8}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v5

    .line 1076
    .local v5, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v5, :cond_b

    .line 1077
    return-void

    .line 1079
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1081
    .local v2, "identity":J
    :try_start_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 1082
    .local v4, "printJobCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v4, :cond_32

    .line 1083
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    .line 1084
    .local v1, "printJob":Landroid/print/PrintJobInfo;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v7

    .line 1085
    iget-object v8, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v9, 0x104062c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1084
    const/4 v9, 0x6

    invoke-virtual {v6, v7, v9, v8}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_36

    .line 1082
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1088
    .end local v1    # "printJob":Landroid/print/PrintJobInfo;
    :cond_32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1073
    return-void

    .line 1087
    .end local v0    # "i":I
    .end local v4    # "printJobCount":I
    :catchall_36
    move-exception v6

    .line 1088
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1087
    throw v6
.end method

.method private getInstalledComponents()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 967
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v1, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 970
    .local v2, "installedCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v2, :cond_2d

    .line 971
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 972
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 973
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 972
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    .local v4, "serviceName":Landroid/content/ComponentName;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 978
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceName":Landroid/content/ComponentName;
    :cond_2d
    return-object v1
.end method

.method private handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;I)V
    .registers 10
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    .line 1100
    iget-object v6, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1101
    :try_start_3
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2f

    if-nez v5, :cond_9

    monitor-exit v6

    .line 1102
    return-void

    .line 1104
    :cond_9
    :try_start_9
    new-instance v4, Ljava/util/ArrayList;

    .line 1105
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 1104
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_2f

    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    monitor-exit v6

    .line 1107
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1108
    .local v3, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v3, :cond_3d

    .line 1109
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 1110
    .local v2, "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_27

    .line 1111
    iget v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    if-ne v5, p2, :cond_2c

    .line 1113
    :cond_27
    :try_start_27
    iget-object v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v5, p1}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_32

    .line 1108
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1100
    .end local v0    # "i":I
    .end local v2    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .end local v3    # "recordCount":I
    .end local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    :catchall_2f
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1114
    .restart local v0    # "i":I
    .restart local v2    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .restart local v3    # "recordCount":I
    .restart local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    :catch_32
    move-exception v1

    .line 1115
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "UserState"

    const-string/jumbo v6, "Error notifying for print job state change"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 1098
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_3d
    return-void
.end method

.method private handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1143
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    iget-object v6, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1144
    :try_start_3
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2a

    if-nez v5, :cond_9

    monitor-exit v6

    .line 1145
    return-void

    .line 1147
    :cond_9
    :try_start_9
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1149
    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;>;"
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_2a

    monitor-exit v6

    .line 1151
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1152
    .local v3, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v3, :cond_38

    .line 1153
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1156
    .local v2, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :try_start_20
    iget-object v5, v2, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v5, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v5}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->onRecommendationsChanged()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2d

    .line 1152
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1143
    .end local v0    # "i":I
    .end local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    .end local v3    # "recordCount":I
    .end local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;>;"
    :catchall_2a
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1157
    .restart local v0    # "i":I
    .restart local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    .restart local v3    # "recordCount":I
    .restart local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;>;"
    :catch_2d
    move-exception v1

    .line 1158
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "UserState"

    const-string/jumbo v6, "Error notifying for print service recommendations change"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 1141
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :cond_38
    return-void
.end method

.method private handleDispatchPrintServicesChanged()V
    .registers 8

    .prologue
    .line 1122
    iget-object v6, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1123
    :try_start_3
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-nez v5, :cond_9

    monitor-exit v6

    .line 1124
    return-void

    .line 1126
    :cond_9
    :try_start_9
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_28

    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;>;"
    monitor-exit v6

    .line 1128
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1129
    .local v3, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v3, :cond_36

    .line 1130
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1133
    .local v2, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :try_start_1e
    iget-object v5, v2, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v5, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v5}, Landroid/print/IPrintServicesChangeListener;->onPrintServicesChanged()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_2b

    .line 1129
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1122
    .end local v0    # "i":I
    .end local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    .end local v3    # "recordCount":I
    .end local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;>;"
    :catchall_28
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1134
    .restart local v0    # "i":I
    .restart local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    .restart local v3    # "recordCount":I
    .restart local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;>;"
    :catch_2b
    move-exception v1

    .line 1135
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "UserState"

    const-string/jumbo v6, "Error notifying for print services change"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1120
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :cond_36
    return-void
.end method

.method private onConfigurationChangedLocked()V
    .registers 12

    .prologue
    .line 1003
    invoke-direct {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v8

    .line 1005
    .local v8, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1006
    .local v9, "installedCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    if-ge v7, v9, :cond_41

    .line 1007
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1009
    .local v2, "serviceName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1010
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1011
    new-instance v0, Lcom/android/server/print/RemotePrintService;

    .line 1012
    iget-object v1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    move-object v5, p0

    .line 1011
    invoke-direct/range {v0 .. v5}, Lcom/android/server/print/RemotePrintService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V

    .line 1013
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->addServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1006
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_30
    :goto_30
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1016
    :cond_33
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 1017
    .restart local v0    # "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_30

    .line 1018
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_30

    .line 1024
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    :cond_41
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1025
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;>;"
    :cond_4b
    :goto_4b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1026
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1027
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1028
    .restart local v2    # "serviceName":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 1029
    .restart local v0    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1030
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1031
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_4b

    .line 1035
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    :cond_70
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onPrintServicesChanged()V

    .line 1002
    return-void
.end method

.method private readConfigurationLocked()V
    .registers 1

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 848
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    .line 846
    return-void
.end method

.method private readDisabledPrintServicesLocked()V
    .registers 3

    .prologue
    .line 917
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 918
    .local v0, "tempDisabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string/jumbo v1, "disabled_print_services"

    invoke-direct {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 920
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 921
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 922
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 916
    :cond_1d
    return-void
.end method

.method private readInstalledPrintServicesLocked()V
    .registers 12

    .prologue
    .line 852
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 854
    .local v6, "tempPrintServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/printservice/PrintServiceInfo;>;"
    iget-object v7, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 855
    iget-object v8, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    .line 856
    iget v9, p0, Lcom/android/server/print/UserState;->mUserId:I

    const v10, 0x10000084

    .line 854
    invoke-virtual {v7, v8, v10, v9}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 858
    .local v4, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 859
    .local v2, "installedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v0, v2

    .local v0, "count":I
    :goto_1c
    if-ge v1, v2, :cond_77

    .line 860
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 861
    .local v3, "installedService":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v7, "android.permission.BIND_PRINT_SERVICE"

    .line 862
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 861
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6d

    .line 863
    new-instance v5, Landroid/content/ComponentName;

    .line 864
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 865
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 863
    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    .local v5, "serviceName":Landroid/content/ComponentName;
    const-string/jumbo v7, "UserState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skipping print service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 867
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    .line 866
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 868
    const-string/jumbo v9, " since it does not require permission "

    .line 866
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 869
    const-string/jumbo v9, "android.permission.BIND_PRINT_SERVICE"

    .line 866
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .end local v5    # "serviceName":Landroid/content/ComponentName;
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 872
    :cond_6d
    iget-object v7, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 875
    .end local v3    # "installedService":Landroid/content/pm/ResolveInfo;
    :cond_77
    iget-object v7, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 876
    iget-object v7, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 851
    return-void
.end method

.method private readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    .registers 9
    .param p1, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 928
    .local p2, "outServiceNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 929
    iget v5, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 928
    invoke-static {v4, p1, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, "settingValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 931
    iget-object v2, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 932
    .local v2, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 933
    :cond_17
    :goto_17
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 934
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 935
    .local v3, "string":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 938
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 939
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_17

    .line 940
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 927
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3    # "string":Ljava/lang/String;
    :cond_31
    return-void
.end method

.method private removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 1047
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_11

    .line 1050
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1045
    :goto_10
    return-void

    .line 1053
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto :goto_10
.end method

.method private throwIfDestroyedLocked()V
    .registers 3

    .prologue
    .line 1093
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    if-eqz v0, :cond_d

    .line 1094
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot interact with a destroyed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :cond_d
    return-void
.end method

.method private upgradePersistentStateIfNeeded()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 883
    iget-object v6, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 884
    const-string/jumbo v7, "enabled_print_services"

    iget v8, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 883
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 888
    .local v2, "enabledSettingValue":Ljava/lang/String;
    if-eqz v2, :cond_54

    .line 889
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 890
    .local v1, "enabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string/jumbo v6, "enabled_print_services"

    invoke-direct {p0, v6, v1}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 893
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 894
    .local v0, "disabledServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 895
    .local v4, "numInstalledServices":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    if-ge v3, v4, :cond_43

    .line 896
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 897
    .local v5, "serviceName":Landroid/content/ComponentName;
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 898
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 902
    .end local v5    # "serviceName":Landroid/content/ComponentName;
    :cond_43
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 906
    iget-object v6, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 907
    const-string/jumbo v7, "enabled_print_services"

    iget v8, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 906
    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 882
    .end local v0    # "disabledServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v1    # "enabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v3    # "i":I
    .end local v4    # "numInstalledServices":I
    :cond_54
    return-void
.end method

.method private writeDisabledPrintServicesLocked(Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 950
    .local p1, "disabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "componentName$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 952
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 953
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 955
    :cond_20
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 957
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_28
    iget-object v3, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 958
    const-string/jumbo v4, "disabled_print_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 957
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 949
    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .registers 6
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 550
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 552
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v0, :cond_11

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 556
    :cond_11
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 557
    new-instance v2, Lcom/android/server/print/UserState$3;

    invoke-direct {v2, p0, p0, p1, p2}, Lcom/android/server/print/UserState$3;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    .line 556
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    .line 549
    return-void

    .line 550
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 635
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 636
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 637
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v0, :cond_20

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 641
    new-instance v0, Lcom/android/server/print/RemotePrintServiceRecommendationService;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 642
    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 641
    invoke-direct {v0, v2, v3, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    .line 640
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 644
    :cond_20
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 645
    new-instance v2, Lcom/android/server/print/UserState$5;

    invoke-direct {v2, p0, p0, p1}, Lcom/android/server/print/UserState$5;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V

    .line 644
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    monitor-exit v1

    .line 634
    return-void

    .line 635
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 593
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 594
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 595
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v0, :cond_11

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 598
    :cond_11
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 599
    new-instance v2, Lcom/android/server/print/UserState$4;

    invoke-direct {v2, p0, p0, p1}, Lcom/android/server/print/UserState$4;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/print/IPrintServicesChangeListener;)V

    .line 598
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    .line 592
    return-void

    .line 593
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;I)V
    .registers 10
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    const/4 v6, 0x0

    .line 334
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 335
    .local v0, "printJobInfo":Landroid/print/PrintJobInfo;
    if-nez v0, :cond_a

    .line 336
    return-void

    .line 340
    :cond_a
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 342
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_38

    .line 343
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v3

    .line 345
    .local v3, "printerId":Landroid/print/PrinterId;
    if-eqz v3, :cond_37

    .line 346
    invoke-virtual {v3}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    .line 347
    .local v2, "printServiceName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 348
    .local v1, "printService":Lcom/android/server/print/RemotePrintService;
    iget-object v5, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 349
    :try_start_25
    iget-object v4, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    check-cast v1, Lcom/android/server/print/RemotePrintService;
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_31

    .local v1, "printService":Lcom/android/server/print/RemotePrintService;
    monitor-exit v5

    .line 351
    if-nez v1, :cond_34

    .line 352
    return-void

    .line 348
    .end local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    :catchall_31
    move-exception v4

    monitor-exit v5

    throw v4

    .line 354
    .restart local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    :cond_34
    invoke-virtual {v1, v0}, Lcom/android/server/print/RemotePrintService;->onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    .line 333
    .end local v1    # "printService":Lcom/android/server/print/RemotePrintService;
    .end local v2    # "printServiceName":Landroid/content/ComponentName;
    .end local v3    # "printerId":Landroid/print/PrinterId;
    :cond_37
    :goto_37
    return-void

    .line 359
    :cond_38
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v5, 0x7

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    goto :goto_37
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->clearCustomPrinterIconCache()V

    .line 441
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 444
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_1f

    .line 446
    new-instance v0, Lcom/android/server/print/UserState$2;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p0, v2}, Lcom/android/server/print/UserState$2;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 453
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    :goto_1d
    monitor-exit v1

    .line 438
    return-void

    .line 456
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    goto :goto_1d

    .line 441
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public destroyLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 775
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 776
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintSpooler;->destroy()V

    .line 777
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 778
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto :goto_13

    .line 780
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_23
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 781
    iget-object v2, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 782
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 783
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v2, :cond_3d

    .line 784
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    .line 785
    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 787
    :cond_3d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    .line 774
    return-void
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 464
    :try_start_3
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v0, :cond_9

    monitor-exit v1

    .line 465
    return-void

    .line 468
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    monitor-exit v1

    .line 461
    return-void

    .line 462
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 791
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "user state "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, ":"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 792
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 794
    const-string/jumbo v13, "  "

    .line 796
    .local v13, "tab":Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "installed services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    .line 798
    .local v10, "installedServiceCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3e
    if-ge v8, v10, :cond_f6

    .line 799
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/printservice/PrintServiceInfo;

    .line 800
    .local v9, "installedService":Landroid/printservice/PrintServiceInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 801
    .local v11, "installedServicePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "service:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 802
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 803
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    .line 804
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 805
    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 803
    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    .local v4, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "componentName="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    .line 807
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    .line 806
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 808
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "settingsActivity="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    .line 809
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v15

    .line 808
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 810
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "addPrintersActivity="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    .line 811
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v15

    .line 810
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 812
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "avancedOptionsActivity="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    .line 813
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    move-result-object v15

    .line 812
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 798
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3e

    .line 816
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "installedService":Landroid/printservice/PrintServiceInfo;
    .end local v11    # "installedServicePrefix":Ljava/lang/String;
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_f6
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "disabled services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 817
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "disabledService$iterator":Ljava/util/Iterator;
    :goto_110
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 818
    .local v5, "disabledService":Landroid/content/ComponentName;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 819
    .local v7, "disabledServicePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "service:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 820
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "componentName="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    .line 821
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    .line 820
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 822
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_110

    .line 825
    .end local v5    # "disabledService":Landroid/content/ComponentName;
    .end local v7    # "disabledServicePrefix":Ljava/lang/String;
    :cond_15f
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "active services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 826
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 827
    .local v3, "activeServiceCount":I
    const/4 v8, 0x0

    :goto_17a
    if-ge v8, v3, :cond_1a8

    .line 828
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 829
    .local v2, "activeService":Lcom/android/server/print/RemotePrintService;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v14}, Lcom/android/server/print/RemotePrintService;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 827
    add-int/lit8 v8, v8, 0x1

    goto :goto_17a

    .line 833
    .end local v2    # "activeService":Lcom/android/server/print/RemotePrintService;
    :cond_1a8
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "cached print jobs:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 834
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/server/print/UserState$PrintJobForAppCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 836
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "discovery mediator:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 837
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v14, :cond_212

    .line 838
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 841
    :cond_212
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "print spooler:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 842
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/server/print/RemotePrintSpooler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 790
    return-void
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .registers 6
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 321
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v2, p1}, Lcom/android/server/print/RemotePrintSpooler;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 323
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    if-nez v0, :cond_19

    .line 324
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 325
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v1, :cond_19

    .line 326
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    .line 330
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_19
    return-object v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 299
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    if-nez v0, :cond_f

    .line 300
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 302
    :cond_f
    if-eqz v0, :cond_17

    .line 305
    invoke-virtual {v0, v2}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, v2}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 308
    :cond_17
    return-object v0
.end method

.method public getPrintJobInfos(I)Ljava/util/List;
    .registers 13
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 258
    iget-object v8, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v8, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJobs(I)Ljava/util/List;

    move-result-object v2

    .line 266
    .local v2, "cachedPrintJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 269
    .local v7, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/print/PrintJobId;Landroid/print/PrintJobInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 270
    .local v1, "cachedPrintJobCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_29

    .line 271
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 272
    .local v0, "cachedPrintJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v0, v10}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, v10}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 280
    .end local v0    # "cachedPrintJob":Landroid/print/PrintJobInfo;
    :cond_29
    iget-object v8, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 281
    const/4 v9, -0x1

    .line 280
    invoke-virtual {v8, v10, v9, p1}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v6

    .line 282
    .local v6, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v6, :cond_4f

    .line 283
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 284
    .local v5, "printJobCount":I
    const/4 v3, 0x0

    :goto_37
    if-ge v3, v5, :cond_4f

    .line 285
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJobInfo;

    .line 286
    .local v4, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {v4, v10}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v4, v10}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 294
    .end local v4    # "printJob":Landroid/print/PrintJobInfo;
    .end local v5    # "printJobCount":I
    :cond_4f
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v8
.end method

.method public getPrintServiceRecommendations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    return-object v0
.end method

.method public getPrintServices(I)Ljava/util/List;
    .registers 11
    .param p1, "selectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v7, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 373
    const/4 v4, 0x0

    .line 374
    .local v4, "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :try_start_4
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_54

    move-result v3

    .line 375
    .local v3, "installedServiceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v5, v4

    .end local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .local v5, "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_c
    if-ge v1, v3, :cond_57

    .line 376
    :try_start_e
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/printservice/PrintServiceInfo;

    .line 378
    .local v2, "installedService":Landroid/printservice/PrintServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    .line 379
    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 380
    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 378
    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/printservice/PrintServiceInfo;->setIsEnabled(Z)V

    .line 385
    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 386
    and-int/lit8 v6, p1, 0x1

    if-nez v6, :cond_49

    move-object v4, v5

    .line 375
    .end local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .local v4, "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    move-object v5, v4

    .end local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_c

    .line 390
    :cond_43
    and-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_49

    move-object v4, v5

    .line 391
    .end local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_3f

    .line 395
    .end local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :cond_49
    if-nez v5, :cond_5c

    .line 396
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_59

    .line 398
    .end local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_50
    :try_start_50
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_3f

    .line 372
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "i":I
    .end local v2    # "installedService":Landroid/printservice/PrintServiceInfo;
    .end local v3    # "installedServiceCount":I
    .end local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :catchall_54
    move-exception v6

    :goto_55
    monitor-exit v7

    throw v6

    .restart local v1    # "i":I
    .restart local v3    # "installedServiceCount":I
    .restart local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :cond_57
    monitor-exit v7

    .line 400
    return-object v5

    .line 372
    :catchall_59
    move-exception v6

    move-object v4, v5

    .end local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_55

    .end local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "installedService":Landroid/printservice/PrintServiceInfo;
    .restart local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :cond_5c
    move-object v4, v5

    .end local v5    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v4    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_50
.end method

.method public increasePriority()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->increasePriority()V

    .line 167
    return-void
.end method

.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "printService"    # Landroid/content/ComponentName;

    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 193
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 194
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_15

    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    monitor-exit v2

    .line 196
    if-eqz v0, :cond_14

    .line 197
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 190
    :cond_14
    return-void

    .line 192
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V

    .line 738
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 742
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_18

    if-nez v0, :cond_11

    monitor-exit v1

    .line 743
    return-void

    .line 745
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onCustomPrinterIconLoadedLocked(Landroid/print/PrinterId;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 735
    return-void

    .line 738
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 8
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 174
    iget-object v3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 176
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    .line 177
    .local v0, "printServiceName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1d

    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    monitor-exit v3

    .line 179
    if-eqz v1, :cond_20

    .line 180
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    .line 172
    :goto_1c
    return-void

    .line 174
    .end local v0    # "printServiceName":Landroid/content/ComponentName;
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 184
    .restart local v0    # "printServiceName":Landroid/content/ComponentName;
    .restart local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_20
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    .line 185
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v5, 0x104062c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 184
    const/4 v5, 0x6

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    goto :goto_1c
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 7
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 688
    iget-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    .line 689
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v1

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    .line 688
    const/4 v3, 0x1

    .line 689
    const/4 v4, 0x0

    .line 688
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 686
    return-void
.end method

.method public onPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    const/4 v2, 0x0

    .line 698
    iget-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 697
    return-void
.end method

.method public onPrintServicesChanged()V
    .registers 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 692
    return-void
.end method

.method public onPrintersAdded(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 707
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1d

    move-result v0

    if-eqz v0, :cond_10

    monitor-exit v1

    .line 708
    return-void

    .line 711
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_1d

    if-nez v0, :cond_16

    monitor-exit v1

    .line 712
    return-void

    .line 714
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersAddedLocked(Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    .line 703
    return-void

    .line 704
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPrintersRemoved(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 723
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1d

    move-result v0

    if-eqz v0, :cond_10

    monitor-exit v1

    .line 724
    return-void

    .line 727
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_1d

    if-nez v0, :cond_16

    monitor-exit v1

    .line 728
    return-void

    .line 730
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersRemovedLocked(Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    .line 719
    return-void

    .line 720
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDied(Lcom/android/server/print/RemotePrintService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 751
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 752
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 754
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_27

    move-result v0

    if-eqz v0, :cond_10

    monitor-exit v1

    .line 755
    return-void

    .line 758
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 759
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 761
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_27

    if-nez v0, :cond_20

    monitor-exit v1

    .line 762
    return-void

    .line 764
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_27

    monitor-exit v1

    .line 750
    return-void

    .line 751
    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 19
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/print/IPrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I

    .prologue
    .line 209
    new-instance v11, Landroid/print/PrintJobInfo;

    invoke-direct {v11}, Landroid/print/PrintJobInfo;-><init>()V

    .line 210
    .local v11, "printJob":Landroid/print/PrintJobInfo;
    new-instance v2, Landroid/print/PrintJobId;

    invoke-direct {v2}, Landroid/print/PrintJobId;-><init>()V

    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setId(Landroid/print/PrintJobId;)V

    .line 211
    move/from16 v0, p5

    invoke-virtual {v11, v0}, Landroid/print/PrintJobInfo;->setAppId(I)V

    .line 212
    invoke-virtual {v11, p1}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/print/PrintJobInfo;->setAttributes(Landroid/print/PrintAttributes;)V

    .line 214
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 215
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setCopies(I)V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Landroid/print/PrintJobInfo;->setCreationTime(J)V

    .line 219
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v2, v3, v0, v11}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 222
    const/4 v2, 0x0

    return-object v2

    .line 226
    :cond_39
    new-instance v3, Lcom/android/server/print/UserState$1;

    invoke-direct {v3, p0, v11}, Lcom/android/server/print/UserState$1;-><init>(Lcom/android/server/print/UserState;Landroid/print/PrintJobInfo;)V

    .line 232
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    .line 226
    invoke-virtual {v3, v5, v2}, Lcom/android/server/print/UserState$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 236
    .local v8, "identity":J
    :try_start_4a
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v2, "android.print.PRINT_DIALOG"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "printjob"

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 238
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 239
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_JOB"

    invoke-virtual {v4, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    const-string/jumbo v2, "android.content.extra.PACKAGE_NAME"

    move-object/from16 v0, p4

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 245
    new-instance v7, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 243
    const/4 v3, 0x0

    const/high16 v5, 0x54000000

    .line 245
    const/4 v6, 0x0

    .line 242
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v10

    .line 247
    .local v10, "intentSender":Landroid/content/IntentSender;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v12, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_JOB"

    invoke-virtual {v12, v2, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    const-string/jumbo v2, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    invoke-virtual {v12, v2, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_a3
    .catchall {:try_start_4a .. :try_end_a3} :catchall_a7

    .line 253
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    return-object v12

    .line 252
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "intentSender":Landroid/content/IntentSender;
    .end local v12    # "result":Landroid/os/Bundle;
    :catchall_a7
    move-exception v2

    .line 253
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    throw v2
.end method

.method public prunePrintServices()V
    .registers 5

    .prologue
    .line 987
    iget-object v3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 988
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v1

    .line 991
    .local v1, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 992
    .local v0, "disabledServicesUninstalled":Z
    if-eqz v0, :cond_14

    .line 993
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1b

    :cond_14
    monitor-exit v3

    .line 998
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v2, v1}, Lcom/android/server/print/RemotePrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V

    .line 984
    return-void

    .line 987
    .end local v0    # "disabledServicesUninstalled":Z
    .end local v1    # "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_1b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeObsoletePrintJobs()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->removeObsoletePrintJobs()V

    .line 201
    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;

    .prologue
    .line 571
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 572
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 573
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_42

    if-nez v3, :cond_c

    monitor-exit v4

    .line 574
    return-void

    .line 576
    :cond_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 577
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v2, :cond_32

    .line 579
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 580
    .local v1, "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget-object v3, v1, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v3}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 581
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 585
    .end local v1    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_32
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 586
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_42

    :cond_3d
    monitor-exit v4

    .line 570
    return-void

    .line 577
    .restart local v1    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 571
    .end local v0    # "i":I
    .end local v1    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .end local v2    # "recordCount":I
    :catchall_42
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .prologue
    .line 660
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 661
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 662
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_4f

    if-nez v3, :cond_c

    monitor-exit v4

    .line 663
    return-void

    .line 665
    :cond_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 666
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v2, :cond_34

    .line 668
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState$ListenerRecord;

    .line 669
    .local v1, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    iget-object v3, v1, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v3, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v3}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 670
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 674
    .end local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :cond_34
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 675
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 677
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 679
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-virtual {v3}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 680
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_4f

    :cond_4a
    monitor-exit v4

    .line 659
    return-void

    .line 666
    .restart local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 660
    .end local v0    # "i":I
    .end local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    .end local v2    # "recordCount":I
    :catchall_4f
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;

    .prologue
    .line 613
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 614
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 615
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_44

    if-nez v3, :cond_c

    monitor-exit v4

    .line 616
    return-void

    .line 618
    :cond_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 619
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v2, :cond_34

    .line 621
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState$ListenerRecord;

    .line 622
    .local v1, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    iget-object v3, v1, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v3, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v3}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 623
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 627
    .end local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :cond_34
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 628
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_44

    :cond_3f
    monitor-exit v4

    .line 612
    return-void

    .line 619
    .restart local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 613
    .end local v0    # "i":I
    .end local v1    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    .end local v2    # "recordCount":I
    :catchall_44
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;I)V
    .registers 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    const/4 v3, 0x0

    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 365
    .local v0, "printJobInfo":Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_f

    .line 366
    :cond_e
    return-void

    .line 368
    :cond_f
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 363
    return-void
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    .registers 9
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 405
    iget-object v5, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "isChanged":Z
    if-eqz p2, :cond_18

    .line 408
    :try_start_6
    iget-object v4, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 423
    .end local v1    # "isChanged":Z
    :cond_c
    :goto_c
    if-eqz v1, :cond_16

    .line 424
    iget-object v4, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-direct {p0, v4}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 426
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_3d

    :cond_16
    monitor-exit v5

    .line 404
    return-void

    .line 411
    .restart local v1    # "isChanged":Z
    :cond_18
    :try_start_18
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 412
    .local v2, "numServices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    if-ge v0, v2, :cond_c

    .line 413
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    .line 415
    .local v3, "service":Landroid/printservice/PrintServiceInfo;
    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 416
    iget-object v4, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_3d

    .line 417
    const/4 v1, 0x1

    .line 418
    goto :goto_c

    .line 412
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 405
    .end local v0    # "i":I
    .end local v1    # "isChanged":Z
    .end local v2    # "numServices":I
    .end local v3    # "service":Landroid/printservice/PrintServiceInfo;
    :catchall_3d
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 5
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 478
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_13

    if-nez v0, :cond_c

    monitor-exit v1

    .line 479
    return-void

    .line 482
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 473
    return-void

    .line 474
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 520
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1d

    move-result v0

    if-eqz v0, :cond_10

    monitor-exit v1

    .line 521
    return-void

    .line 524
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_1d

    if-nez v0, :cond_16

    monitor-exit v1

    .line 525
    return-void

    .line 528
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    .line 516
    return-void

    .line 517
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 492
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_13

    if-nez v0, :cond_c

    monitor-exit v1

    .line 493
    return-void

    .line 496
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 487
    return-void

    .line 488
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 536
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1d

    move-result v0

    if-eqz v0, :cond_10

    monitor-exit v1

    .line 537
    return-void

    .line 540
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_1d

    if-nez v0, :cond_16

    monitor-exit v1

    .line 541
    return-void

    .line 544
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    .line 532
    return-void

    .line 533
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateIfNeededLocked()V
    .registers 1

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 770
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readConfigurationLocked()V

    .line 771
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 768
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 504
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1d

    move-result v0

    if-eqz v0, :cond_10

    monitor-exit v1

    .line 505
    return-void

    .line 508
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_1d

    if-nez v0, :cond_16

    monitor-exit v1

    .line 509
    return-void

    .line 512
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->validatePrintersLocked(Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    .line 500
    return-void

    .line 501
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
