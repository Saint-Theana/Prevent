.class Lcom/android/server/LockSettingsStorage$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field private final mCallback:Lcom/android/server/LockSettingsStorage$Callback;

.field final synthetic this$0:Lcom/android/server/LockSettingsStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsStorage;Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/LockSettingsStorage;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/android/server/LockSettingsStorage$Callback;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsStorage;

    .line 499
    const-string/jumbo v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 500
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 501
    iput-object p3, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/LockSettingsStorage$Callback;

    .line 498
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 505
    const-string/jumbo v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 504
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 516
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/LockSettingsStorage$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/LockSettingsStorage$Callback;->initialize(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 514
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    .line 521
    move v0, p2

    .line 522
    .local v0, "upgradeVersion":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    .line 524
    const/4 v0, 0x2

    .line 527
    :cond_5
    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 528
    const-string/jumbo v1, "LockSettingsDB"

    const-string/jumbo v2, "Failed to upgrade database!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_11
    return-void
.end method
