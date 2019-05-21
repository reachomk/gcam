.class final Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo$2;
.super Ljava/lang/Object;
.source "VideoPlayStatechart.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo$2;->this$1:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo$2;->this$1:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;

    iget-object v0, v0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$200(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo$2;->this$1:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;

    iget-object v0, v0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onPlayingVideoPrepared()V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo$2;->this$1:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;

    iget-object v0, v0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onPausedVideoPrepared()V

    goto :goto_0
.end method
