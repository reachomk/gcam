.class public final Lcom/android/camera/one/v2/command/RunnableCameraCommand;
.super Ljava/lang/Object;
.source "RunnableCameraCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final command:Lcom/android/camera/one/v2/command/CameraCommand;

.field private final executor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/android/camera/one/v2/command/CameraCommand;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/one/v2/command/RunnableCameraCommand;->executor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    .line 16
    iput-object p2, p0, Lcom/android/camera/one/v2/command/RunnableCameraCommand;->command:Lcom/android/camera/one/v2/command/CameraCommand;

    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/one/v2/command/RunnableCameraCommand;->executor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    iget-object v1, p0, Lcom/android/camera/one/v2/command/RunnableCameraCommand;->command:Lcom/android/camera/one/v2/command/CameraCommand;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/command/CameraCommand;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 22
    return-void
.end method
