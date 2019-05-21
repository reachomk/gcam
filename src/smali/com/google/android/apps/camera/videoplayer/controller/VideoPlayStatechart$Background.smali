.class Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Background;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoPlayStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Background"
.end annotation


# instance fields
.field private currentPosition:I

.field private synthetic this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)V
    .locals 1

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Background;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[[B)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Background;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Background;->currentPosition:I

    .line 168
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Background;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$100(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Landroid/widget/VideoView;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Background;->currentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Background;->this$0:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;->access$300(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;)Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart$Background;->currentPosition:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;->setPosition(I)V

    .line 174
    return-void
.end method

.method public onFragmentResumed()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method
