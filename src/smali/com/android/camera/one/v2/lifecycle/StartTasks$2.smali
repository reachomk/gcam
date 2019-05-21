.class final Lcom/android/camera/one/v2/lifecycle/StartTasks$2;
.super Ljava/lang/Object;
.source "StartTasks.java"

# interfaces
.implements Lcom/android/camera/one/v2/lifecycle/StartTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/lifecycle/StartTasks;->forCommand(Lcom/android/camera/one/v2/command/CameraCommand;Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/one/v2/lifecycle/StartTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$command:Lcom/android/camera/one/v2/command/CameraCommand;

.field private synthetic val$commandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/android/camera/one/v2/command/CameraCommand;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/lifecycle/StartTasks$2;->val$commandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    iput-object p2, p0, Lcom/android/camera/one/v2/lifecycle/StartTasks$2;->val$command:Lcom/android/camera/one/v2/command/CameraCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/lifecycle/StartTasks$2;->val$commandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    iget-object v1, p0, Lcom/android/camera/one/v2/lifecycle/StartTasks$2;->val$command:Lcom/android/camera/one/v2/command/CameraCommand;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/command/CameraCommand;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
