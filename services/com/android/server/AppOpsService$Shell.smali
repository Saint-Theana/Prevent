.class Lcom/android/server/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shell"
.end annotation


# instance fields
.field final mInterface:Lcom/android/internal/app/IAppOpsService;

.field final mInternal:Lcom/android/server/AppOpsService;

.field mode:I

.field modeStr:Ljava/lang/String;

.field op:I

.field opStr:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packageUid:I

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V
    .registers 4
    .param p1, "iface"    # Lcom/android/internal/app/IAppOpsService;
    .param p2, "internal"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 1910
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1902
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 1911
    iput-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 1912
    iput-object p2, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    .line 1910
    return-void
.end method

.method private strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 1928
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v2

    return v2

    .line 1929
    :catch_5
    move-exception v0

    .line 1932
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v2

    return v2

    .line 1933
    :catch_b
    move-exception v1

    .line 1936
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_c
    invoke-static {p1}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_11

    move-result v2

    return v2

    .line 1937
    :catch_11
    move-exception v0

    .line 1938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1939
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 1917
    invoke-static {p0, p1}, Lcom/android/server/AppOpsService;->onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1923
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    .line 1921
    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .registers 8
    .param p1, "defMode"    # I
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1965
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 1966
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 1967
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 1968
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 1969
    const-string/jumbo v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_a

    .line 1972
    :cond_24
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_2b

    .line 1973
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_a

    .line 1974
    :cond_2b
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 1975
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 1980
    :cond_31
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_3c

    .line 1981
    const-string/jumbo v1, "Error: Operation not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1982
    return v3

    .line 1984
    :cond_3c
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 1985
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v1, :cond_49

    .line 1986
    return v3

    .line 1988
    :cond_49
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v1, :cond_58

    .line 1989
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-gez v1, :cond_5a

    .line 1990
    return v3

    .line 1993
    :cond_58
    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    .line 1995
    :cond_5a
    return v4
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .registers 10
    .param p1, "reqOp"    # Z
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 1999
    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2000
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2001
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2002
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 2003
    const-string/jumbo v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_a

    .line 2006
    :cond_24
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v1, :cond_2b

    .line 2007
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_a

    .line 2008
    :cond_2b
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 2009
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2014
    :cond_31
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v1, :cond_3c

    .line 2015
    const-string/jumbo v1, "Error: Package name not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2016
    return v5

    .line 2017
    :cond_3c
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_49

    if-eqz p1, :cond_49

    .line 2018
    const-string/jumbo v1, "Error: Operation not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2019
    return v5

    .line 2021
    :cond_49
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz v1, :cond_5a

    .line 2022
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2023
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v1, :cond_5c

    .line 2024
    return v5

    .line 2027
    :cond_5a
    iput v5, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2029
    :cond_5c
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    if-ne v1, v2, :cond_66

    .line 2030
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2032
    :cond_66
    const-string/jumbo v1, "root"

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 2033
    iput v6, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    .line 2038
    :goto_73
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez v1, :cond_af

    .line 2039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: No UID for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    return v5

    .line 2035
    :cond_9e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2036
    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    const/16 v4, 0x2000

    .line 2035
    invoke-interface {v1, v2, v4, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    goto :goto_73

    .line 2042
    :cond_af
    return v6
.end method

.method strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "modeStr"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 1944
    const-string/jumbo v1, "allow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1946
    const/4 v1, 0x0

    return v1

    .line 1944
    :cond_b
    const-string/jumbo v1, "deny"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1948
    const/4 v1, 0x2

    return v1

    .line 1944
    :cond_16
    const-string/jumbo v1, "ignore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1950
    const/4 v1, 0x1

    return v1

    .line 1944
    :cond_21
    const-string/jumbo v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1952
    const/4 v1, 0x3

    return v1

    .line 1944
    :cond_2c
    const-string/jumbo v1, "ask"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1954
    const/4 v1, 0x4

    return v1

    .line 1957
    :cond_37
    :try_start_37
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_3a} :catch_3c

    move-result v1

    return v1

    .line 1958
    :catch_3c
    move-exception v0

    .line 1960
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: Mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1961
    const/4 v1, -0x1

    return v1
.end method
