.class Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugDbHelper"
.end annotation


# static fields
.field private static ACTION_ACCOUNT_ADD:Ljava/lang/String;

.field private static ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

.field private static ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

.field private static ACTION_ACCOUNT_RENAME:Ljava/lang/String;

.field private static ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

.field private static ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

.field private static ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

.field private static ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

.field private static ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

.field private static ACTION_CLEAR_PASSWORD:Ljava/lang/String;

.field private static ACTION_SET_PASSWORD:Ljava/lang/String;

.field private static ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

.field private static ACTION_TYPE:Ljava/lang/String;

.field private static CALLER_UID:Ljava/lang/String;

.field private static KEY:Ljava/lang/String;

.field private static TABLE_DEBUG:Ljava/lang/String;

.field private static TABLE_NAME:Ljava/lang/String;

.field private static TIMESTAMP:Ljava/lang/String;

.field private static dateFromat:Ljava/text/SimpleDateFormat;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_ADD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_SET_PASSWORD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->CALLER_UID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get17()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TIMESTAMP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->dateFromat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->createDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4565
    const-string/jumbo v0, "debug_table"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;

    .line 4568
    const-string/jumbo v0, "action_type"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_TYPE:Ljava/lang/String;

    .line 4569
    const-string/jumbo v0, "time"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TIMESTAMP:Ljava/lang/String;

    .line 4570
    const-string/jumbo v0, "caller_uid"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->CALLER_UID:Ljava/lang/String;

    .line 4571
    const-string/jumbo v0, "table_name"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_NAME:Ljava/lang/String;

    .line 4572
    const-string/jumbo v0, "primary_key"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->KEY:Ljava/lang/String;

    .line 4577
    const-string/jumbo v0, "action_set_password"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_SET_PASSWORD:Ljava/lang/String;

    .line 4578
    const-string/jumbo v0, "action_clear_password"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    .line 4579
    const-string/jumbo v0, "action_account_add"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_ADD:Ljava/lang/String;

    .line 4580
    const-string/jumbo v0, "action_account_remove"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    .line 4581
    const-string/jumbo v0, "action_account_remove_de"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

    .line 4582
    const-string/jumbo v0, "action_authenticator_remove"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    .line 4583
    const-string/jumbo v0, "action_account_rename"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    .line 4590
    const-string/jumbo v0, "action_called_account_add"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    .line 4591
    const-string/jumbo v0, "action_called_account_remove"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    .line 4592
    const-string/jumbo v0, "action_sync_de_ce_accounts"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

    .line 4596
    const-string/jumbo v0, "action_called_start_account_add"

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

    .line 4598
    const-string/jumbo v0, "action_called_account_session_finish"

    .line 4597
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

    .line 4600
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->dateFromat:Ljava/text/SimpleDateFormat;

    .line 4561
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4604
    const-string/jumbo v1, "_id"

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4604
    const-string/jumbo v1, " INTEGER,"

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4605
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_TYPE:Ljava/lang/String;

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4605
    const-string/jumbo v1, " TEXT NOT NULL, "

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4606
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TIMESTAMP:Ljava/lang/String;

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4606
    const-string/jumbo v1, " DATETIME,"

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4607
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->CALLER_UID:Ljava/lang/String;

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4607
    const-string/jumbo v1, " INTEGER NOT NULL,"

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4608
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_NAME:Ljava/lang/String;

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4608
    const-string/jumbo v1, " TEXT NOT NULL,"

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4609
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->KEY:Ljava/lang/String;

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4609
    const-string/jumbo v1, " INTEGER PRIMARY KEY)"

    .line 4603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE INDEX timestamp_index ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TIMESTAMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4602
    return-void
.end method
