.class Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoPlayStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreparingVideo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[[B)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$000(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/widget/VideoView;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo$1;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/widget/VideoView;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo$2;-><init>(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 68
    return-void
.end method

.method public onPausedVideoPrepared()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$300(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;->setDuration(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$400(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$300(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$400(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;->setPosition(I)V

    .line 84
    return-void
.end method

.method public onPlayingVideoPrepared()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$300(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;->setDuration(I)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$400(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$300(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$PreparingVideo;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$400(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;->setPosition(I)V

    .line 76
    return-void
.end method
