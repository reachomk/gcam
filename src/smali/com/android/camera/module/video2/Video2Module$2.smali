.class final Lcom/android/camera/module/video2/Video2Module$2;
.super Ljava/lang/Object;
.source "Video2Module.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2Module;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2Module;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2Module$2;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 179
    .line 1182
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$2;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$300(Lcom/android/camera/module/video2/Video2Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1183
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$2;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1184
    monitor-exit v1

    :goto_0
    return-void

    .line 1186
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$2;->this$0:Lcom/android/camera/module/video2/Video2Module;

    .line 1189
    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$500(Lcom/android/camera/module/video2/Video2Module;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 1190
    const/4 v1, 0x0

    .line 1191
    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    if-ne v0, v2, :cond_1

    .line 1192
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_60:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 1196
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2Module$2;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v1}, Lcom/android/camera/module/video2/Video2Module;->access$500(Lcom/android/camera/module/video2/Video2Module;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 1199
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$2;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$000(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ModuleUI;->showViewfinderCover()V

    .line 1201
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$2;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$600(Lcom/android/camera/module/video2/Video2Module;)V

    goto :goto_0

    .line 1186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1193
    :cond_1
    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_60:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    if-ne v0, v2, :cond_2

    .line 1194
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
