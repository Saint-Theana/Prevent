.class Lcom/android/server/print/UserState$1;
.super Landroid/os/AsyncTask;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;

.field final synthetic val$printJob:Landroid/print/PrintJobInfo;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;Landroid/print/PrintJobInfo;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/print/UserState;
    .param p2, "val$printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/server/print/UserState$1;->this$0:Lcom/android/server/print/UserState;

    iput-object p2, p0, Lcom/android/server/print/UserState$1;->val$printJob:Landroid/print/PrintJobInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 228
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->-get6(Lcom/android/server/print/UserState;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/print/UserState$1;->val$printJob:Landroid/print/PrintJobInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/print/RemotePrintSpooler;->createPrintJob(Landroid/print/PrintJobInfo;)V

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method