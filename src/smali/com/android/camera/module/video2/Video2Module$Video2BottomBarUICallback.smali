.class final Lcom/android/camera/module/video2/Video2Module$Video2BottomBarUICallback;
.super Ljava/lang/Object;
.source "Video2Module.java"

# interfaces
.implements Lcom/android/camera/module/BottomBarUICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Video2BottomBarUICallback"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2Module;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/video2/Video2Module;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2Module$Video2BottomBarUICallback;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/video2/Video2Module;B)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/camera/module/video2/Video2Module$Video2BottomBarUICallback;-><init>(Lcom/android/camera/module/video2/Video2Module;)V

    return-void
.end method


# virtual methods
.method public final onHfrModeButtonClicked(Lcom/android/camera/camcorder/CamcorderCaptureRate;)V
    .locals 4

    .prologue
    .line 417
    invoke-static {}, Lcom/android/camera/module/video2/Video2Module;->access$700()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onHfrModeButtonClicked camcorderHfrVideoMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$Video2BottomBarUICallback;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$500(Lcom/android/camera/module/video2/Video2Module;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$Video2BottomBarUICallback;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$500(Lcom/android/camera/module/video2/Video2Module;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$Video2BottomBarUICallback;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$000(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ModuleUI;->showViewfinderCover()V

    .line 424
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$Video2BottomBarUICallback;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$600(Lcom/android/camera/module/video2/Video2Module;)V

    .line 426
    :cond_0
    return-void
.end method

.method public final onSwitchCameraButtonClicked()V
    .locals 5

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$Video2BottomBarUICallback;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$300(Lcom/android/camera/module/video2/Video2Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$Video2BottomBarUICallback;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$1600(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2Module$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/video2/Video2Module$State;->CAMCORDER_OPENED:Lcom/android/camera/module/video2/Video2Module$State;

    if-eq v0, v2, :cond_0

    .line 407
    invoke-static {}, Lcom/android/camera/module/video2/Video2Module;->access$700()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2Module$Video2BottomBarUICallback;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v2}, Lcom/android/camera/module/video2/Video2Module;->access$1600(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2Module$State;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Do nothing onSwitchCameraButtonClicked. mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    monitor-exit v1

    .line 412
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$Video2BottomBarUICallback;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$600(Lcom/android/camera/module/video2/Video2Module;)V

    .line 412
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
