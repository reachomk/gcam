.class final Lcom/android/camera/activity/main/WaitForCameraDevices$1;
.super Ljava/lang/Object;
.source "WaitForCameraDevices.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/activity/main/WaitForCameraDevices;->start()Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/activity/main/WaitForCameraDevices;


# direct methods
.method constructor <init>(Lcom/android/camera/activity/main/WaitForCameraDevices;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/camera/activity/main/WaitForCameraDevices$1;->this$0:Lcom/android/camera/activity/main/WaitForCameraDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/activity/main/WaitForCameraDevices$1;->this$0:Lcom/android/camera/activity/main/WaitForCameraDevices;

    invoke-static {v0}, Lcom/android/camera/activity/main/WaitForCameraDevices;->access$000(Lcom/android/camera/activity/main/WaitForCameraDevices;)Lcom/android/camera/error/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/error/FatalErrorHandler;->onCameraOpenFailure(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 37
    check-cast p1, Ljava/lang/Boolean;

    .line 1040
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/camera/activity/main/WaitForCameraDevices$1;->this$0:Lcom/android/camera/activity/main/WaitForCameraDevices;

    invoke-static {v0}, Lcom/android/camera/activity/main/WaitForCameraDevices;->access$000(Lcom/android/camera/activity/main/WaitForCameraDevices;)Lcom/android/camera/error/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onCameraReconnectFailure()V

    .line 37
    :cond_0
    return-void
.end method
