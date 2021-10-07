.class Lcom/android/server/input/InputManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 2422
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$Shell;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$Shell;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$Shell;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Shell;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/InputManagerService;->onShellCommand(Lcom/android/server/input/InputManagerService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 3

    .prologue
    .line 2430
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2431
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Input manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2432
    const-string/jumbo v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2433
    const-string/jumbo v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2434
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2435
    const-string/jumbo v1, "  setlayout IME_ID IME_SUPTYPE_HASH_CODE DEVICE_DESCRIPTOR VENDOR_ID PRODUCT_ID KEYBOARD_DESCRIPTOR"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2437
    const-string/jumbo v1, "    Sets a keyboard layout for a given IME subtype and input device pair"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2429
    return-void
.end method
