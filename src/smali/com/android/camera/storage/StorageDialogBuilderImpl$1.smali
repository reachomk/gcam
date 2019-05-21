.class final Lcom/android/camera/storage/StorageDialogBuilderImpl$1;
.super Ljava/lang/Object;
.source "StorageDialogBuilderImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/storage/StorageDialogBuilderImpl;->checkSpaceAndShowPreviewDialogIfNecessary(Landroid/content/DialogInterface$OnClickListener;Z)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/storage/StorageDialogBuilderImpl;

.field final synthetic val$storageFullDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/StorageDialogBuilderImpl;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl$1;->this$0:Lcom/android/camera/storage/StorageDialogBuilderImpl;

    iput-object p2, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl$1;->val$storageFullDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 114
    check-cast p1, Ljava/lang/Long;

    .line 1117
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl$1;->val$storageFullDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl$1;->val$storageFullDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl$1;->this$0:Lcom/android/camera/storage/StorageDialogBuilderImpl;

    invoke-static {v0}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->access$000(Lcom/android/camera/storage/StorageDialogBuilderImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/storage/StorageDialogBuilderImpl$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/storage/StorageDialogBuilderImpl$1$1;-><init>(Lcom/android/camera/storage/StorageDialogBuilderImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1127
    :cond_0
    invoke-static {}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Available storage space is too low"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    return-void
.end method
