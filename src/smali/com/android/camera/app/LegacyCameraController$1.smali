.class final Lcom/android/camera/app/LegacyCameraController$1;
.super Ljava/lang/Object;
.source "LegacyCameraController.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/LegacyCameraController;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/LegacyCameraController;

.field private synthetic val$id:I

.field private synthetic val$useNewApi:Z


# direct methods
.method constructor <init>(Lcom/android/camera/app/LegacyCameraController;IZ)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/camera/app/LegacyCameraController$1;->this$0:Lcom/android/camera/app/LegacyCameraController;

    iput p2, p0, Lcom/android/camera/app/LegacyCameraController$1;->val$id:I

    iput-boolean p3, p0, Lcom/android/camera/app/LegacyCameraController$1;->val$useNewApi:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 215
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/android/camera/app/LegacyCameraController;->access$100()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/app/LegacyCameraController$1;->val$id:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shutdown was cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController$1;->this$0:Lcom/android/camera/app/LegacyCameraController;

    invoke-static {v0}, Lcom/android/camera/app/LegacyCameraController;->access$200(Lcom/android/camera/app/LegacyCameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/app/LegacyCameraController$1;->val$id:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "shutdown() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 207
    .line 1210
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController$1;->this$0:Lcom/android/camera/app/LegacyCameraController;

    iget v1, p0, Lcom/android/camera/app/LegacyCameraController$1;->val$id:I

    iget-boolean v2, p0, Lcom/android/camera/app/LegacyCameraController$1;->val$useNewApi:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/app/LegacyCameraController;->access$000(Lcom/android/camera/app/LegacyCameraController;IZ)V

    .line 207
    return-void
.end method
