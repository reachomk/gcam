.class final Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;
.super Ljava/lang/Object;
.source "CameraCommandExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/command/CameraCommandExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandRunnable"
.end annotation


# instance fields
.field private final command:Lcom/android/camera/one/v2/command/CameraCommand;

.field private synthetic this$0:Lcom/android/camera/one/v2/command/CameraCommandExecutor;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/android/camera/one/v2/command/CameraCommand;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->command:Lcom/android/camera/one/v2/command/CameraCommand;

    .line 31
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-static {v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->command:Lcom/android/camera/one/v2/command/CameraCommand;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Command#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->command:Lcom/android/camera/one/v2/command/CameraCommand;

    invoke-interface {v0}, Lcom/android/camera/one/v2/command/CameraCommand;->run()V
    :try_end_0
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-static {v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 60
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-static {v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->access$100(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->command:Lcom/android/camera/one/v2/command/CameraCommand;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x38

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to acquire resource required to execute command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-static {v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-static {v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->access$100(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->command:Lcom/android/camera/one/v2/command/CameraCommand;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Interrupted while executing command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-static {v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto :goto_0

    .line 48
    :catch_2
    move-exception v0

    .line 51
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-static {v1}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->access$200(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable$1;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable$1;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-static {v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/command/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-static {v1}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0
.end method
