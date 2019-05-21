.class final Lcom/android/camera/app/CameraActivityControllerImpl$14$1;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraActivityControllerImpl$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/app/CameraActivityControllerImpl$14;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl$14;)V
    .locals 0

    .prologue
    .line 2372
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$14$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$14$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$14;

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl$14;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4800(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2376
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isPreviewStopTimeoutExpired = true"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$14$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$14;

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl$14;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4902(Lcom/android/camera/app/CameraActivityControllerImpl;Z)Z

    .line 2378
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$14$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$14;

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl$14;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5100(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/google/android/apps/camera/async/Updatable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$14$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$14;

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl$14;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5000(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isIdle()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 2380
    :cond_0
    return-void
.end method
